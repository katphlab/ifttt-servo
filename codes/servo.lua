projectID        = "projectId"
ACTUATOR_NAME    = "actuator_name"
apiKey           = "apiKey"
deviceUUID       = "deviceUUID"

serverIP   = "mqtt.devicehub.net" -- mqtt.devicehub.net IP
mqttport   = 1883           -- MQTT port (default 1883)
userID     = ""             -- username for authentication if required
userPWD    = ""             -- user password if needed for security
clientID   = "ESP1"         -- Device ID
mqtt_state = 0              -- State control

wifiName = "WifiName"
wifiPass = "wifiPassword"

wifi.setmode(wifi.STATION)
wifi.sta.config(wifiName, wifiPass)
wifi.sta.connect()

servo_pin = 4
servo_value = 1000

gpio.mode(servo_pin, gpio.OUTPUT)
gpio.write(servo_pin, gpio.LOW) 

function setRelay(state)
  if state == 1 then
--    gpio.write(servo_pin, gpio.HIGH)  
        tmr.alarm(0,20,1,function() -- 50Hz 
            gpio.write(servo_pin, gpio.HIGH)
            tmr.delay(1700)
            gpio.write(servo_pin, gpio.LOW)
        end)
  else
--    gpio.write(servo_pin, gpio.LOW)  
        tmr.alarm(0,20,1,function() -- 50Hz 
            gpio.write(servo_pin, gpio.HIGH)
            tmr.delay(600)
            gpio.write(servo_pin, gpio.LOW)
        end)
  end
end

function mqtt_do()     
     if mqtt_state < 5 then
          mqtt_state = wifi.sta.status() --State: Waiting for wifi

     elseif mqtt_state == 5 then
          m = mqtt.Client(clientID, 120, userID, userPWD)
          mqtt_state = 10 -- State: initialised but not connected
          m:on("message",
          function(conn, topic, data)
               if data ~= nil then
                  local pack = cjson.decode(data)
                  if pack.state then
                    print(pack.state)
                    if (pack.state == 0 or pack.state == "0")  then
                      setRelay(0)    
                    elseif (pack.state == 1 or pack.state == "1") then
                      setRelay(1)
                    end
                  end
               end
          end)
     elseif mqtt_state == 10 then
          m:connect( serverIP , mqttport, 0, 
          function(conn)
               print("Connected to MQTT:" .. serverIP .. ":" .. mqttport .." as " .. clientID )
               m:subscribe("/a/"..apiKey.."/p/"..projectID.."/d/"..deviceUUID.."/actuator/"..ACTUATOR_NAME.."/state",0, 
               function(conn)
                    print("subscribed!")
               end)
          end)
          mqtt_state = 20
      end
end

tmr.alarm(0, 600, 1, function() mqtt_do() end)
