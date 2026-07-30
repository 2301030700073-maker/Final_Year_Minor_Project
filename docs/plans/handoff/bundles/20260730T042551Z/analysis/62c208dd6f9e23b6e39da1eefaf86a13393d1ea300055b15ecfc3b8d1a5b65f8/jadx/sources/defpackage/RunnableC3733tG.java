package defpackage;

import androidx.work.impl.foreground.SystemForegroundService;

/* renamed from: tG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3733tG implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SystemForegroundService f15682do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15683for;

    public RunnableC3733tG(SystemForegroundService systemForegroundService, int i) {
        this.f15682do = systemForegroundService;
        this.f15683for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15682do.f8209do.cancel(this.f15683for);
    }
}
