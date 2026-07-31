package net.openid.appauth;

import android.net.Uri;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.atomicfu.AtomicFU;
import net.openid.appauth.internal.Logger;
import okio.Okio;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthState {
    public AuthorizationException mAuthorizationException;
    public LocalStore.AnonymousClass7 mConfig;
    public AuthorizationResponse mLastAuthorizationResponse;
    public RegistrationResponse mLastRegistrationResponse;
    public TokenResponse mLastTokenResponse;
    public boolean mNeedsTokenRefreshOverride;
    public ArrayList mPendingActions;
    public final Object mPendingActionsSyncObject;
    public String mRefreshToken;
    public String mScope;

    public AuthState(AuthorizationResponse authorizationResponse, TokenResponse tokenResponse) {
        this.mPendingActionsSyncObject = new Object();
        this.mPendingActions = null;
        update(authorizationResponse, (AuthorizationException) null);
        update(tokenResponse, (AuthorizationException) null);
    }

    public static AuthState jsonDeserialize(String str) {
        Okio.checkNotEmpty(str, "jsonStr cannot be null or empty");
        JSONObject jSONObject = new JSONObject(str);
        AuthState authState = new AuthState();
        authState.mRefreshToken = AtomicFU.getStringIfDefined(jSONObject, "refreshToken");
        authState.mScope = AtomicFU.getStringIfDefined(jSONObject, "scope");
        if (jSONObject.has("config")) {
            authState.mConfig = LocalStore.AnonymousClass7.fromJson(jSONObject.getJSONObject("config"));
        }
        if (jSONObject.has("mAuthorizationException")) {
            authState.mAuthorizationException = AuthorizationException.fromJson(jSONObject.getJSONObject("mAuthorizationException"));
        }
        if (jSONObject.has("lastAuthorizationResponse")) {
            authState.mLastAuthorizationResponse = AuthorizationResponse.jsonDeserialize(jSONObject.getJSONObject("lastAuthorizationResponse"));
        }
        if (jSONObject.has("mLastTokenResponse")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("mLastTokenResponse");
            HashSet hashSet = TokenResponse.BUILT_IN_PARAMS;
            if (!jSONObject2.has("request")) {
                UriKt$$ExternalSyntheticBUOutline0.m("token request not provided and not found in JSON");
                return null;
            }
            JSONObject jSONObject3 = jSONObject2.getJSONObject("request");
            Set set = TokenRequest.BUILT_IN_PARAMS;
            Okio.checkNotNull(jSONObject3, "json object cannot be null");
            authState.mLastTokenResponse = new TokenResponse(new TokenRequest(LocalStore.AnonymousClass7.fromJson(jSONObject3.getJSONObject("configuration")), AtomicFU.getString(jSONObject3, "clientId"), AtomicFU.getStringIfDefined(jSONObject3, "nonce"), AtomicFU.getString(jSONObject3, "grantType"), AtomicFU.getUriIfDefined(jSONObject3, "redirectUri"), AtomicFU.getStringIfDefined(jSONObject3, "scope"), AtomicFU.getStringIfDefined(jSONObject3, "authorizationCode"), AtomicFU.getStringIfDefined(jSONObject3, "refreshToken"), AtomicFU.getStringIfDefined(jSONObject3, "codeVerifier"), AtomicFU.getStringMap(jSONObject3, "additionalParameters")), AtomicFU.getStringIfDefined(jSONObject2, "token_type"), AtomicFU.getStringIfDefined(jSONObject2, "access_token"), AtomicFU.getLongIfDefined(jSONObject2, "expires_at"), AtomicFU.getStringIfDefined(jSONObject2, "id_token"), AtomicFU.getStringIfDefined(jSONObject2, "refresh_token"), AtomicFU.getStringIfDefined(jSONObject2, "scope"), AtomicFU.getStringMap(jSONObject2, "additionalParameters"));
        }
        if (!jSONObject.has("lastRegistrationResponse")) {
            return authState;
        }
        JSONObject jSONObject4 = jSONObject.getJSONObject("lastRegistrationResponse");
        int i = RegistrationResponse.$r8$clinit;
        Okio.checkNotNull(jSONObject4, "json cannot be null");
        if (!jSONObject4.has("request")) {
            UriKt$$ExternalSyntheticBUOutline0.m("registration request not found in JSON");
            return null;
        }
        JSONObject jSONObject5 = jSONObject4.getJSONObject("request");
        int i2 = RegistrationRequest.$r8$clinit;
        Okio.checkNotNull(jSONObject5, "json must not be null");
        LocalStore.AnonymousClass7 fromJson = LocalStore.AnonymousClass7.fromJson(jSONObject5.getJSONObject("configuration"));
        if (!jSONObject5.has("redirect_uris")) {
            throw new JSONException("field \"redirect_uris\" not found in json object");
        }
        JSONArray jSONArray = jSONObject5.getJSONArray("redirect_uris");
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                Object obj = jSONArray.get(i3);
                obj.getClass();
                arrayList.add(Uri.parse(obj.toString()));
            }
        }
        authState.mLastRegistrationResponse = new RegistrationResponse(new RegistrationRequest(fromJson, arrayList, AtomicFU.getStringListIfDefined(jSONObject5, "response_types"), AtomicFU.getStringListIfDefined(jSONObject5, "grant_types"), AtomicFU.getStringIfDefined(jSONObject5, "subject_type"), AtomicFU.getUriIfDefined(jSONObject5, "jwks_uri"), AtomicFU.getJsonObjectIfDefined(jSONObject5, "jwks"), AtomicFU.getStringIfDefined(jSONObject5, "token_endpoint_auth_method"), AtomicFU.getStringMap(jSONObject5, "additionalParameters")), AtomicFU.getString(jSONObject4, "client_id"), AtomicFU.getLongIfDefined(jSONObject4, "client_id_issued_at"), AtomicFU.getStringIfDefined(jSONObject4, "client_secret"), AtomicFU.getLongIfDefined(jSONObject4, "client_secret_expires_at"), AtomicFU.getStringIfDefined(jSONObject4, "registration_access_token"), AtomicFU.getUriIfDefined(jSONObject4, "registration_client_uri"), AtomicFU.getStringIfDefined(jSONObject4, "token_endpoint_auth_method"), AtomicFU.getStringMap(jSONObject4, "additionalParameters"));
        return authState;
    }

    public final String getAccessToken() {
        String str;
        if (this.mAuthorizationException != null) {
            return null;
        }
        TokenResponse tokenResponse = this.mLastTokenResponse;
        if (tokenResponse != null && (str = tokenResponse.accessToken) != null) {
            return str;
        }
        AuthorizationResponse authorizationResponse = this.mLastAuthorizationResponse;
        if (authorizationResponse != null) {
            return authorizationResponse.accessToken;
        }
        return null;
    }

    public final String getIdToken() {
        String str;
        if (this.mAuthorizationException != null) {
            return null;
        }
        TokenResponse tokenResponse = this.mLastTokenResponse;
        if (tokenResponse != null && (str = tokenResponse.idToken) != null) {
            return str;
        }
        AuthorizationResponse authorizationResponse = this.mLastAuthorizationResponse;
        if (authorizationResponse != null) {
            return authorizationResponse.idToken;
        }
        return null;
    }

    public final String jsonSerializeString() {
        JSONObject jSONObject = new JSONObject();
        AtomicFU.putIfNotNull(jSONObject, "refreshToken", this.mRefreshToken);
        AtomicFU.putIfNotNull(jSONObject, "scope", this.mScope);
        LocalStore.AnonymousClass7 anonymousClass7 = this.mConfig;
        if (anonymousClass7 != null) {
            AtomicFU.put(jSONObject, "config", anonymousClass7.toJson());
        }
        AuthorizationException authorizationException = this.mAuthorizationException;
        if (authorizationException != null) {
            AtomicFU.put(jSONObject, "mAuthorizationException", authorizationException.toJson());
        }
        AuthorizationResponse authorizationResponse = this.mLastAuthorizationResponse;
        if (authorizationResponse != null) {
            AtomicFU.put(jSONObject, "lastAuthorizationResponse", authorizationResponse.jsonSerialize());
        }
        TokenResponse tokenResponse = this.mLastTokenResponse;
        if (tokenResponse != null) {
            JSONObject jSONObject2 = new JSONObject();
            TokenRequest tokenRequest = tokenResponse.request;
            tokenRequest.getClass();
            JSONObject jSONObject3 = new JSONObject();
            AtomicFU.put(jSONObject3, "configuration", tokenRequest.configuration.toJson());
            AtomicFU.put(jSONObject3, "clientId", tokenRequest.clientId);
            AtomicFU.putIfNotNull(jSONObject3, "nonce", tokenRequest.nonce);
            AtomicFU.put(jSONObject3, "grantType", tokenRequest.grantType);
            AtomicFU.putIfNotNull(jSONObject3, "redirectUri", tokenRequest.redirectUri);
            AtomicFU.putIfNotNull(jSONObject3, "scope", tokenRequest.scope);
            AtomicFU.putIfNotNull(jSONObject3, "authorizationCode", tokenRequest.authorizationCode);
            AtomicFU.putIfNotNull(jSONObject3, "refreshToken", tokenRequest.refreshToken);
            AtomicFU.putIfNotNull(jSONObject3, "codeVerifier", tokenRequest.codeVerifier);
            AtomicFU.put(jSONObject3, "additionalParameters", AtomicFU.mapToJsonObject(tokenRequest.additionalParameters));
            AtomicFU.put(jSONObject2, "request", jSONObject3);
            AtomicFU.putIfNotNull(jSONObject2, "token_type", tokenResponse.tokenType);
            AtomicFU.putIfNotNull(jSONObject2, "access_token", tokenResponse.accessToken);
            AtomicFU.putIfNotNull(jSONObject2, "expires_at", tokenResponse.accessTokenExpirationTime);
            AtomicFU.putIfNotNull(jSONObject2, "id_token", tokenResponse.idToken);
            AtomicFU.putIfNotNull(jSONObject2, "refresh_token", tokenResponse.refreshToken);
            AtomicFU.putIfNotNull(jSONObject2, "scope", tokenResponse.scope);
            AtomicFU.put(jSONObject2, "additionalParameters", AtomicFU.mapToJsonObject(tokenResponse.additionalParameters));
            AtomicFU.put(jSONObject, "mLastTokenResponse", jSONObject2);
        }
        RegistrationResponse registrationResponse = this.mLastRegistrationResponse;
        if (registrationResponse != null) {
            JSONObject jSONObject4 = new JSONObject();
            RegistrationRequest registrationRequest = registrationResponse.request;
            JSONObject jSONObject5 = new JSONObject();
            AtomicFU.put(jSONObject5, "redirect_uris", AtomicFU.toJsonArray(registrationRequest.redirectUris));
            AtomicFU.put(jSONObject5, "application_type", "native");
            List list = registrationRequest.responseTypes;
            if (list != null) {
                AtomicFU.put(jSONObject5, "response_types", AtomicFU.toJsonArray(list));
            }
            List list2 = registrationRequest.grantTypes;
            if (list2 != null) {
                AtomicFU.put(jSONObject5, "grant_types", AtomicFU.toJsonArray(list2));
            }
            AtomicFU.putIfNotNull(jSONObject5, "subject_type", registrationRequest.subjectType);
            AtomicFU.putIfNotNull(jSONObject5, "jwks_uri", registrationRequest.jwksUri);
            JSONObject jSONObject6 = registrationRequest.jwks;
            if (jSONObject6 != null) {
                try {
                    jSONObject5.put("jwks", jSONObject6);
                } catch (JSONException e) {
                    UriKt$$ExternalSyntheticBUOutline0.m("JSONException thrown in violation of contract", e);
                    return null;
                }
            }
            AtomicFU.putIfNotNull(jSONObject5, "token_endpoint_auth_method", registrationRequest.tokenEndpointAuthenticationMethod);
            AtomicFU.put(jSONObject5, "configuration", registrationRequest.configuration.toJson());
            AtomicFU.put(jSONObject5, "additionalParameters", AtomicFU.mapToJsonObject(registrationRequest.additionalParameters));
            AtomicFU.put(jSONObject4, "request", jSONObject5);
            AtomicFU.put(jSONObject4, "client_id", registrationResponse.clientId);
            AtomicFU.putIfNotNull(jSONObject4, "client_id_issued_at", registrationResponse.clientIdIssuedAt);
            AtomicFU.putIfNotNull(jSONObject4, "client_secret", registrationResponse.clientSecret);
            AtomicFU.putIfNotNull(jSONObject4, "client_secret_expires_at", registrationResponse.clientSecretExpiresAt);
            AtomicFU.putIfNotNull(jSONObject4, "registration_access_token", registrationResponse.registrationAccessToken);
            AtomicFU.putIfNotNull(jSONObject4, "registration_client_uri", registrationResponse.registrationClientUri);
            AtomicFU.putIfNotNull(jSONObject4, "token_endpoint_auth_method", registrationResponse.tokenEndpointAuthMethod);
            AtomicFU.put(jSONObject4, "additionalParameters", AtomicFU.mapToJsonObject(registrationResponse.additionalParameters));
            AtomicFU.put(jSONObject, "lastRegistrationResponse", jSONObject4);
        }
        return jSONObject.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x010f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r2.longValue() <= (java.lang.System.currentTimeMillis() + 60000)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        if (getAccessToken() == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00fb, code lost:
    
        r14 = getAccessToken();
        getIdToken();
        r13 = r15.f$0;
        r0 = r15.f$1;
        r15 = r15.f$2;
        r13.element = r14;
        r0.element = null;
        r15.countDown();
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void performActionWithFreshTokens(net.openid.appauth.AuthorizationService r14, com.fsck.k9.backends.RealOAuth2TokenProvider$$ExternalSyntheticLambda0 r15) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.openid.appauth.AuthState.performActionWithFreshTokens(net.openid.appauth.AuthorizationService, com.fsck.k9.backends.RealOAuth2TokenProvider$$ExternalSyntheticLambda0):void");
    }

    public final void update(TokenResponse tokenResponse, AuthorizationException authorizationException) {
        Okio.checkArgument("exactly one of tokenResponse or authException should be non-null", (tokenResponse != null) ^ (authorizationException != null));
        AuthorizationException authorizationException2 = this.mAuthorizationException;
        if (authorizationException2 != null) {
            Logger.getInstance().log(5, null, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first", authorizationException2);
            this.mAuthorizationException = null;
        }
        if (authorizationException != null) {
            if (authorizationException.type == 2) {
                this.mAuthorizationException = authorizationException;
                return;
            }
            return;
        }
        this.mLastTokenResponse = tokenResponse;
        String str = tokenResponse.scope;
        if (str != null) {
            this.mScope = str;
        }
        String str2 = tokenResponse.refreshToken;
        if (str2 != null) {
            this.mRefreshToken = str2;
        }
    }

    public AuthState() {
        this.mPendingActionsSyncObject = new Object();
    }

    public final void update(AuthorizationResponse authorizationResponse, AuthorizationException authorizationException) {
        Okio.checkArgument("exactly one of authResponse or authException should be non-null", (authorizationException != null) ^ (authorizationResponse != null));
        if (authorizationException != null) {
            if (authorizationException.type == 1) {
                this.mAuthorizationException = authorizationException;
                return;
            }
            return;
        }
        this.mLastAuthorizationResponse = authorizationResponse;
        this.mConfig = null;
        this.mLastTokenResponse = null;
        this.mRefreshToken = null;
        this.mAuthorizationException = null;
        String str = authorizationResponse.scope;
        if (str == null) {
            str = authorizationResponse.request.scope;
        }
        this.mScope = str;
    }
}
