package com.facebook.internal;

import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.Cif;
import defpackage.O4;
import java.util.Collection;

/* loaded from: classes.dex */
public final class ServerProtocol {
    private static final String DIALOG_AUTHORITY_FORMAT = "m.%s";
    public static final String DIALOG_CANCEL_URI = "fbconnect://cancel";
    public static final String DIALOG_PARAM_ACCESS_TOKEN = "access_token";
    public static final String DIALOG_PARAM_APP_ID = "app_id";
    public static final String DIALOG_PARAM_AUTHENTICATION_TOKEN = "id_token";
    public static final String DIALOG_PARAM_AUTH_TYPE = "auth_type";
    public static final String DIALOG_PARAM_CBT = "cbt";
    public static final String DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH = "cct_over_app_switch";
    public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
    public static final String DIALOG_PARAM_CODE_CHALLENGE = "code_challenge";
    public static final String DIALOG_PARAM_CODE_CHALLENGE_METHOD = "code_challenge_method";
    public static final String DIALOG_PARAM_CODE_REDIRECT_URI = "code_redirect_uri";
    public static final String DIALOG_PARAM_CUSTOM_TABS_PREFETCHING = "cct_prefetching";
    public static final String DIALOG_PARAM_DEFAULT_AUDIENCE = "default_audience";
    public static final String DIALOG_PARAM_DISPLAY = "display";
    public static final String DIALOG_PARAM_DISPLAY_TOUCH = "touch";
    public static final String DIALOG_PARAM_E2E = "e2e";
    public static final String DIALOG_PARAM_FAIL_ON_LOGGED_OUT = "fail_on_logged_out";
    public static final String DIALOG_PARAM_FX_APP = "fx_app";
    public static final String DIALOG_PARAM_IES = "ies";
    public static final String DIALOG_PARAM_LEGACY_OVERRIDE = "legacy_override";
    public static final String DIALOG_PARAM_LOGIN_BEHAVIOR = "login_behavior";
    public static final String DIALOG_PARAM_MESSENGER_PAGE_ID = "messenger_page_id";
    public static final String DIALOG_PARAM_NONCE = "nonce";
    public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
    public static final String DIALOG_PARAM_RESET_MESSENGER_STATE = "reset_messenger_state";
    public static final String DIALOG_PARAM_RESPONSE_TYPE = "response_type";
    public static final String DIALOG_PARAM_RETURN_SCOPES = "return_scopes";
    public static final String DIALOG_PARAM_SCOPE = "scope";
    public static final String DIALOG_PARAM_SDK_VERSION = "sdk";
    public static final String DIALOG_PARAM_SKIP_DEDUPE = "skip_dedupe";
    public static final String DIALOG_PARAM_SSO_DEVICE = "sso";
    public static final String DIALOG_PARAM_STATE = "state";
    public static final String DIALOG_PATH = "dialog/";
    public static final String DIALOG_REDIRECT_CHROME_OS_URI = "fbconnect://chrome_os_success";
    public static final String DIALOG_REDIRECT_URI = "fbconnect://success";
    public static final String DIALOG_REREQUEST_AUTH_TYPE = "rerequest";
    public static final String DIALOG_RESPONSE_TYPE_CODE = "code,signed_request,graph_domain";
    public static final String DIALOG_RESPONSE_TYPE_ID_TOKEN_AND_SIGNED_REQUEST = "id_token,token,signed_request,graph_domain";
    public static final String DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES = "token,signed_request,graph_domain,granted_scopes";
    public static final String DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST = "token,signed_request,graph_domain";
    public static final String DIALOG_RETURN_SCOPES_TRUE = "true";
    public static final String FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH = "touch";
    public static final String FALLBACK_DIALOG_PARAM_APP_ID = "app_id";
    public static final String FALLBACK_DIALOG_PARAM_BRIDGE_ARGS = "bridge_args";
    public static final String FALLBACK_DIALOG_PARAM_KEY_HASH = "android_key_hash";
    public static final String FALLBACK_DIALOG_PARAM_METHOD_ARGS = "method_args";
    public static final String FALLBACK_DIALOG_PARAM_METHOD_RESULTS = "method_results";
    public static final String FALLBACK_DIALOG_PARAM_VERSION = "version";
    private static final String GAMING_DIALOG_AUTHORITY_FORMAT = "%s";
    private static final String GRAPH_URL_FORMAT = "https://graph.%s";
    private static final String GRAPH_VIDEO_URL_FORMAT = "https://graph-video.%s";
    public static final String INSTAGRAM_OAUTH_PATH = "oauth/authorize";
    public static final ServerProtocol INSTANCE = new ServerProtocol();
    private static final String TAG = ServerProtocol.class.getName();

