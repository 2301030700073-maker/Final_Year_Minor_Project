package com.fsck.k9.mail.transport.smtp;

import com.fsck.k9.sasl.OAuthBearer;
import com.jcraft.jzlib.Adler32;
import okio.ByteString;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OAuthMethod {
    public static final /* synthetic */ OAuthMethod[] $VALUES;
    public static final OAUTHBEARER OAUTHBEARER;
    public static final XOAUTH2 XOAUTH2;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OAUTHBEARER extends OAuthMethod {
        public OAUTHBEARER() {
            super("OAUTHBEARER", 1);
        }

        @Override // com.fsck.k9.mail.transport.smtp.OAuthMethod
        public final String buildInitialClientResponse(String str, String str2) {
            str.getClass();
            return OAuthBearer.buildOAuthBearerInitialClientResponse(str, str2);
        }

        @Override // com.fsck.k9.mail.transport.smtp.OAuthMethod
        public final String getCommand() {
            return "AUTH OAUTHBEARER";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class XOAUTH2 extends OAuthMethod {
        public XOAUTH2() {
            super("XOAUTH2", 0);
        }

        @Override // com.fsck.k9.mail.transport.smtp.OAuthMethod
        public final String buildInitialClientResponse(String str, String str2) {
            str.getClass();
            String format = String.format("user=%1s\u0001auth=Bearer %2s\u0001\u0001", str, str2);
            ByteString byteString = ByteString.EMPTY;
            String base64 = Adler32.encodeUtf8(format).base64();
            base64.getClass();
            return base64;
        }

        @Override // com.fsck.k9.mail.transport.smtp.OAuthMethod
        public final String getCommand() {
            return "AUTH XOAUTH2";
        }
    }

    static {
        XOAUTH2 xoauth2 = new XOAUTH2();
        XOAUTH2 = xoauth2;
        OAUTHBEARER oauthbearer = new OAUTHBEARER();
        OAUTHBEARER = oauthbearer;
        $VALUES = new OAuthMethod[]{xoauth2, oauthbearer};
    }

    public static OAuthMethod valueOf(String str) {
        return (OAuthMethod) Enum.valueOf(OAuthMethod.class, str);
    }

    public static OAuthMethod[] values() {
        return (OAuthMethod[]) $VALUES.clone();
    }

    public abstract String buildInitialClientResponse(String str, String str2);

    public abstract String getCommand();
}
