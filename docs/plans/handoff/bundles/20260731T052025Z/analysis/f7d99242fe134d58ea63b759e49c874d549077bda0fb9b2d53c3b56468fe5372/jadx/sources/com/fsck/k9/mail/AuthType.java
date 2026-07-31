package com.fsck.k9.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthType {
    public static final /* synthetic */ AuthType[] $VALUES;
    public static final AuthType CRAM_MD5;
    public static final AuthType EXTERNAL;
    public static final AuthType NONE;
    public static final AuthType PLAIN;
    public static final AuthType XOAUTH2;

    static {
        AuthType authType = new AuthType("PLAIN", 0);
        PLAIN = authType;
        AuthType authType2 = new AuthType("CRAM_MD5", 1);
        CRAM_MD5 = authType2;
        AuthType authType3 = new AuthType("EXTERNAL", 2);
        EXTERNAL = authType3;
        AuthType authType4 = new AuthType("XOAUTH2", 3);
        XOAUTH2 = authType4;
        AuthType authType5 = new AuthType("NONE", 4);
        NONE = authType5;
        $VALUES = new AuthType[]{authType, authType2, authType3, authType4, authType5};
    }

    public static AuthType valueOf(String str) {
        return (AuthType) Enum.valueOf(AuthType.class, str);
    }

    public static AuthType[] values() {
        return (AuthType[]) $VALUES.clone();
    }
}
