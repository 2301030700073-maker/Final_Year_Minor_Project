package net.openid.appauth;

import android.net.Uri;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RegistrationResponse {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final LinkedHashMap additionalParameters;
    public final String clientId;
    public final Long clientIdIssuedAt;
    public final String clientSecret;
    public final Long clientSecretExpiresAt;
    public final String registrationAccessToken;
    public final Uri registrationClientUri;
    public final RegistrationRequest request;
    public final String tokenEndpointAuthMethod;

    static {
        new HashSet(Arrays.asList("client_id", "client_secret", "client_secret_expires_at", "registration_access_token", "registration_client_uri", "client_id_issued_at", "token_endpoint_auth_method"));
    }

    public RegistrationResponse(RegistrationRequest registrationRequest, String str, Long l, String str2, Long l2, String str3, Uri uri, String str4, LinkedHashMap linkedHashMap) {
        this.request = registrationRequest;
        this.clientId = str;
        this.clientIdIssuedAt = l;
        this.clientSecret = str2;
        this.clientSecretExpiresAt = l2;
        this.registrationAccessToken = str3;
        this.registrationClientUri = uri;
        this.tokenEndpointAuthMethod = str4;
        this.additionalParameters = linkedHashMap;
    }
}
