package net.openid.appauth;

import android.net.Uri;
import com.fsck.k9.mailstore.LocalStore;
import java.util.LinkedHashMap;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EndSessionRequest implements AuthorizationManagementRequest {
    public final LinkedHashMap additionalParameters;
    public final LocalStore.AnonymousClass7 configuration;
    public final String idTokenHint;
    public final Uri postLogoutRedirectUri;
    public final String state;
    public final String uiLocales;

    static {
        StringsKt__IndentKt.builtInParams("id_token_hint", "post_logout_redirect_uri", "state", "ui_locales");
    }

    public EndSessionRequest(LocalStore.AnonymousClass7 anonymousClass7, String str, Uri uri, String str2, String str3, LinkedHashMap linkedHashMap) {
        this.configuration = anonymousClass7;
        this.idTokenHint = str;
        this.postLogoutRedirectUri = uri;
        this.state = str2;
        this.uiLocales = str3;
        this.additionalParameters = linkedHashMap;
    }

    @Override // net.openid.appauth.AuthorizationManagementRequest
    public final String getState() {
        return this.state;
    }

    public final JSONObject jsonSerialize() {
        JSONObject jSONObject = new JSONObject();
        AtomicFU.put(jSONObject, "configuration", this.configuration.toJson());
        AtomicFU.putIfNotNull(jSONObject, "id_token_hint", this.idTokenHint);
        AtomicFU.putIfNotNull(jSONObject, "post_logout_redirect_uri", this.postLogoutRedirectUri);
        AtomicFU.putIfNotNull(jSONObject, "state", this.state);
        AtomicFU.putIfNotNull(jSONObject, "ui_locales", this.uiLocales);
        AtomicFU.put(jSONObject, "additionalParameters", AtomicFU.mapToJsonObject(this.additionalParameters));
        return jSONObject;
    }

    @Override // net.openid.appauth.AuthorizationManagementRequest
    public final String jsonSerializeString() {
        return jsonSerialize().toString();
    }
}
