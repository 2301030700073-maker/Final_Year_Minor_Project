package net.thunderbird.core.android.account;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Expunge {
    public static final /* synthetic */ Expunge[] $VALUES;
    public static final Expunge EXPUNGE_IMMEDIATELY;
    public static final Expunge EXPUNGE_MANUALLY;
    public static final Expunge EXPUNGE_ON_POLL;

    static {
        Expunge expunge = new Expunge("EXPUNGE_IMMEDIATELY", 0);
        EXPUNGE_IMMEDIATELY = expunge;
        Expunge expunge2 = new Expunge("EXPUNGE_MANUALLY", 1);
        EXPUNGE_MANUALLY = expunge2;
        Expunge expunge3 = new Expunge("EXPUNGE_ON_POLL", 2);
        EXPUNGE_ON_POLL = expunge3;
        $VALUES = new Expunge[]{expunge, expunge2, expunge3};
    }

    public static Expunge valueOf(String str) {
        return (Expunge) Enum.valueOf(Expunge.class, str);
    }

    public static Expunge[] values() {
        return (Expunge[]) $VALUES.clone();
    }
}
