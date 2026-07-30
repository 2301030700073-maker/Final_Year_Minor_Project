package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ve, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC3871ve implements Executor {

    /* renamed from: do, reason: not valid java name */
    public static final EnumC3871ve f16103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC3871ve[] f16104do;

    static {
        EnumC3871ve enumC3871ve = new EnumC3871ve();
        f16103do = enumC3871ve;
        f16104do = new EnumC3871ve[]{enumC3871ve};
    }

    public static EnumC3871ve valueOf(String str) {
        return (EnumC3871ve) Enum.valueOf(EnumC3871ve.class, str);
    }

    public static EnumC3871ve[] values() {
        return (EnumC3871ve[]) f16104do.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
