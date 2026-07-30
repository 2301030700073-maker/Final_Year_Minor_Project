package defpackage;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: bJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class EnumC0744bJ implements Executor {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"ThreadPoolCreation"})
    public static final Handler f8385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final EnumC0744bJ f8386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC0744bJ[] f8387do;

    static {
        EnumC0744bJ enumC0744bJ = new EnumC0744bJ();
        f8386do = enumC0744bJ;
        f8387do = new EnumC0744bJ[]{enumC0744bJ};
        f8385do = new Handler(Looper.getMainLooper());
    }

    public static EnumC0744bJ valueOf(String str) {
        return (EnumC0744bJ) Enum.valueOf(EnumC0744bJ.class, str);
    }

    public static EnumC0744bJ[] values() {
        return (EnumC0744bJ[]) f8387do.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f8385do.post(runnable);
    }
}
