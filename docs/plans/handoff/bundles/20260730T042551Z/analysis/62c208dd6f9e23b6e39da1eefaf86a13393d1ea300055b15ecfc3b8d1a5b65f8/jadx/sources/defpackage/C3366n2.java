package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.Csuper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: n2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3366n2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f14416do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile C3366n2 f14417do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AI f14418do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final L9 f14419do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f14420do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Timer f14421do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f14422do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f14423do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakHashMap<Activity, Boolean> f14424do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f14425do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EnumC3601r2 f14426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14427do;

    /* renamed from: for, reason: not valid java name */
    public final WeakHashMap<Activity, C0278Ij> f14428for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f14429for;

    /* renamed from: if, reason: not valid java name */
    public Timer f14430if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashSet f14431if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final WeakHashMap<Activity, C0497Sj> f14432if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14433if;

    /* renamed from: new, reason: not valid java name */
    public final WeakHashMap<Activity, Trace> f14434new;

    /* renamed from: n2$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void mo7539do();
    }

    /* renamed from: n2$if, reason: invalid class name */
    public interface Cif {
        void onUpdateAppState(EnumC3601r2 enumC3601r2);
    }

    public C3366n2(AI ai, QJ qj) {
        L9 m1286try = L9.m1286try();
        Q0 q0 = C0497Sj.f3544do;
        this.f14424do = new WeakHashMap<>();
        this.f14432if = new WeakHashMap<>();
        this.f14428for = new WeakHashMap<>();
        this.f14434new = new WeakHashMap<>();
        this.f14422do = new HashMap();
        this.f14423do = new HashSet();
        this.f14431if = new HashSet();
        this.f14425do = new AtomicInteger(0);
        this.f14426do = EnumC3601r2.BACKGROUND;
        this.f14433if = false;
        this.f14429for = true;
        this.f14418do = ai;
        this.f14420do = qj;
        this.f14419do = m1286try;
        this.f14427do = true;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3366n2 m7530do() {
        if (f14417do == null) {
            synchronized (C3366n2.class) {
                if (f14417do == null) {
                    f14417do = new C3366n2(AI.f54do, new QJ(17));
                }
            }
        }
        return f14417do;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m7531case(Activity activity) {
        C2779fw<C0475Rj> c2779fw;
        WeakHashMap<Activity, Trace> weakHashMap = this.f14434new;
        Trace trace = weakHashMap.get(activity);
        if (trace == null) {
            return;
        }
        weakHashMap.remove(activity);
        C0497Sj c0497Sj = this.f14432if.get(activity);
        C0453Qj c0453Qj = c0497Sj.f3545do;
        boolean z = c0497Sj.f3548do;
        Q0 q0 = C0497Sj.f3544do;
        if (z) {
            Map<Fragment, C0475Rj> map = c0497Sj.f3547do;
            if (!map.isEmpty()) {
                q0.m1820do();
                map.clear();
            }
            C2779fw<C0475Rj> m2185do = c0497Sj.m2185do();
            try {
                c0453Qj.f3032do.mo1988for(c0497Sj.f3546do);
            } catch (IllegalArgumentException | NullPointerException e) {
                if ((e instanceof NullPointerException) && Build.VERSION.SDK_INT > 28) {
                    throw e;
                }
                q0.m1821else("View not hardware accelerated. Unable to collect FrameMetrics. %s", e.toString());
                m2185do = new C2779fw<>();
            }
            c0453Qj.f3032do.mo1990new();
            c0497Sj.f3548do = false;
            c2779fw = m2185do;
        } else {
            q0.m1820do();
            c2779fw = new C2779fw<>();
        }
        if (!c2779fw.m6695if()) {
            f14416do.m1821else("Failed to record frame data for %s.", activity.getClass().getSimpleName());
        } else {
            LB.m1304do(trace, c2779fw.m6694do());
            trace.stop();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7532else(String str, Timer timer, Timer timer2) {
        if (this.f14419do.m1299return()) {
            C2684eI.Cdo l = C2684eI.l();
            l.m6556static(str);
            l.m6554public(timer.f11971do);
            l.m6555return(timer2.f11972if - timer.f11972if);
            Hw m6119do = SessionManager.getInstance().perfSession().m6119do();
            l.m6307super();
            C2684eI.m6544implements((C2684eI) l.f12107if, m6119do);
            int andSet = this.f14425do.getAndSet(0);
            synchronized (this.f14422do) {
                HashMap hashMap = this.f14422do;
                l.m6307super();
                C2684eI.m6551volatile((C2684eI) l.f12107if).putAll(hashMap);
                if (andSet != 0) {
                    l.m6553native(andSet, "_tsns");
                }
                this.f14422do.clear();
            }
            this.f14418do.m66for(l.m6305const(), EnumC3601r2.FOREGROUND_BACKGROUND);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7533for(C3934wi c3934wi) {
        synchronized (this.f14431if) {
            this.f14431if.add(c3934wi);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7534goto(Activity activity) {
        if (this.f14427do && this.f14419do.m1299return()) {
            C0497Sj c0497Sj = new C0497Sj(activity);
            this.f14432if.put(activity, c0497Sj);
            if (activity instanceof FragmentActivity) {
                C0278Ij c0278Ij = new C0278Ij(this.f14420do, this.f14418do, this, c0497Sj);
                this.f14428for.put(activity, c0278Ij);
                ((FragmentManager) ((FragmentActivity) activity).m4113class()).f6869do.f7037do.add(new Csuper.Cdo(c0278Ij));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7535if(String str) {
        synchronized (this.f14422do) {
            Long l = (Long) this.f14422do.get(str);
            if (l == null) {
                this.f14422do.put(str, 1L);
            } else {
                this.f14422do.put(str, Long.valueOf(l.longValue() + 1));
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7536new(WeakReference<Cif> weakReference) {
        synchronized (this.f14423do) {
            this.f14423do.add(weakReference);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m7534goto(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f14432if.remove(activity);
        if (this.f14428for.containsKey(activity)) {
            C0212Fj m4113class = ((FragmentActivity) activity).m4113class();
            C0278Ij remove = this.f14428for.remove(activity);
            Csuper csuper = ((FragmentManager) m4113class).f6869do;
            synchronized (csuper.f7037do) {
                int size = csuper.f7037do.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    if (csuper.f7037do.get(i).f7038do == remove) {
                        csuper.f7037do.remove(i);
                        break;
                    }
                    i++;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityResumed(Activity activity) {
        if (this.f14424do.isEmpty()) {
            this.f14420do.getClass();
            this.f14421do = new Timer();
            this.f14424do.put(activity, Boolean.TRUE);
            if (this.f14429for) {
                m7537this(EnumC3601r2.FOREGROUND);
                m7538try();
                this.f14429for = false;
            } else {
                m7532else("_bs", this.f14430if, this.f14421do);
                m7537this(EnumC3601r2.FOREGROUND);
            }
        } else {
            this.f14424do.put(activity, Boolean.TRUE);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityStarted(Activity activity) {
        if (this.f14427do && this.f14419do.m1299return()) {
            if (!this.f14432if.containsKey(activity)) {
                m7534goto(activity);
            }
            C0497Sj c0497Sj = this.f14432if.get(activity);
            boolean z = c0497Sj.f3548do;
            Activity activity2 = c0497Sj.f3546do;
            if (z) {
                C0497Sj.f3544do.m1823if("FrameMetricsAggregator is already recording %s", activity2.getClass().getSimpleName());
            } else {
                c0497Sj.f3545do.f3032do.mo1987do(activity2);
                c0497Sj.f3548do = true;
            }
            Trace trace = new Trace("_st_".concat(activity.getClass().getSimpleName()), this.f14418do, this.f14420do, this);
            trace.start();
            this.f14434new.put(activity, trace);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityStopped(Activity activity) {
        if (this.f14427do) {
            m7531case(activity);
        }
        if (this.f14424do.containsKey(activity)) {
            this.f14424do.remove(activity);
            if (this.f14424do.isEmpty()) {
                this.f14420do.getClass();
                Timer timer = new Timer();
                this.f14430if = timer;
                m7532else("_fs", this.f14421do, timer);
                m7537this(EnumC3601r2.BACKGROUND);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m7537this(EnumC3601r2 enumC3601r2) {
        this.f14426do = enumC3601r2;
        synchronized (this.f14423do) {
            Iterator it = this.f14423do.iterator();
            while (it.hasNext()) {
                Cif cif = (Cif) ((WeakReference) it.next()).get();
                if (cif != null) {
                    cif.onUpdateAppState(this.f14426do);
                } else {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m7538try() {
        synchronized (this.f14431if) {
            Iterator it = this.f14431if.iterator();
            while (it.hasNext()) {
                Cdo cdo = (Cdo) it.next();
                if (cdo != null) {
                    cdo.mo7539do();
                }
            }
        }
    }
}
