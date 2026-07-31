package net.openid.appauth;

import android.net.Uri;
import com.fsck.k9.mailstore.LocalStore;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TokenRequest {
    public static final Set BUILT_IN_PARAMS = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("client_id", "code", "code_verifier", "grant_type", "redirect_uri", "refresh_token", "scope")));
    public final Map additionalParameters;
    public final String authorizationCode;
    public final String clientId;
    public final String codeVerifier;
    public final LocalStore.AnonymousClass7 configuration;
    public final String grantType;
    public final String nonce;
    public final Uri redirectUri;
    public final String refreshToken;
    public final String scope;

    public TokenRequest(LocalStore.AnonymousClass7 anonymousClass7, String str, String str2, String str3, Uri uri, String str4, String str5, String str6, String str7, Map map) {
        this.configuration = anonymousClass7;
        this.clientId = str;
        this.nonce = str2;
        this.grantType = str3;
        this.redirectUri = uri;
        this.scope = str4;
        this.authorizationCode = str5;
        this.refreshToken = str6;
        this.codeVerifier = str7;
        this.additionalParameters = map;
    }

    public final HashMap getRequestParameters() {
        HashMap hashMap = new HashMap();
        hashMap.put("grant_type", this.grantType);
        Uri uri = this.redirectUri;
        if (uri != null) {
            hashMap.put("redirect_uri", uri.toString());
        }
        String str = this.authorizationCode;
        if (str != null) {
            hashMap.put("code", str.toString());
        }
        String str2 = this.refreshToken;
        if (str2 != null) {
            hashMap.put("refresh_token", str2.toString());
        }
        String str3 = this.codeVerifier;
        if (str3 != null) {
            hashMap.put("code_verifier", str3.toString());
        }
        String str4 = this.scope;
        if (str4 != null) {
            hashMap.put("scope", str4.toString());
        }
        for (Map.Entry entry : this.additionalParameters.entrySet()) {
            hashMap.put((String) entry.getKey(), (String) entry.getValue());
        }
        return hashMap;
    }
}
