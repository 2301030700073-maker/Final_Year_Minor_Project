package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import defpackage.RunnableC2748fN;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class Lx implements InterfaceC0231Gg, InterfaceC3699sj {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f2050for = 0;

    /* renamed from: do, reason: not valid java name */
    public final IG f2051do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2052do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.work.Cdo f2054do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WorkDatabase f2055do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<InterfaceC3846vB> f2060do;

    /* renamed from: if, reason: not valid java name */
    public final HashMap f2061if = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f2058do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f2059do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f2057do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PowerManager.WakeLock f2053do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f2056do = new Object();

    /* renamed from: Lx$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final String f2062break;

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0231Gg f2063do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceFutureC3942wq<Boolean> f2064do;

        public Cdo(InterfaceC0231Gg interfaceC0231Gg, String str, UC uc) {
            this.f2063do = interfaceC0231Gg;
            this.f2062break = str;
            this.f2064do = uc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                z = this.f2064do.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z = true;
            }
            this.f2063do.mo743for(this.f2062break, z);
        }
    }

    static {
        AbstractC0614Xq.m2870try("Processor");
    }

    public Lx(Context context, androidx.work.Cdo cdo, HM hm, WorkDatabase workDatabase, List list) {
        this.f2052do = context;
        this.f2054do = cdo;
        this.f2051do = hm;
        this.f2055do = workDatabase;
        this.f2060do = list;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m1361if(String str, RunnableC2748fN runnableC2748fN) {
        boolean z;
        if (runnableC2748fN == null) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("WorkerWrapper could not be found for %s", str);
            m2869for.mo2872do(new Throwable[0]);
            return false;
        }
        runnableC2748fN.f12925do = true;
        runnableC2748fN.m6667this();
        InterfaceFutureC3942wq<ListenableWorker.Cdo> interfaceFutureC3942wq = runnableC2748fN.f12924do;
        if (interfaceFutureC3942wq != null) {
            z = interfaceFutureC3942wq.isDone();
            runnableC2748fN.f12924do.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = runnableC2748fN.f12917do;
        if (listenableWorker == null || z) {
            String.format("WorkSpec %s is already done. Not interrupting.", runnableC2748fN.f12910do);
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            int i = RunnableC2748fN.f12906for;
            m2869for2.mo2872do(new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
        AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
        String.format("WorkerWrapper interrupted for %s", str);
        m2869for3.mo2872do(new Throwable[0]);
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m1362break(String str) {
        boolean m1361if;
        synchronized (this.f2056do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Processor stopping foreground work %s", str);
            m2869for.mo2872do(new Throwable[0]);
            m1361if = m1361if(str, (RunnableC2748fN) this.f2058do.remove(str));
        }
        return m1361if;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1363case(InterfaceC0231Gg interfaceC0231Gg) {
        synchronized (this.f2056do) {
            this.f2057do.remove(interfaceC0231Gg);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m1364catch(String str) {
        boolean m1361if;
        synchronized (this.f2056do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Processor stopping background work %s", str);
            m2869for.mo2872do(new Throwable[0]);
            m1361if = m1361if(str, (RunnableC2748fN) this.f2061if.remove(str));
        }
        return m1361if;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1365do(InterfaceC0231Gg interfaceC0231Gg) {
        synchronized (this.f2056do) {
            this.f2057do.add(interfaceC0231Gg);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1366else(String str, C3640rj c3640rj) {
        synchronized (this.f2056do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Moving WorkSpec (%s) to the foreground", str);
            m2869for.mo2874new(new Throwable[0]);
            RunnableC2748fN runnableC2748fN = (RunnableC2748fN) this.f2061if.remove(str);
            if (runnableC2748fN != null) {
                if (this.f2053do == null) {
                    PowerManager.WakeLock m1324do = LL.m1324do(this.f2052do, "ProcessorForegroundLck");
                    this.f2053do = m1324do;
                    m1324do.acquire();
                }
                this.f2058do.put(str, runnableC2748fN);
                C0466Ra.startForegroundService(this.f2052do, androidx.work.impl.foreground.Cdo.m4754try(this.f2052do, str, c3640rj));
            }
        }
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        synchronized (this.f2056do) {
            this.f2061if.remove(str);
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("%s %s executed; reschedule = %s", Lx.class.getSimpleName(), str, Boolean.valueOf(z));
            m2869for.mo2872do(new Throwable[0]);
            Iterator it = this.f2057do.iterator();
            while (it.hasNext()) {
                ((InterfaceC0231Gg) it.next()).mo743for(str, z);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m1367goto(String str, WorkerParameters.Cdo cdo) {
        synchronized (this.f2056do) {
            if (m1370try(str)) {
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                String.format("Work %s is already enqueued for processing", str);
                m2869for.mo2872do(new Throwable[0]);
                return false;
            }
            RunnableC2748fN.Cdo cdo2 = new RunnableC2748fN.Cdo(this.f2052do, this.f2054do, this.f2051do, this, this.f2055do, str);
            cdo2.f12932do = this.f2060do;
            if (cdo != null) {
                cdo2.f12928do = cdo;
            }
            RunnableC2748fN runnableC2748fN = new RunnableC2748fN(cdo2);
            UC<Boolean> uc = runnableC2748fN.f12911do;
            uc.addListener(new Cdo(this, str, uc), ((HM) this.f2051do).f1344do);
            this.f2061if.put(str, runnableC2748fN);
            ((HM) this.f2051do).f1346do.execute(runnableC2748fN);
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            String.format("%s: processing %s", Lx.class.getSimpleName(), str);
            m2869for2.mo2872do(new Throwable[0]);
            return true;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m1368new(String str) {
        boolean contains;
        synchronized (this.f2056do) {
            contains = this.f2059do.contains(str);
        }
        return contains;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m1369this() {
        synchronized (this.f2056do) {
            if (!(!this.f2058do.isEmpty())) {
                Context context = this.f2052do;
                int i = androidx.work.impl.foreground.Cdo.f8213for;
                Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                intent.setAction("ACTION_STOP_FOREGROUND");
                try {
                    this.f2052do.startService(intent);
                } catch (Throwable th) {
                    AbstractC0614Xq.m2869for().mo2873if(th);
                }
                PowerManager.WakeLock wakeLock = this.f2053do;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f2053do = null;
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m1370try(String str) {
        boolean z;
        synchronized (this.f2056do) {
            z = this.f2061if.containsKey(str) || this.f2058do.containsKey(str);
        }
        return z;
    }
}
