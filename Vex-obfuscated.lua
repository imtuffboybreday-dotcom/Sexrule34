--[[Obfuscated By Vex]]
return (function(...) local _Vjhduu9_7={(537-409),(311-273),(857-757),(206-131),(989-786),(1128-899),(925-900),(917-691),(468-228),(664-585),(165-131),(424-349),(306-103),(377-213),(742-719),(318-132),(922-759),(879-816),(760-538),(437-429),(251-63),(634-458),(1123-920),(152-110),(963-858),(563-308),(274-49),(916-909),(1018-836),(374-246),(1206-997),(1166-977),(822-681),(312-61),(1065-888),(528-309),(1053-932),(504-410),(1088-861),(1027-993),(85-39),(746-549),(886-738),(701-499),(455-328),(607-573),(980-832),(75-32),(822-749),(384-208),(933-834),(733-577),(1053-995),(303-255),(721-630),(344-330),(666-652),(839-718),(886-789),(693-537),(533-502),(1035-796),(542-423),(1068-846),(1204-966),(1072-952),(211-205),(315-168),(554-311),(374-166),(995-740),(384-224),(1010-836),(137-18),(69-42),(959-899),(593-423),(685-519),(926-906),(307-120),(895-881),(634-581),(1053-829),(967-958),(403-217),(407-301),(800-555),(492-352),(354-210),(337-98),(739-513),(572-490),(389-233),(832-708),(379-199),(882-785),(726-680),(816-801),(989-791),(482-269),(1017-905),(272-147),(490-346),(395-295),(217-105),(619-397),(901-757),(881-648),(970-962),(714-654),(1211-957),(1041-945),(669-570),(953-947),(795-731),(804-719),(365-245),(1076-855),(191-37),(1078-863),(331-89),(931-783),(715-551),(842-658),(77-18),(582-488),(954-922),(1039-866),(792-616),(723-670),(911-797),(529-498),(487-285),(1186-950),(663-444),(857-841),(1015-996),(193-11),(270-30),(710-705),(726-589),(147-39),(722-644),(1102-983),(190-28),(151-83),(1092-915),(301-197),(847-618),(969-955),(1045-837),(987-898),(504-407),(727-523),(479-442),(625-434),(847-725),(536-380),(863-724),(570-380),(523-331),(615-561),(955-791),(854-718),(959-949),(941-897),(908-690),(242-162),(393-311),(747-501),(476-428),(977-965),(467-323),(304-64),(380-303),(1103-866),(578-352),(974-842),(382-202),(348-180),(1031-991),(855-777),(585-573),(1077-986),(1020-908),(968-946),(400-318),(838-778),(729-533),(1148-968),(938-794),(220-173),(646-595),(245-79),(261-33),(561-405),(479-407),(912-805),(208-164),(338-197),(850-704),(455-407),(913-816),(848-713),(593-588),(622-385),(229-33),(425-395),(624-592),(405-164),(930-926),(358-126),(945-839),(464-324),(981-951)} 
local _V1sc3nbb_0=table.unpack or unpack
local function _Vtw9fc4_1(...) return {n=select('#',...),...} end
local function _Vo4o0sl_2(a,b) local r,p=0,1 while a>0 or b>0 do local x,y=a%2,b%2 if x~=y then r=r+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end return r end
local _V1ctlhlq_3,_V1pc4gep_4,_V1e9x12v_5=1,134,0
local function _V11ie0ud_6()
 local v=_Vjhduu9_7[_V1ctlhlq_3] if v==nil then error('Vex: truncated bytecode',0) end
 _V1pc4gep_4=(_V1pc4gep_4*225+187)%256
 v=_Vo4o0sl_2((v-((_V1ctlhlq_3-1)*7)%256)%256,_V1pc4gep_4)
 _V1e9x12v_5=(_V1e9x12v_5+v*((_V1ctlhlq_3-1)%251+1))%65521
 _V1ctlhlq_3=_V1ctlhlq_3+1 return v
end
local function _V17ucwgs_8() local n,p=0,1 repeat local b=_V11ie0ud_6() n=n+(b%128)*p p=p*128 if b<128 then return n end if p>268435456 then error('Vex: invalid length',0) end until false end
local function _Vk0nkco_9()
 local tag=_V11ie0ud_6() local count=_V17ucwgs_8()
 if tag==1 then local t={} for i=1,count do t[i]=_Vk0nkco_9() end return t end
 local t={} for i=1,count do t[i]=string.char(_V11ie0ud_6()) end local s=table.concat(t)
 if tag==2 then return s elseif tag==3 then return tonumber(s) end error('Vex: invalid bytecode',0)
end
local _V19vy4c6_10=_Vk0nkco_9()
if _V1e9x12v_5~=49886 or _V1ctlhlq_3~=216 then error('Vex: bytecode integrity check failed',0) end
local _Vlywapd_11,_Vhzsokk_12=_V19vy4c6_10[1],_V19vy4c6_10[2]
_Vjhduu9_7=nil _V19vy4c6_10[1]=nil _V19vy4c6_10[2]=nil
local _Vohzavj_13=(getfenv and getfenv(1)) or _ENV or _G
local function _V7y07s5_14(parent,args)
 local store,defined={},{}
 local view=setmetatable({},{__index=function(_,k) return store[k] end,__newindex=function(_,k,v) store[k]=v end,__metatable=false})
 return {view,defined,parent,args}
end
local function _V1pk8rvm_15(env,k,v) env[2][k]=true env[1][k]=v end
local function _V1qy2qn_16(env,k)
 local e=env while e do if e[2][k] then return e[1][k] end e=e[3] end return _Vohzavj_13[_Vlywapd_11[k]]
end
local function _Vsgs8ak_17(env,k) local e=env while e do if e[2][k] then return e end e=e[3] end end
local function _V1n82y8v_18(env,k,v) local e=_Vsgs8ak_17(env,k) if e then e[1][k]=v else _Vohzavj_13[_Vlywapd_11[k]]=v end end
local _V14h4grf_19,_Vos67t2_20,_V1xfty4e_21
_V1xfty4e_21=function(list,env)
 local result={n=0}
 for i=1,#list do local values=_V14h4grf_19(list[i],env) local count=i==#list and values.n or 1 for j=1,count do result.n=result.n+1 result[result.n]=values[j] end end
 return result
end
_V14h4grf_19=function(index,env)
 local ins=_Vhzsokk_12[index] local code=ins[1]
 if code==20178 then return _Vtw9fc4_1(_Vlywapd_11[ins[2]])
 elseif code==34481 then return _Vtw9fc4_1(nil)
 elseif code==1572 then return _Vtw9fc4_1(ins[2]==1)
 elseif code==21238 then return _Vtw9fc4_1(_V1qy2qn_16(env,ins[2]))
 elseif code==43563 then local t=_V14h4grf_19(ins[2],env)[1] local k=_V14h4grf_19(ins[3],env)[1] return _Vtw9fc4_1(t[k])
 elseif code==52362 then return env[4]
 elseif code==24824 then return _Vtw9fc4_1(_V14h4grf_19(ins[2],env)[1])
 elseif code==25200 then
  local a=_V14h4grf_19(ins[3],env)[1] local o=ins[2]
  if o==1 then return _Vtw9fc4_1(not a) elseif o==2 then return _Vtw9fc4_1(-a) elseif o==3 then return _Vtw9fc4_1(#a) end
 elseif code==39905 then
  local a=_V14h4grf_19(ins[3],env)[1] local o=ins[2]
  if o==16 then if not a then return _Vtw9fc4_1(a) else return _Vtw9fc4_1(_V14h4grf_19(ins[4],env)[1]) end end
  if o==17 then if a then return _Vtw9fc4_1(a) else return _Vtw9fc4_1(_V14h4grf_19(ins[4],env)[1]) end end
  local b=_V14h4grf_19(ins[4],env)[1]
  if o==4 then return _Vtw9fc4_1(a+b) elseif o==2 then return _Vtw9fc4_1(a-b) elseif o==5 then return _Vtw9fc4_1(a*b)
  elseif o==6 then return _Vtw9fc4_1(a/b) elseif o==7 then return _Vtw9fc4_1(a%b) elseif o==8 then return _Vtw9fc4_1(a^b)
  elseif o==9 then return _Vtw9fc4_1(a..b) elseif o==10 then return _Vtw9fc4_1(a==b) elseif o==11 then return _Vtw9fc4_1(a~=b)
  elseif o==12 then return _Vtw9fc4_1(a<b) elseif o==13 then return _Vtw9fc4_1(a<=b) elseif o==14 then return _Vtw9fc4_1(a>b)
  elseif o==15 then return _Vtw9fc4_1(a>=b) elseif o==18 then return _Vtw9fc4_1(math.floor(a/b)) end
 elseif code==59502 then
  local fn=_V14h4grf_19(ins[2],env)[1] local args=_V1xfty4e_21(ins[3],env) return _Vtw9fc4_1(fn(_V1sc3nbb_0(args,1,args.n)))
 elseif code==60908 then
  local receiver=_V14h4grf_19(ins[2],env)[1] local fn=receiver[_Vlywapd_11[ins[3]]] local args=_V1xfty4e_21(ins[4],env)
  return _Vtw9fc4_1(fn(receiver,_V1sc3nbb_0(args,1,args.n)))
 elseif code==22289 then
  local t={} local nextIndex=1 local fields=ins[2]
  for i=1,#fields do local f=fields[i]
   if f[1]==0 then local values=_V14h4grf_19(f[2],env) local count=i==#fields and values.n or 1 for j=1,count do t[nextIndex]=values[j] nextIndex=nextIndex+1 end
   else local key=_V14h4grf_19(f[1],env)[1] t[key]=_V14h4grf_19(f[2],env)[1] end
  end return _Vtw9fc4_1(t)
 elseif code==20781 then
  return _Vtw9fc4_1(function(...)
   local all=_Vtw9fc4_1(...) local varargs={n=0}
   if ins[3]==1 then for i=#ins[2]+1,all.n do varargs.n=varargs.n+1 varargs[varargs.n]=all[i] end end
   local frame=_V7y07s5_14(env,varargs) for i=1,#ins[2] do _V1pk8rvm_15(frame,ins[2][i],all[i]) end
   local state,values=_Vos67t2_20(ins[4],frame) if state==1 then return _V1sc3nbb_0(values,1,values.n) end
  end)
 end error('Vex: invalid expression opcode',0)
end
local function _V8ovhxs_22(index,env)
 local ins=_Vhzsokk_12[index]
 if ins[1]==21238 then return {1,ins[2]} end
 if ins[1]==43563 then local t=_V14h4grf_19(ins[2],env)[1] local k=_V14h4grf_19(ins[3],env)[1] return {2,t,k} end
 error('Vex: invalid assignment',0)
end
_Vos67t2_20=function(list,env)
 for pc=1,#list do
  local ins=_Vhzsokk_12[list[pc]] local code=ins[1]
  if code==26799 then
   local values=_V1xfty4e_21(ins[3],env) env=_V7y07s5_14(env,env[4]) for i=1,#ins[2] do _V1pk8rvm_15(env,ins[2][i],values[i]) end
  elseif code==52250 then
   env=_V7y07s5_14(env,env[4]) _V1pk8rvm_15(env,ins[2],nil) _V1pk8rvm_15(env,ins[2],_V14h4grf_19(ins[3],env)[1])
  elseif code==63952 then
   local refs={} for i=1,#ins[2] do refs[i]=_V8ovhxs_22(ins[2][i],env) end local values=_V1xfty4e_21(ins[3],env)
   for i=1,#refs do local r=refs[i] if r[1]==1 then _V1n82y8v_18(env,r[2],values[i]) else r[2][r[3]]=values[i] end end
  elseif code==40429 then _V14h4grf_19(ins[2],env)
  elseif code==40622 then return 1,_V1xfty4e_21(ins[2],env),env
  elseif code==57553 then return 2,nil,env
  elseif code==45777 then local state,values=_Vos67t2_20(ins[2],_V7y07s5_14(env,env[4])) if state then return state,values,env end
  elseif code==42844 then
   for i=1,#ins[2] do local clause=ins[2][i] if clause[1]==0 or _V14h4grf_19(clause[1],env)[1] then local state,values=_Vos67t2_20(clause[2],_V7y07s5_14(env,env[4])) if state then return state,values,env end break end end
  elseif code==2003 then
   while _V14h4grf_19(ins[2],env)[1] do local state,values=_Vos67t2_20(ins[3],_V7y07s5_14(env,env[4])) if state==1 then return state,values,env elseif state==2 then break end end
  elseif code==54026 then
   repeat local state,values,frame=_Vos67t2_20(ins[3],_V7y07s5_14(env,env[4])) if state==1 then return state,values,env elseif state==2 then break end local done=_V14h4grf_19(ins[2],frame)[1] until done
  elseif code==41902 then
   local first=tonumber(_V14h4grf_19(ins[3],env)[1]) local last=tonumber(_V14h4grf_19(ins[4],env)[1]) local step=ins[5]==0 and 1 or tonumber(_V14h4grf_19(ins[5],env)[1])
   if not first or not last or not step then error('Vex: numeric for requires numbers',0) end
   for i=first,last,step do local frame=_V7y07s5_14(env,env[4]) _V1pk8rvm_15(frame,ins[2],i) local state,values=_Vos67t2_20(ins[6],frame) if state==1 then return state,values,env elseif state==2 then break end end
  elseif code==23235 then
   local iter=_V1xfty4e_21(ins[3],env) local fn,state,control=iter[1],iter[2],iter[3]
   while true do local values=_Vtw9fc4_1(fn(state,control)) control=values[1] if control==nil then break end local frame=_V7y07s5_14(env,env[4]) for i=1,#ins[2] do _V1pk8rvm_15(frame,ins[2][i],values[i]) end local signal,result=_Vos67t2_20(ins[4],frame) if signal==1 then return signal,result,env elseif signal==2 then break end end
  else error('Vex: invalid statement opcode',0) end
 end return nil,nil,env
end
local function _Vedkfao_23(...)
 local state,values=_Vos67t2_20(_V19vy4c6_10[3],_V7y07s5_14(nil,_Vtw9fc4_1(...))) if state==1 then return _V1sc3nbb_0(values,1,values.n) end
end
local _V1qok77z_24
if type(newproxy)=='function' then _V1qok77z_24=newproxy(true) local mt=getmetatable(_V1qok77z_24) mt.__call=function(_,...) return _Vedkfao_23(...) end mt.__index=function() return nil end mt.__metatable=false
else _V1qok77z_24=setmetatable({},{__call=function(_,...) return _Vedkfao_23(...) end,__index=function() return nil end,__metatable=false}) end
return _V1qok77z_24(...)
 end)(...)
