package net.openid.appauth;

import android.content.Intent;
import kotlinx.atomicfu.AtomicFU;
import org.json.JSONObject;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EndSessionResponse extends NodeUtils {
    public final EndSessionRequest request;
    public final String state;

    public EndSessionResponse(EndSessionRequest endSessionRequest, String str) {
        this.request = endSessionRequest;
        this.state = str;
    }

    @Override // org.jsoup.nodes.NodeUtils
    public final String getState() {
        return this.state;
    }

    @Override // org.jsoup.nodes.NodeUtils
    public final Intent toIntent() {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        AtomicFU.put(jSONObject, "request", this.request.jsonSerialize());
        AtomicFU.putIfNotNull(jSONObject, "state", this.state);
        intent.putExtra("net.openid.appauth.EndSessionResponse", jSONObject.toString());
        return intent;
    }
}
