package androidx.window.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VerificationMode {
    public static final /* synthetic */ VerificationMode[] $VALUES;
    public static final VerificationMode LOG;
    public static final VerificationMode QUIET;

    /* JADX INFO: Fake field, exist only in values array */
    VerificationMode EF0;

    static {
        VerificationMode verificationMode = new VerificationMode("STRICT", 0);
        VerificationMode verificationMode2 = new VerificationMode("LOG", 1);
        LOG = verificationMode2;
        VerificationMode verificationMode3 = new VerificationMode("QUIET", 2);
        QUIET = verificationMode3;
        $VALUES = new VerificationMode[]{verificationMode, verificationMode2, verificationMode3};
    }

    public static VerificationMode valueOf(String str) {
        return (VerificationMode) Enum.valueOf(VerificationMode.class, str);
    }

    public static VerificationMode[] values() {
        return (VerificationMode[]) $VALUES.clone();
    }
}
