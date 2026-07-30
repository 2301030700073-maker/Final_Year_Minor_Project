package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import defpackage.AbstractC0614Xq;
import defpackage.C3798uM;
import defpackage.GM;
import defpackage.IG;
import defpackage.InterfaceC3739tM;
import defpackage.InterfaceFutureC3942wq;
import defpackage.RunnableC0159Da;
import defpackage.TM;
import defpackage.UC;
import defpackage.VM;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements InterfaceC3739tM {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8227for = 0;

    /* renamed from: do, reason: not valid java name */
    public final UC<ListenableWorker.Cdo> f8228do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListenableWorker f8229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f8230do;

    /* renamed from: if, reason: not valid java name */
    public final WorkerParameters f8231if;

    /* renamed from: new, reason: not valid java name */
    public volatile boolean f8232new;

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            String m4723if = constraintTrackingWorker.getInputData().m4723if("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            if (TextUtils.isEmpty(m4723if)) {
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                int i = ConstraintTrackingWorker.f8227for;
                m2869for.mo2873if(new Throwable[0]);
                constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.C0046do());
                return;
            }
            ListenableWorker m4900do = constraintTrackingWorker.getWorkerFactory().m4900do(constraintTrackingWorker.getApplicationContext(), m4723if, constraintTrackingWorker.f8231if);
            constraintTrackingWorker.f8229do = m4900do;
            if (m4900do == null) {
                AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                int i2 = ConstraintTrackingWorker.f8227for;
                m2869for2.mo2872do(new Throwable[0]);
                constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.C0046do());
                return;
            }
            TM m2641this = ((VM) GM.m731try(constraintTrackingWorker.getApplicationContext()).f1178do.mo4729final()).m2641this(constraintTrackingWorker.getId().toString());
            if (m2641this == null) {
                constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.C0046do());
                return;
            }
            C3798uM c3798uM = new C3798uM(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
            c3798uM.m8385for(Collections.singletonList(m2641this));
            if (!c3798uM.m8384do(constraintTrackingWorker.getId().toString())) {
                AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                int i3 = ConstraintTrackingWorker.f8227for;
                String.format("Constraints not met for delegate %s. Requesting retry.", m4723if);
                m2869for3.mo2872do(new Throwable[0]);
                constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.Cif());
                return;
            }
            AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
            int i4 = ConstraintTrackingWorker.f8227for;
            String.format("Constraints met for delegate %s", m4723if);
            m2869for4.mo2872do(new Throwable[0]);
            try {
                InterfaceFutureC3942wq<ListenableWorker.Cdo> startWork = constraintTrackingWorker.f8229do.startWork();
                startWork.addListener(new RunnableC0159Da(constraintTrackingWorker, startWork), constraintTrackingWorker.getBackgroundExecutor());
            } catch (Throwable th) {
                AbstractC0614Xq m2869for5 = AbstractC0614Xq.m2869for();
                int i5 = ConstraintTrackingWorker.f8227for;
                String.format("Delegated worker %s threw exception in startWork.", m4723if);
                m2869for5.mo2872do(th);
                synchronized (constraintTrackingWorker.f8230do) {
                    if (constraintTrackingWorker.f8232new) {
                        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
                        constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.Cif());
                    } else {
                        constraintTrackingWorker.f8228do.m2365goto(new ListenableWorker.Cdo.C0046do());
                    }
                }
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("ConstraintTrkngWrkr");
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f8231if = workerParameters;
        this.f8230do = new Object();
        this.f8232new = false;
        this.f8228do = new UC<>();
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: do */
    public final void mo1456do(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public final IG getTaskExecutor() {
        return GM.m731try(getApplicationContext()).f1173do;
    }

    @Override // androidx.work.ListenableWorker
    public final boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f8229do;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: new */
    public final void mo1458new(ArrayList arrayList) {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Constraints changed for %s", arrayList);
        m2869for.mo2872do(new Throwable[0]);
        synchronized (this.f8230do) {
            this.f8232new = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f8229do;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f8229do.stop();
    }

    @Override // androidx.work.ListenableWorker
    public final InterfaceFutureC3942wq<ListenableWorker.Cdo> startWork() {
        getBackgroundExecutor().execute(new Cdo());
        return this.f8228do;
    }
}
