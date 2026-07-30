package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import defpackage.C0675aA;

/* renamed from: Sl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0499Sl {
    private static volatile Choreographer choreographer;

    static {
        Object m8004import;
        try {
            m8004import = new C0455Ql(m2189do(Looper.getMainLooper()));
        } catch (Throwable th) {
            m8004import = C3645ro.m8004import(th);
        }
        if (m8004import instanceof C0675aA.Cdo) {
            m8004import = null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final Handler m2189do(Looper looper) {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        C0173Do.m396for(invoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) invoke;
    }
}
