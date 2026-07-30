package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import defpackage.InterfaceC0260Hn;
import defpackage.Px;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements InterfaceC0260Hn<Cfor> {

    /* renamed from: androidx.profileinstaller.ProfileInstallerInitializer$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m4291do(final Runnable runnable) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: Qx
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }
    }

    /* renamed from: androidx.profileinstaller.ProfileInstallerInitializer$for, reason: invalid class name */
    public static class Cfor {
    }

    /* renamed from: androidx.profileinstaller.ProfileInstallerInitializer$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Handler m4292do(Looper looper) {
            Handler createAsync;
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: do */
    public final Cfor mo883do(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new Cfor();
        }
        Cdo.m4291do(new Px(0, this, context.getApplicationContext()));
        return new Cfor();
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: if */
    public final List<Class<? extends InterfaceC0260Hn<?>>> mo884if() {
        return Collections.emptyList();
    }
}
