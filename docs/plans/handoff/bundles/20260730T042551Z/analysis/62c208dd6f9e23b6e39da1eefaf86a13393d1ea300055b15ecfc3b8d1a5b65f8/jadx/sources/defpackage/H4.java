package defpackage;

import android.os.Process;

/* loaded from: classes3.dex */
public abstract class H4 implements Runnable {
    /* renamed from: do, reason: not valid java name */
    public abstract void mo809do();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo809do();
    }
}
