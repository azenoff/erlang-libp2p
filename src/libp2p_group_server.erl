-module(libp2p_group_server).

-export([request_target/3, send_result/3]).

-spec request_target(Server::pid(), term(), Worker::pid()) -> ok.
request_target(Pid, Kind, WorkerPid) ->
    gen_server:cast(Pid, {request_target, Kind, WorkerPid}).

-spec send_result(Server::pid(), term(), any()) -> ok.
send_result(Pid, Ref, Reason) ->
    gen_server:cast(Pid, {send_result, Ref, Reason}).