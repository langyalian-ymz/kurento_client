defmodule KC.MO.Core.SessionEndpoint do
  require KC.Util.Macros
  @before_compile {KC.Util.Macros, :chainInject}
  @chainParent KC.MO.Core.Endpoint

  @moduledoc """
  Session based endpoint. A session is considered to be
  started when the media exchange starts. On the other hand,
  sessions terminate when a timeout, defined by the developer,
  takes place after the connection is lost.

  """

  def subscribeMediaSessionStarted(%{id: id}) do
    evtType = "MediaSessionStarted"
    KC.Core.syncSubscribe(id, evtType)
  end

  def subscribeMediaSessionTerminated(%{id: id}) do
    evtType = "MediaSessionTerminated"
    KC.Core.syncSubscribe(id, evtType)
  end

end
