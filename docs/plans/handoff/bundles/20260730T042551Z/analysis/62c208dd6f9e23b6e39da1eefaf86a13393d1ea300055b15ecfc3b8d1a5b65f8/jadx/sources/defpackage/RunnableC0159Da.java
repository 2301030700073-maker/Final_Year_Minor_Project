package defpackage;

import androidx.work.ListenableWorker;
import androidx.work.impl.workers.ConstraintTrackingWorker;

/* renamed from: Da, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0159Da implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ConstraintTrackingWorker f625do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceFutureC3942wq f626do;

    public RunnableC0159Da(ConstraintTrackingWorker constraintTrackingWorker, InterfaceFutureC3942wq interfaceFutureC3942wq) {
        this.f625do = constraintTrackingWorker;
        this.f626do = interfaceFutureC3942wq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f625do.f8230do) {
            if (this.f625do.f8232new) {
                ConstraintTrackingWorker constraintTrackingWorker = this.f625do;
                constraintTrackingWorker.getClass();
                constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.Cif());
            } else {
                this.f625do.f8228do.m2364break(this.f626do);
            }
        }
    }
}
