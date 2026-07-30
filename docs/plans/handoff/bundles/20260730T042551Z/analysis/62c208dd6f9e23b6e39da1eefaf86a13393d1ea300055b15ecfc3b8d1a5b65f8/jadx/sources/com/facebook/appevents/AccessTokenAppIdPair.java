package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class AccessTokenAppIdPair implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    private final String accessTokenString;
    private final String applicationId;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    public static final class SerializationProxyV1 implements Serializable {
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = -2488473066578201069L;
        private final String accessTokenString;
        private final String appId;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }
        }

        public SerializationProxyV1(String str, String str2) {
            C0173Do.m401try(str2, "appId");
            this.accessTokenString = str;
            this.appId = str2;
        }

        private final Object readResolve() {
            return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
        }
    }

    public AccessTokenAppIdPair(String str, String str2) {
        C0173Do.m401try(str2, "applicationId");
        this.applicationId = str2;
        this.accessTokenString = Utility.isNullOrEmpty(str) ? null : str;
    }

    private final Object writeReplace() {
        return new SerializationProxyV1(this.accessTokenString, this.applicationId);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccessTokenAppIdPair)) {
            return false;
        }
        Utility utility = Utility.INSTANCE;
        AccessTokenAppIdPair accessTokenAppIdPair = (AccessTokenAppIdPair) obj;
        return Utility.areObjectsEqual(accessTokenAppIdPair.accessTokenString, this.accessTokenString) && Utility.areObjectsEqual(accessTokenAppIdPair.applicationId, this.applicationId);
    }

    public final String getAccessTokenString() {
        return this.accessTokenString;
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public int hashCode() {
        String str = this.accessTokenString;
        return (str == null ? 0 : str.hashCode()) ^ this.applicationId.hashCode();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccessTokenAppIdPair(AccessToken accessToken) {
        this(accessToken.f9200break, C3756th.m8303if());
        C0173Do.m401try(accessToken, "accessToken");
    }
}
