package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import defpackage.AbstractC0614Xq;
import defpackage.ExecutorC3611rC;
import defpackage.GM;
import defpackage.HM;
import defpackage.IG;
import defpackage.InterfaceC0231Gg;
import defpackage.LL;
import defpackage.Lx;
import defpackage.ZM;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: androidx.work.impl.background.systemalarm.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements InterfaceC0231Gg {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8182for = 0;

    /* renamed from: do, reason: not valid java name */
    public final GM f8183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IG f8184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Lx f8185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZM f8186do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f8187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Intent f8188do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f8189do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.work.impl.background.systemalarm.Cdo f8190do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f8191do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f8192do;

    /* renamed from: androidx.work.impl.background.systemalarm.new$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cnew cnew;
            RunnableC0048new runnableC0048new;
            synchronized (Cnew.this.f8192do) {
                Cnew cnew2 = Cnew.this;
                cnew2.f8188do = (Intent) cnew2.f8192do.get(0);
            }
            Intent intent = Cnew.this.f8188do;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = Cnew.this.f8188do.getIntExtra("KEY_START_ID", 0);
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                int i = Cnew.f8182for;
                String.format("Processing command %s, %s", Cnew.this.f8188do, Integer.valueOf(intExtra));
                m2869for.mo2872do(new Throwable[0]);
                PowerManager.WakeLock m1324do = LL.m1324do(Cnew.this.f8187do, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    String.format("Acquiring operation wake lock (%s) %s", action, m1324do);
                    m2869for2.mo2872do(new Throwable[0]);
                    m1324do.acquire();
                    Cnew cnew3 = Cnew.this;
                    cnew3.f8190do.m4741try(intExtra, cnew3.f8188do, cnew3);
                    AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                    String.format("Releasing operation wake lock (%s) %s", action, m1324do);
                    m2869for3.mo2872do(new Throwable[0]);
                    m1324do.release();
                    cnew = Cnew.this;
                    runnableC0048new = new RunnableC0048new(cnew);
                } catch (Throwable th) {
                    try {
                        AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
                        int i2 = Cnew.f8182for;
                        m2869for4.mo2873if(th);
                        AbstractC0614Xq m2869for5 = AbstractC0614Xq.m2869for();
                        String.format("Releasing operation wake lock (%s) %s", action, m1324do);
                        m2869for5.mo2872do(new Throwable[0]);
                        m1324do.release();
                        cnew = Cnew.this;
                        runnableC0048new = new RunnableC0048new(cnew);
                    } catch (Throwable th2) {
                        AbstractC0614Xq m2869for6 = AbstractC0614Xq.m2869for();
                        int i3 = Cnew.f8182for;
                        String.format("Releasing operation wake lock (%s) %s", action, m1324do);
                        m2869for6.mo2872do(new Throwable[0]);
                        m1324do.release();
                        Cnew cnew4 = Cnew.this;
                        cnew4.m4745case(new RunnableC0048new(cnew4));
                        throw th2;
                    }
                }
                cnew.m4745case(runnableC0048new);
            }
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.new$for, reason: invalid class name */
    public interface Cfor {
    }

    /* renamed from: androidx.work.impl.background.systemalarm.new$if, reason: invalid class name */
    public static class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Intent f8194do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cnew f8195do;

        /* renamed from: for, reason: not valid java name */
        public final int f8196for;

        public Cif(int i, Intent intent, Cnew cnew) {
            this.f8195do = cnew;
            this.f8194do = intent;
            this.f8196for = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f8195do.m4746do(this.f8196for, this.f8194do);
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.new$new, reason: invalid class name and collision with other inner class name */
    public static class RunnableC0048new implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Cnew f8197do;

        public RunnableC0048new(Cnew cnew) {
            this.f8197do = cnew;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cnew cnew = this.f8197do;
            cnew.getClass();
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = Cnew.f8182for;
            m2869for.mo2872do(new Throwable[0]);
            cnew.m4748if();
            synchronized (cnew.f8192do) {
                if (cnew.f8188do != null) {
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    String.format("Removing command %s", cnew.f8188do);
                    m2869for2.mo2872do(new Throwable[0]);
                    if (!((Intent) cnew.f8192do.remove(0)).equals(cnew.f8188do)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    cnew.f8188do = null;
                }
                ExecutorC3611rC executorC3611rC = ((HM) cnew.f8184do).f1346do;
                if (!cnew.f8190do.m4740new() && cnew.f8192do.isEmpty() && !executorC3611rC.m7940do()) {
                    AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
                    Cfor cfor = cnew.f8191do;
                    if (cfor != null) {
                        ((SystemAlarmService) cfor).m4737new();
                    }
                } else if (!cnew.f8192do.isEmpty()) {
                    cnew.m4747else();
                }
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("SystemAlarmDispatcher");
    }

    public Cnew(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8187do = applicationContext;
        this.f8190do = new androidx.work.impl.background.systemalarm.Cdo(applicationContext);
        this.f8186do = new ZM();
        GM m731try = GM.m731try(context);
        this.f8183do = m731try;
        Lx lx = m731try.f1174do;
        this.f8185do = lx;
        this.f8184do = m731try.f1173do;
        lx.m1365do(this);
        this.f8192do = new ArrayList();
        this.f8188do = null;
        this.f8189do = new Handler(Looper.getMainLooper());
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4745case(Runnable runnable) {
        this.f8189do.post(runnable);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4746do(int i, Intent intent) {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Adding command %s (%s)", intent, Integer.valueOf(i));
        m2869for.mo2872do(new Throwable[0]);
        m4748if();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC0614Xq.m2869for().mo2871case(new Throwable[0]);
            return;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && m4749new()) {
            return;
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.f8192do) {
            boolean z = !this.f8192do.isEmpty();
            this.f8192do.add(intent);
            if (!z) {
                m4747else();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4747else() {
        m4748if();
        PowerManager.WakeLock m1324do = LL.m1324do(this.f8187do, "ProcessCommand");
        try {
            m1324do.acquire();
            ((HM) this.f8183do.f1173do).m852do(new Cdo());
        } finally {
            m1324do.release();
        }
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        int i = androidx.work.impl.background.systemalarm.Cdo.f8165for;
        Intent intent = new Intent(this.f8187do, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        m4745case(new Cif(0, intent, this));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4748if() {
        if (this.f8189do.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m4749new() {
        m4748if();
        synchronized (this.f8192do) {
            Iterator it = this.f8192do.iterator();
            while (it.hasNext()) {
                if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4750try() {
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        this.f8185do.m1363case(this);
        ScheduledExecutorService scheduledExecutorService = this.f8186do.f4813do;
        if (!scheduledExecutorService.isShutdown()) {
            scheduledExecutorService.shutdownNow();
        }
        this.f8191do = null;
    }
}