    private ServerProtocol() {
    }

    public static final String getDefaultAPIVersion() {
        return "v16.0";
    }

    public static final String getDialogAuthority() {
        C3756th c3756th = C3756th.f15751do;
        return Cif.m6913else(new Object[]{C3756th.f15753else}, 1, DIALOG_AUTHORITY_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getErrorConnectionFailure() {
        return "CONNECTION_FAILURE";
    }

    public static final Collection<String> getErrorsProxyAuthDisabled() {
        return O4.m1618private("service_disabled", "AndroidAuthKillSwitchException");
    }

    public static final Collection<String> getErrorsUserCanceled() {
        return O4.m1618private("access_denied", "OAuthAccessDeniedException");
    }

    public static final String getFacebookGraphUrlBase() {
        C3756th c3756th = C3756th.f15751do;
        return Cif.m6913else(new Object[]{C3756th.f15753else}, 1, GRAPH_URL_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getGamingDialogAuthority() {
        C3756th c3756th = C3756th.f15751do;
        return Cif.m6913else(new Object[]{"fb.gg"}, 1, GAMING_DIALOG_AUTHORITY_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getGraphUrlBase() {
        return Cif.m6913else(new Object[]{C3756th.m8296case()}, 1, GRAPH_URL_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getGraphUrlBaseForSubdomain(String str) {
        C0173Do.m401try(str, "subdomain");
        return Cif.m6913else(new Object[]{str}, 1, GRAPH_URL_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getGraphVideoUrlBase() {
        return Cif.m6913else(new Object[]{C3756th.m8296case()}, 1, GRAPH_VIDEO_URL_FORMAT, "java.lang.String.format(format, *args)");
    }

    public static final String getInstagramDialogAuthority() {
        C3756th c3756th = C3756th.f15751do;
        return Cif.m6913else(new Object[]{C3756th.f15739case}, 1, DIALOG_AUTHORITY_FORMAT, "java.lang.String.format(format, *args)");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.os.Bundle getQueryParamsForPlatformActivityIntentWebFallback(java.lang.String r8, int r9, android.os.Bundle r10) {
        /*
            java.lang.String r0 = "Error creating Url -- "
            java.lang.String r1 = "TAG"
            Zq r2 = defpackage.EnumC0658Zq.DEVELOPER_ERRORS
            java.lang.String r3 = "callId"
            defpackage.C0173Do.m401try(r8, r3)
            android.content.Context r3 = defpackage.C3756th.m8299do()
            java.lang.Class<th> r4 = defpackage.C3756th.class
            boolean r5 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r4)
            r6 = 0
            if (r5 == 0) goto L1a
        L18:
            r3 = r6
            goto L5d
        L1a:
            com.facebook.internal.Validate.sdkInitialized()     // Catch: java.lang.Throwable -> L58
            android.content.pm.PackageManager r5 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L58
            if (r5 != 0) goto L24
            goto L18
        L24:
            java.lang.String r3 = r3.getPackageName()     // Catch: java.lang.Throwable -> L58
            r7 = 64
            android.content.pm.PackageInfo r3 = r5.getPackageInfo(r3, r7)     // Catch: java.lang.Throwable -> L18 java.lang.Throwable -> L58
            android.content.pm.Signature[] r5 = r3.signatures     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L18
            int r5 = r5.length     // Catch: java.lang.Throwable -> L58
            r7 = 0
            if (r5 != 0) goto L38
            r5 = 1
            goto L39
        L38:
            r5 = 0
        L39:
            if (r5 == 0) goto L3c
            goto L18
        L3c:
            java.lang.String r5 = "SHA-1"
            java.security.MessageDigest r5 = java.security.MessageDigest.getInstance(r5)     // Catch: java.lang.Throwable -> L58
            android.content.pm.Signature[] r3 = r3.signatures     // Catch: java.lang.Throwable -> L58
            r3 = r3[r7]     // Catch: java.lang.Throwable -> L58
            byte[] r3 = r3.toByteArray()     // Catch: java.lang.Throwable -> L58
            r5.update(r3)     // Catch: java.lang.Throwable -> L58
            byte[] r3 = r5.digest()     // Catch: java.lang.Throwable -> L58
            r5 = 9
            java.lang.String r3 = android.util.Base64.encodeToString(r3, r5)     // Catch: java.lang.Throwable -> L58
            goto L5d
        L58:
            r3 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r3, r4)
            goto L18
        L5d:
            boolean r4 = com.facebook.internal.Utility.isNullOrEmpty(r3)
            if (r4 == 0) goto L64
            return r6
        L64:
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            java.lang.String r5 = "android_key_hash"
            r4.putString(r5, r3)
            java.lang.String r3 = defpackage.C3756th.m8303if()
            java.lang.String r5 = "app_id"
            r4.putString(r5, r3)
            java.lang.String r3 = "version"
            r4.putInt(r3, r9)
            java.lang.String r9 = "display"
            java.lang.String r3 = "touch"
            r4.putString(r9, r3)
            android.os.Bundle r9 = new android.os.Bundle
            r9.<init>()
            java.lang.String r3 = "action_id"
            r9.putString(r3, r8)
            r8 = 6
            org.json.JSONObject r9 = com.facebook.internal.BundleJSONConverter.convertToJSON(r9)     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            if (r10 != 0) goto L99
            android.os.Bundle r10 = new android.os.Bundle     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            r10.<init>()     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
        L99:
            org.json.JSONObject r10 = com.facebook.internal.BundleJSONConverter.convertToJSON(r10)     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            if (r9 == 0) goto Lb5
            if (r10 != 0) goto La2
            goto Lb5
        La2:
            java.lang.String r3 = "bridge_args"
            java.lang.String r9 = r9.toString()     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            r4.putString(r3, r9)     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            java.lang.String r9 = "method_args"
            java.lang.String r10 = r10.toString()     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            r4.putString(r9, r10)     // Catch: java.lang.IllegalArgumentException -> Lb6 org.json.JSONException -> Lc6
            return r4
        Lb5:
            return r6
        Lb6:
            r9 = move-exception
            com.facebook.internal.Logger$Companion r10 = com.facebook.internal.Logger.Companion
            java.lang.String r3 = com.facebook.internal.ServerProtocol.TAG
            defpackage.C0173Do.m399new(r3, r1)
            java.lang.String r9 = defpackage.C0173Do.m397goto(r9, r0)
            r10.log(r2, r8, r3, r9)
            return r6
        Lc6:
            r9 = move-exception
            com.facebook.internal.Logger$Companion r10 = com.facebook.internal.Logger.Companion
            java.lang.String r3 = com.facebook.internal.ServerProtocol.TAG
            defpackage.C0173Do.m399new(r3, r1)
            java.lang.String r9 = defpackage.C0173Do.m397goto(r9, r0)
            r10.log(r2, r8, r3, r9)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(java.lang.String, int, android.os.Bundle):android.os.Bundle");
    }
}
