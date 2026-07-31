package rnauthenticator.authenticator.network.model.response;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.net.UnknownHostException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* compiled from: ThrowableUtils.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0002\u001a\f\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0007\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\b\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\n\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\f\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a'\u0010\r\u001a\u0002H\u000e\"\u0004\b\u0000\u0010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u0002H\u000eH\u0002¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"toError", "Lrnauthenticator/authenticator/network/model/response/AuthError;", "", "toRegistrationError", "toAuthError", "toResetPasswordError", "toUpdatePasswordError", "toEmailVerificationError", "toTokenVerificationError", "toUserExistError", "toDeleteAccountError", "toGenerateOTPError", "toSetPasswordError", "getWithDefault", "T", "Lorg/json/JSONObject;", SDKConstants.PARAM_KEY, "", "defaultValue", "(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ThrowableUtilsKt {
    private static final AuthError toError(Throwable th) {
        if (!(th instanceof UnknownHostException)) {
            return null;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return new AuthError(ErrorCodeKt.ERR_NO_NETWORK, message);
    }

    public static final AuthError toRegistrationError(Throwable th) {
        String str;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("description");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            Object obj2 = jSONObject.get("pendingConfirm");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj2).booleanValue()) {
                str = ErrorCodeKt.ERR_PENDING_CONFIRMATION;
            } else {
                str = StringsKt.contains$default((CharSequence) str2, (CharSequence) "has been registered", false, 2, (Object) null) ? ErrorCodeKt.ERR_EMAIL_REGISTERED : ErrorCodeKt.ERR_UNKNOWN;
            }
            return new AuthError(str, str2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toAuthError(Throwable th) {
        String str;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            Object obj = new JSONObject(message).get("error");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
            JSONObject jSONObject = (JSONObject) obj;
            Object obj2 = jSONObject.get("name");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) getWithDefault(jSONObject, "message", "");
            String lowerCase = ((String) obj2).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            switch (lowerCase.hashCode()) {
                case -2052309059:
                    if (!lowerCase.equals("invalidotpcredentialerror")) {
                        str = ErrorCodeKt.ERR_UNKNOWN;
                        break;
                    } else {
                        str = ErrorCodeKt.ERR_INVALID_OTP;
                        break;
                    }
                case -1867706621:
                    if (lowerCase.equals("invalid_user_credential")) {
                        str = ErrorCodeKt.ERR_INVALID_CREDENTIAL;
                        break;
                    }
                    str = ErrorCodeKt.ERR_UNKNOWN;
                    break;
                case -1703121604:
                    if (!lowerCase.equals("users_migration_reset_password_error")) {
                        str = ErrorCodeKt.ERR_UNKNOWN;
                        break;
                    } else {
                        str = ErrorCodeKt.ERR_MIGRATED_USER;
                        break;
                    }
                case -847806252:
                    if (!lowerCase.equals("invalid_grant")) {
                        str = ErrorCodeKt.ERR_UNKNOWN;
                        break;
                    } else {
                        str = ErrorCodeKt.ERR_INVALID_GRANT;
                        break;
                    }
                case -563450756:
                    if (!lowerCase.equals("maxfailedattempterror")) {
                        str = ErrorCodeKt.ERR_UNKNOWN;
                        break;
                    } else {
                        str = ErrorCodeKt.ERR_MAX_FAILED_ATTEMPT;
                        break;
                    }
                default:
                    str = ErrorCodeKt.ERR_UNKNOWN;
                    break;
            }
            return new AuthError(str, str2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toResetPasswordError(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("status");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = jSONObject.get("message");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            return new AuthError(Intrinsics.areEqual((String) obj, "USER_NOT_FOUND") ? ErrorCodeKt.ERR_USER_NOT_FOUND : ErrorCodeKt.ERR_UNKNOWN, (String) obj2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toUpdatePasswordError(Throwable th) {
        String str;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("status");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            Object obj2 = jSONObject.get("message");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) obj2;
            if (Intrinsics.areEqual(str2, "INVALID_TOKEN")) {
                str = ErrorCodeKt.ERR_INVALID_TOKEN;
            } else {
                str = Intrinsics.areEqual(str2, "TOKEN_EXPIRED") ? ErrorCodeKt.ERR_EXPIRED_TOKEN : ErrorCodeKt.ERR_UNKNOWN;
            }
            return new AuthError(str, str3);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toEmailVerificationError(Throwable th) {
        AuthError authError;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("errorCode");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = jSONObject.get("errorMessage");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            authError = new AuthError((String) obj, (String) obj2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            authError = new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
        return authError;
    }

    public static final AuthError toTokenVerificationError(Throwable th) {
        String str;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("status");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            Object obj2 = jSONObject.get("message");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) obj2;
            if (Intrinsics.areEqual(str2, "INVALID_TOKEN")) {
                str = ErrorCodeKt.ERR_INVALID_TOKEN;
            } else {
                str = Intrinsics.areEqual(str2, "USED_TOKEN") ? ErrorCodeKt.ERR_USED_TOKEN : ErrorCodeKt.ERR_UNKNOWN;
            }
            return new AuthError(str, str3);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toUserExistError(Throwable th) {
        String str = ErrorCodeKt.ERR_USER_GET_LOCKE_ID;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("errorCode");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            Object obj2 = jSONObject.get("errorMessage");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) obj2;
            if (Intrinsics.areEqual(str2, "USER_NOT_FOUND")) {
                str = ErrorCodeKt.ERR_USER_NOT_FOUND;
            } else if (!Intrinsics.areEqual(str2, ErrorCodeKt.ERR_USER_GET_LOCKE_ID)) {
                str = ErrorCodeKt.ERR_UNKNOWN;
            }
            return new AuthError(str, str3);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toDeleteAccountError(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("errorCode");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = jSONObject.get("errorMessage");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            return new AuthError(Intrinsics.areEqual((String) obj, "USER_NOT_FOUND") ? ErrorCodeKt.ERR_USER_NOT_FOUND : ErrorCodeKt.ERR_UNKNOWN, (String) obj2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            return new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
    }

    public static final AuthError toGenerateOTPError(Throwable th) {
        AuthError authError;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("status");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = jSONObject.get("error");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            authError = new AuthError((String) obj, (String) obj2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            authError = new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
        return authError;
    }

    public static final AuthError toSetPasswordError(Throwable th) {
        AuthError authError;
        Intrinsics.checkNotNullParameter(th, "<this>");
        AuthError error = toError(th);
        if (error != null) {
            return error;
        }
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            JSONObject jSONObject = new JSONObject(message);
            Object obj = jSONObject.get("errorCode");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = jSONObject.get("message");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            authError = new AuthError((String) obj, (String) obj2);
        } catch (Exception unused) {
            String message2 = th.getMessage();
            authError = new AuthError(ErrorCodeKt.ERR_UNKNOWN, message2 != null ? message2 : "");
        }
        return authError;
    }

    private static final <T> T getWithDefault(JSONObject jSONObject, String str, T t) {
        try {
            return (T) jSONObject.get(str);
        } catch (Exception unused) {
            return t;
        }
    }
}
