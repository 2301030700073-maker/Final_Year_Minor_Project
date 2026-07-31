package net.thunderbird.core.common.oauth;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OAuthConfiguration {
    public final String authorizationEndpoint;
    public final String clientId;
    public final String redirectUri;
    public final List scopes;
    public final String tokenEndpoint;

    public OAuthConfiguration(String str, List list, String str2, String str3, String str4) {
        this.clientId = str;
        this.scopes = list;
        this.authorizationEndpoint = str2;
        this.tokenEndpoint = str3;
        this.redirectUri = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OAuthConfiguration)) {
            return false;
        }
        OAuthConfiguration oAuthConfiguration = (OAuthConfiguration) obj;
        return this.clientId.equals(oAuthConfiguration.clientId) && this.scopes.equals(oAuthConfiguration.scopes) && this.authorizationEndpoint.equals(oAuthConfiguration.authorizationEndpoint) && this.tokenEndpoint.equals(oAuthConfiguration.tokenEndpoint) && this.redirectUri.equals(oAuthConfiguration.redirectUri);
    }

    public final int hashCode() {
        return this.redirectUri.hashCode() + Modifier.CC.m(Modifier.CC.m(CameraDevices$CC.m(this.scopes, this.clientId.hashCode() * 31, 31), this.authorizationEndpoint, 31), this.tokenEndpoint, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OAuthConfiguration(clientId=");
        sb.append(this.clientId);
        sb.append(", scopes=");
        sb.append(this.scopes);
        sb.append(", authorizationEndpoint=");
        Modifier.CC.m(sb, this.authorizationEndpoint, ", tokenEndpoint=", this.tokenEndpoint, ", redirectUri=");
        return CameraDevices$CC.m(sb, this.redirectUri, ")");
    }
}
