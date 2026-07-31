package net.openid.appauth;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationResponse extends NodeUtils {
    public static final Set BUILT_IN_PARAMS = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("token_type", "state", "code", "access_token", "expires_in", "id_token", "scope")));
    public final String accessToken;
    public final Long accessTokenExpirationTime;
    public final Map additionalParameters;
    public final String authorizationCode;
    public final String idToken;
    public final AuthorizationRequest request;
    public final String scope;
    public final String state;
    public final String tokenType;

    public AuthorizationResponse(AuthorizationRequest authorizationRequest, String str, String str2, String str3, String str4, Long l, String str5, String str6, Map map) {
        this.request = authorizationRequest;
        this.state = str;
        this.tokenType = str2;
        this.authorizationCode = str3;
        this.accessToken = str4;
        this.accessTokenExpirationTime = l;
        this.idToken = str5;
        this.scope = str6;
        this.additionalParameters = map;
    }

    public static AuthorizationResponse fromIntent(Intent intent) {
        Okio.checkNotNull(intent, "dataIntent must not be null");
        if (!intent.hasExtra("net.openid.appauth.AuthorizationResponse")) {
            return null;
        }
        try {
            return jsonDeserialize(new JSONObject(intent.getStringExtra("net.openid.appauth.AuthorizationResponse")));
        } catch (JSONException e) {
            throw new IllegalArgumentException("Intent contains malformed auth response", e);
        }
    }

    public static AuthorizationResponse jsonDeserialize(JSONObject jSONObject) {
        if (jSONObject.has("request")) {
            return new AuthorizationResponse(AuthorizationRequest.jsonDeserialize(jSONObject.getJSONObject("request")), AtomicFU.getStringIfDefined(jSONObject, "state"), AtomicFU.getStringIfDefined(jSONObject, "token_type"), AtomicFU.getStringIfDefined(jSONObject, "code"), AtomicFU.getStringIfDefined(jSONObject, "access_token"), AtomicFU.getLongIfDefined(jSONObject, "expires_at"), AtomicFU.getStringIfDefined(jSONObject, "id_token"), AtomicFU.getStringIfDefined(jSONObject, "scope"), AtomicFU.getStringMap(jSONObject, "additional_parameters"));
        }
        UriKt$$ExternalSyntheticBUOutline0.m("authorization request not provided and not found in JSON");
        return null;
    }

    public final TokenRequest createTokenExchangeRequest() {
        Map map = Collections.EMPTY_MAP;
        Okio.checkNotNull(map, "additionalExchangeParameters cannot be null");
        String str = this.authorizationCode;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("authorizationCode not available for exchange request");
            return null;
        }
        AuthorizationRequest authorizationRequest = this.request;
        LocalStore.AnonymousClass7 anonymousClass7 = authorizationRequest.configuration;
        String str2 = authorizationRequest.clientId;
        anonymousClass7.getClass();
        Okio.checkNotEmpty(str2, "clientId cannot be null or empty");
        new LinkedHashMap();
        Okio.checkNotEmpty("authorization_code", "grantType cannot be null or empty");
        Uri uri = authorizationRequest.redirectUri;
        if (uri != null) {
            Okio.checkNotNull(uri.getScheme(), "redirectUri must have a scheme");
        }
        String str3 = authorizationRequest.codeVerifier;
        if (str3 != null) {
            CodeVerifierUtil.checkCodeVerifier(str3);
        }
        Okio.checkNotEmpty(str, "authorization code must not be empty");
        Map checkAdditionalParams = StringsKt__IndentKt.checkAdditionalParams(map, TokenRequest.BUILT_IN_PARAMS);
        String str4 = authorizationRequest.nonce;
        String str5 = TextUtils.isEmpty(str4) ? null : str4;
        if (uri != null) {
            return new TokenRequest(anonymousClass7, str2, str5, "authorization_code", uri, null, str, null, str3, DesugarCollections.unmodifiableMap(checkAdditionalParams));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no redirect URI specified on token request for code exchange");
        return null;
    }

    @Override // org.jsoup.nodes.NodeUtils
    public final String getState() {
        return this.state;
    }

    public final JSONObject jsonSerialize() {
        JSONObject jSONObject = new JSONObject();
        AtomicFU.put(jSONObject, "request", this.request.jsonSerialize());
        AtomicFU.putIfNotNull(jSONObject, "state", this.state);
        AtomicFU.putIfNotNull(jSONObject, "token_type", this.tokenType);
        AtomicFU.putIfNotNull(jSONObject, "code", this.authorizationCode);
        AtomicFU.putIfNotNull(jSONObject, "access_token", this.accessToken);
        AtomicFU.putIfNotNull(jSONObject, "expires_at", this.accessTokenExpirationTime);
        AtomicFU.putIfNotNull(jSONObject, "id_token", this.idToken);
        AtomicFU.putIfNotNull(jSONObject, "scope", this.scope);
        AtomicFU.put(jSONObject, "additional_parameters", AtomicFU.mapToJsonObject(this.additionalParameters));
        return jSONObject;
    }

    @Override // org.jsoup.nodes.NodeUtils
    public final Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtra("net.openid.appauth.AuthorizationResponse", jsonSerialize().toString());
        return intent;
    }
}
