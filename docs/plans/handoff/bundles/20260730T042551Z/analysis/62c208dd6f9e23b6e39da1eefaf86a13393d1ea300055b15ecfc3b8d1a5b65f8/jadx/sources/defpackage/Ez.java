package defpackage;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class Ez implements ThreadFactory {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f947do = "fonts-androidx";

    /* renamed from: do, reason: not valid java name */
    public final int f946do = 10;

    /* renamed from: Ez$do, reason: invalid class name */
    public static class Cdo extends Thread {

        /* renamed from: for, reason: not valid java name */
        public final int f948for;

        public Cdo(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.f948for = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.f948for);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Cdo(runnable, this.f947do, this.f946do);
    }
}
