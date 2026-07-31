package net.openid.appauth;

import android.content.Intent;
import android.net.Uri;
import androidx.collection.ArrayMap;
import j$.util.DesugarCollections;
import java.util.Map;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationException extends Exception {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final int code;
    public final String error;
    public final String errorDescription;
    public final Uri errorUri;
    public final int type;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class AuthorizationRequestErrors {
        public static final AuthorizationException CLIENT_ERROR;
        public static final AuthorizationException INVALID_REQUEST;
        public static final AuthorizationException OTHER;
        public static final AuthorizationException SERVER_ERROR;
        public static final AuthorizationException STATE_MISMATCH;
        public static final Map STRING_TO_EXCEPTION;
        public static final AuthorizationException TEMPORARILY_UNAVAILABLE;

        static {
            AuthorizationException access$100 = AuthorizationException.access$100("invalid_request", 1000);
            INVALID_REQUEST = access$100;
            AuthorizationException access$1002 = AuthorizationException.access$100("unauthorized_client", 1001);
            AuthorizationException access$1003 = AuthorizationException.access$100("access_denied", 1002);
            AuthorizationException access$1004 = AuthorizationException.access$100("unsupported_response_type", 1003);
            AuthorizationException access$1005 = AuthorizationException.access$100("invalid_scope", 1004);
            AuthorizationException access$1006 = AuthorizationException.access$100("server_error", 1005);
            SERVER_ERROR = access$1006;
            AuthorizationException access$1007 = AuthorizationException.access$100("temporarily_unavailable", 1006);
            TEMPORARILY_UNAVAILABLE = access$1007;
            AuthorizationException access$1008 = AuthorizationException.access$100(null, 1007);
            CLIENT_ERROR = access$1008;
            AuthorizationException access$1009 = AuthorizationException.access$100(null, 1008);
            OTHER = access$1009;
            STATE_MISMATCH = AuthorizationException.access$000("Response state param did not match request state", 9);
            STRING_TO_EXCEPTION = AuthorizationException.access$200(new AuthorizationException[]{access$100, access$1002, access$1003, access$1004, access$1005, access$1006, access$1007, access$1008, access$1009});
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class GeneralErrors {
        public static final AuthorizationException ID_TOKEN_PARSING_ERROR;
        public static final AuthorizationException ID_TOKEN_VALIDATION_ERROR;
        public static final AuthorizationException JSON_DESERIALIZATION_ERROR;
        public static final AuthorizationException NETWORK_ERROR;
        public static final AuthorizationException PROGRAM_CANCELED_AUTH_FLOW;
        public static final AuthorizationException SERVER_ERROR;
        public static final AuthorizationException USER_CANCELED_AUTH_FLOW;

        static {
            AuthorizationException.access$000("Invalid discovery document", 0);
            USER_CANCELED_AUTH_FLOW = AuthorizationException.access$000("User cancelled flow", 1);
            PROGRAM_CANCELED_AUTH_FLOW = AuthorizationException.access$000("Flow cancelled programmatically", 2);
            NETWORK_ERROR = AuthorizationException.access$000("Network error", 3);
            SERVER_ERROR = AuthorizationException.access$000("Server error", 4);
            JSON_DESERIALIZATION_ERROR = AuthorizationException.access$000("JSON deserialization error", 5);
            AuthorizationException.access$000("Token response construction error", 6);
            AuthorizationException.access$000("Invalid registration response", 7);
            ID_TOKEN_PARSING_ERROR = AuthorizationException.access$000("Unable to parse ID Token", 8);
            ID_TOKEN_VALIDATION_ERROR = AuthorizationException.access$000("Invalid ID Token", 9);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class TokenRequestErrors {
        public static final AuthorizationException OTHER;
        public static final Map STRING_TO_EXCEPTION;

        static {
            AuthorizationException access$300 = AuthorizationException.access$300("invalid_request", 2000);
            AuthorizationException access$3002 = AuthorizationException.access$300("invalid_client", 2001);
            AuthorizationException access$3003 = AuthorizationException.access$300("invalid_grant", 2002);
            AuthorizationException access$3004 = AuthorizationException.access$300("unauthorized_client", 2003);
            AuthorizationException access$3005 = AuthorizationException.access$300("unsupported_grant_type", 2004);
            AuthorizationException access$3006 = AuthorizationException.access$300("invalid_scope", 2005);
            AuthorizationException access$3007 = AuthorizationException.access$300(null, 2006);
            AuthorizationException access$3008 = AuthorizationException.access$300(null, 2007);
            OTHER = access$3008;
            STRING_TO_EXCEPTION = AuthorizationException.access$200(new AuthorizationException[]{access$300, access$3002, access$3003, access$3004, access$3005, access$3006, access$3007, access$3008});
        }
    }

    public AuthorizationException(int i, int i2, String str, String str2, Uri uri, Throwable th) {
        super(str2, th);
        this.type = i;
        this.code = i2;
        this.error = str;
        this.errorDescription = str2;
        this.errorUri = uri;
    }

    public static AuthorizationException access$000(String str, int i) {
        return new AuthorizationException(0, i, null, str, null, null);
    }

    public static AuthorizationException access$100(String str, int i) {
        return new AuthorizationException(1, i, str, null, null, null);
    }

    public static Map access$200(AuthorizationException[] authorizationExceptionArr) {
        ArrayMap arrayMap = new ArrayMap(authorizationExceptionArr.length);
        for (AuthorizationException authorizationException : authorizationExceptionArr) {
            String str = authorizationException.error;
            if (str != null) {
                arrayMap.put(str, authorizationException);
            }
        }
        return DesugarCollections.unmodifiableMap(arrayMap);
    }

    public static AuthorizationException access$300(String str, int i) {
        return new AuthorizationException(2, i, str, null, null, null);
    }

    public static AuthorizationException fromIntent(Intent intent) {
        intent.getClass();
        if (!intent.hasExtra("net.openid.appauth.AuthorizationException")) {
            return null;
        }
        try {
            String stringExtra = intent.getStringExtra("net.openid.appauth.AuthorizationException");
            Okio.checkNotEmpty(stringExtra, "jsonStr cannot be null or empty");
            return fromJson(new JSONObject(stringExtra));
        } catch (JSONException e) {
            throw new IllegalArgumentException("Intent contains malformed exception data", e);
        }
    }

    public static AuthorizationException fromJson(JSONObject jSONObject) {
        Okio.checkNotNull(jSONObject, "json cannot be null");
        return new AuthorizationException(jSONObject.getInt("type"), jSONObject.getInt("code"), AtomicFU.getStringIfDefined(jSONObject, "error"), AtomicFU.getStringIfDefined(jSONObject, "errorDescription"), AtomicFU.getUriIfDefined(jSONObject, "errorUri"), null);
    }

    public static AuthorizationException fromTemplate(AuthorizationException authorizationException, Exception exc) {
        return new AuthorizationException(authorizationException.type, authorizationException.code, authorizationException.error, authorizationException.errorDescription, authorizationException.errorUri, exc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof AuthorizationException)) {
            AuthorizationException authorizationException = (AuthorizationException) obj;
            if (this.type == authorizationException.type && this.code == authorizationException.code) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.type + 31) * 31) + this.code;
    }

    public final Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtra("net.openid.appauth.AuthorizationException", toJson().toString());
        return intent;
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", this.type);
            try {
                jSONObject.put("code", this.code);
                AtomicFU.putIfNotNull(jSONObject, "error", this.error);
                AtomicFU.putIfNotNull(jSONObject, "errorDescription", this.errorDescription);
                AtomicFU.putIfNotNull(jSONObject, "errorUri", this.errorUri);
                return jSONObject;
            } catch (JSONException unused) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JSONException thrown in violation of contract, ex");
                return null;
            }
        } catch (JSONException unused2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JSONException thrown in violation of contract, ex");
            return null;
        }
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AuthorizationException: " + toJson().toString();
    }
}
