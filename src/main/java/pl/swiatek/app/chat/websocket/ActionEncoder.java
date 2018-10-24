package pl.swiatek.app.chat.websocket;

import com.google.gson.Gson;
import pl.swiatek.app.chat.model.Action;

import javax.websocket.DecodeException;
import javax.websocket.Decoder;
import javax.websocket.EndpointConfig;

public class ActionEncoder implements Decoder.Text<Action> {


    private static Gson gson = new Gson();

    @Override
    public Action decode(String s) throws DecodeException {
        Action action = gson.fromJson(s, Action.class);
        return action;
    }

    @Override
    public boolean willDecode(String s) {
        return false;
    }

    @Override
    public void init(EndpointConfig endpointConfig) {

    }

    @Override
    public void destroy() {

    }
}
