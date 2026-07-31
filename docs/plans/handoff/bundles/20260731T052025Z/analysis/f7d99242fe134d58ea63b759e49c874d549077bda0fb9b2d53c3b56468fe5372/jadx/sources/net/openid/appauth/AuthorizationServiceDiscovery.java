package net.openid.appauth;

import android.net.Uri;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationServiceDiscovery {
    public static final JsonUtil$UriField AUTHORIZATION_ENDPOINT;
    public static final JsonUtil$UriField END_SESSION_ENDPOINT;
    public static final JsonUtil$UriField ISSUER;
    public static final List MANDATORY_METADATA;
    public static final JsonUtil$UriField REGISTRATION_ENDPOINT;
    public static final JsonUtil$UriField TOKEN_ENDPOINT;
    public final JSONObject docJson;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MissingArgumentException extends Exception {
        public String mMissingField;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [net.openid.appauth.JsonUtil$UriField] */
    /* JADX WARN: Type inference failed for: r0v1, types: [net.openid.appauth.JsonUtil$UriField] */
    /* JADX WARN: Type inference failed for: r0v2, types: [net.openid.appauth.JsonUtil$UriField] */
    /* JADX WARN: Type inference failed for: r0v3, types: [net.openid.appauth.JsonUtil$UriField] */
    /* JADX WARN: Type inference failed for: r0v4, types: [net.openid.appauth.JsonUtil$UriField] */
    static {
        final int i = 1;
        final String str = "issuer";
        final Boolean bool = null;
        ISSUER = new JsonUtil$Field(str, bool) { // from class: net.openid.appauth.JsonUtil$UriField
            @Override // net.openid.appauth.JsonUtil$Field
            public final Object convert(String str2) {
                switch (i) {
                    case 0:
                        return Uri.parse(str2);
                    default:
                        return str2;
                }
            }
        };
        final int i2 = 0;
        final String str2 = "authorization_endpoint";
        AUTHORIZATION_ENDPOINT = new JsonUtil$Field(str2, bool) { // from class: net.openid.appauth.JsonUtil$UriField
            @Override // net.openid.appauth.JsonUtil$Field
            public final Object convert(String str22) {
                switch (i2) {
                    case 0:
                        return Uri.parse(str22);
                    default:
                        return str22;
                }
            }
        };
        final String str3 = "token_endpoint";
        TOKEN_ENDPOINT = new JsonUtil$Field(str3, bool) { // from class: net.openid.appauth.JsonUtil$UriField
            @Override // net.openid.appauth.JsonUtil$Field
            public final Object convert(String str22) {
                switch (i2) {
                    case 0:
                        return Uri.parse(str22);
                    default:
                        return str22;
                }
            }
        };
        final String str4 = "end_session_endpoint";
        END_SESSION_ENDPOINT = new JsonUtil$Field(str4, bool) { // from class: net.openid.appauth.JsonUtil$UriField
            @Override // net.openid.appauth.JsonUtil$Field
            public final Object convert(String str22) {
                switch (i2) {
                    case 0:
                        return Uri.parse(str22);
                    default:
                        return str22;
                }
            }
        };
        final String str5 = "registration_endpoint";
        REGISTRATION_ENDPOINT = new JsonUtil$Field(str5, bool) { // from class: net.openid.appauth.JsonUtil$UriField
            @Override // net.openid.appauth.JsonUtil$Field
            public final Object convert(String str22) {
                switch (i2) {
                    case 0:
                        return Uri.parse(str22);
                    default:
                        return str22;
                }
            }
        };
        Arrays.asList("authorization_code", "implicit");
        Collections.singletonList("client_secret_basic");
        Collections.singletonList("normal");
        MANDATORY_METADATA = Arrays.asList("issuer", "authorization_endpoint", "jwks_uri", "response_types_supported", "subject_types_supported", "id_token_signing_alg_values_supported");
    }

    public AuthorizationServiceDiscovery(JSONObject jSONObject) {
        jSONObject.getClass();
        this.docJson = jSONObject;
        for (String str : MANDATORY_METADATA) {
            if (!this.docJson.has(str) || this.docJson.get(str) == null) {
                MissingArgumentException missingArgumentException = new MissingArgumentException(CameraDevices$CC.m("Missing mandatory configuration field: ", str));
                missingArgumentException.mMissingField = str;
                throw missingArgumentException;
            }
        }
    }

    public final Object get(JsonUtil$Field jsonUtil$Field) {
        JSONObject jSONObject = this.docJson;
        try {
            return !jSONObject.has((String) jsonUtil$Field.key) ? jsonUtil$Field.defaultValue : jsonUtil$Field.convert(jSONObject.getString((String) jsonUtil$Field.key));
        } catch (JSONException e) {
            UriKt$$ExternalSyntheticBUOutline0.m("unexpected JSONException", e);
            return null;
        }
    }
}
