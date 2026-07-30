package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: di, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class EnumC2648di implements Executor {

    /* renamed from: do, reason: not valid java name */
    public static final EnumC2648di f12524do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC2648di[] f12525do;

    static {
        EnumC2648di enumC2648di = new EnumC2648di();
        f12524do = enumC2648di;
        f12525do = new EnumC2648di[]{enumC2648di};
    }

    public static EnumC2648di valueOf(String str) {
        return (EnumC2648di) Enum.valueOf(EnumC2648di.class, str);
    }

    public static EnumC2648di[] values() {
        return (EnumC2648di[]) f12525do.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
