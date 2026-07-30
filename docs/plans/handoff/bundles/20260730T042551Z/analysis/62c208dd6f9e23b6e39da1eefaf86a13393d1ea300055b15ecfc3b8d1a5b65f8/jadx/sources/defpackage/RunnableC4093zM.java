package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import java.util.UUID;

/* renamed from: zM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC4093zM implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f16895for = 0;

    /* renamed from: do, reason: not valid java name */
    public final IG f16896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TM f16897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UC<Void> f16898do = new UC<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16899do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ListenableWorker f16900do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3758tj f16901do;

    /* renamed from: zM$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ UC f16902do;

        public Cdo(UC uc) {
            this.f16902do = uc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f16902do.m2364break(RunnableC4093zM.this.f16900do.getForegroundInfoAsync());
        }
    }

    /* renamed from: zM$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ UC f16904do;

        public Cif(UC uc) {
            this.f16904do = uc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC4093zM runnableC4093zM = RunnableC4093zM.this;
            try {
                C3640rj c3640rj = (C3640rj) this.f16904do.get();
                if (c3640rj == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", runnableC4093zM.f16897do.f3664if));
                }
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                int i = RunnableC4093zM.f16895for;
                Object[] objArr = new Object[1];
                TM tm = runnableC4093zM.f16897do;
                ListenableWorker listenableWorker = runnableC4093zM.f16900do;
                objArr[0] = tm.f3664if;
                String.format("Updating notification for %s", objArr);
                m2869for.mo2872do(new Throwable[0]);
                listenableWorker.setRunInForeground(true);
                UC<Void> uc = runnableC4093zM.f16898do;
                InterfaceC3758tj interfaceC3758tj = runnableC4093zM.f16901do;
                Context context = runnableC4093zM.f16899do;
                UUID id = listenableWorker.getId();
                BM bm = (BM) interfaceC3758tj;
                bm.getClass();
                UC uc2 = new UC();
                ((HM) bm.f232do).m852do(new AM(bm, uc2, id, c3640rj, context));
                uc.m2364break(uc2);
            } catch (Throwable th) {
                runnableC4093zM.f16898do.m2366this(th);
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("WorkForegroundRunnable");
    }

    @SuppressLint({"LambdaLast"})
    public RunnableC4093zM(Context context, TM tm, ListenableWorker listenableWorker, InterfaceC3758tj interfaceC3758tj, IG ig) {
        this.f16899do = context;
        this.f16897do = tm;
        this.f16900do = listenableWorker;
        this.f16901do = interfaceC3758tj;
        this.f16896do = ig;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public final void run() {
        if (!this.f16897do.f3656do || C0731b6.m4813if()) {
            this.f16898do.m2365goto(null);
            return;
        }
        UC uc = new UC();
        HM hm = (HM) this.f16896do;
        hm.f1344do.execute(new Cdo(uc));
        uc.addListener(new Cif(uc), hm.f1344do);
    }
}
