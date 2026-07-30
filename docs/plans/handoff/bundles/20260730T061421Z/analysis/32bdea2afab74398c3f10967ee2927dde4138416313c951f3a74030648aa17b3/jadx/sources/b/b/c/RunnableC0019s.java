package b.b.c;

import com.android.systemui.shared.system.QuickStepContract;

/* renamed from: b.b.c.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0019s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f318a;

    public RunnableC0019s(J j) {
        this.f318a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        J j = this.f318a;
        if ((j.T & 1) != 0) {
            j.y(0);
        }
        J j2 = this.f318a;
        if ((j2.T & QuickStepContract.SYSUI_STATE_TRACING_ENABLED) != 0) {
            j2.y(108);
        }
        J j3 = this.f318a;
        j3.S = false;
        j3.T = 0;
    }
}
