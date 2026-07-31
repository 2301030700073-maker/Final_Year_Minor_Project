package net.openid.appauth;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TokenResponse {
    public static final HashSet BUILT_IN_PARAMS = new HashSet(Arrays.asList("token_type", "access_token", "expires_in", "refresh_token", "id_token", "scope"));
    public final String accessToken;
    public final Long accessTokenExpirationTime;
    public final Map additionalParameters;
    public final String idToken;
    public final String refreshToken;
    public final TokenRequest request;
    public final String scope;
    public final String tokenType;

    public TokenResponse(TokenRequest tokenRequest, String str, String str2, Long l, String str3, String str4, String str5, Map map) {
        this.request = tokenRequest;
        this.tokenType = str;
        this.accessToken = str2;
        this.accessTokenExpirationTime = l;
        this.idToken = str3;
        this.refreshToken = str4;
        this.scope = str5;
        this.additionalParameters = map;
    }
}
