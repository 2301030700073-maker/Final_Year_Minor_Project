package com.fsck.k9.mail.store.imap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdleResult {
    public static final /* synthetic */ IdleResult[] $VALUES;
    public static final IdleResult NOT_SUPPORTED;
    public static final IdleResult STOPPED;
    public static final IdleResult SYNC;

    static {
        IdleResult idleResult = new IdleResult("SYNC", 0);
        SYNC = idleResult;
        IdleResult idleResult2 = new IdleResult("STOPPED", 1);
        STOPPED = idleResult2;
        IdleResult idleResult3 = new IdleResult("NOT_SUPPORTED", 2);
        NOT_SUPPORTED = idleResult3;
        $VALUES = new IdleResult[]{idleResult, idleResult2, idleResult3};
    }

    public static IdleResult valueOf(String str) {
        return (IdleResult) Enum.valueOf(IdleResult.class, str);
    }

    public static IdleResult[] values() {
        return (IdleResult[]) $VALUES.clone();
    }
}
