package com.google.firebase.perf.metrics;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.Keep;
import androidx.lifecycle.Cbreak;
import androidx.lifecycle.Cthis;
import androidx.lifecycle.Ctry;
import com.facebook.internal.security.CertificateUtil;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import defpackage.AI;
import defpackage.AbstractC0680aF;
import defpackage.C0706ai;
import defpackage.C2684eI;
import defpackage.Cpublic;
import defpackage.FE;
import defpackage.InterfaceC2655dq;
import defpackage.L9;
import defpackage.LH;
import defpackage.Q0;
import defpackage.QJ;
import defpackage.RunnableC2617d9;
import defpackage.RunnableC3667s9;
import defpackage.ViewOnAttachStateChangeListenerC0408Oi;
import defpackage.ViewTreeObserverOnDrawListenerC0430Pi;
import defpackage.ViewTreeObserverOnPreDrawListenerC2955ix;
import defpackage.Y1;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks, InterfaceC2655dq {

    /* renamed from: catch, reason: not valid java name */
    public static final Timer f11925catch = new Timer();

    /* renamed from: do, reason: not valid java name */
    public static final long f11926do = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile AppStartTrace f11927do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ExecutorService f11928do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AI f11931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final L9 f11932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f11933do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f11934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PerfSession f11936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f11937do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2684eI.Cdo f11938do;

    /* renamed from: if, reason: not valid java name */
    public final Timer f11945if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11939do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11946if = false;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Timer f11942for = null;

    /* renamed from: new, reason: not valid java name */
    public Timer f11947new = null;

    /* renamed from: try, reason: not valid java name */
    public Timer f11950try = null;

    /* renamed from: case, reason: not valid java name */
    public Timer f11930case = null;

    /* renamed from: else, reason: not valid java name */
    public Timer f11940else = null;

    /* renamed from: goto, reason: not valid java name */
    public Timer f11944goto = null;

    /* renamed from: this, reason: not valid java name */
    public Timer f11949this = null;

    /* renamed from: break, reason: not valid java name */
    public Timer f11929break = null;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f11943for = false;

    /* renamed from: for, reason: not valid java name */
    public int f11941for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11935do = new Cdo();

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f11948new = false;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$do, reason: invalid class name */
    public final class Cdo implements ViewTreeObserver.OnDrawListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            AppStartTrace.this.f11941for++;
        }
    }

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$if, reason: invalid class name */
    public static class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final AppStartTrace f11952do;

        public Cif(AppStartTrace appStartTrace) {
            this.f11952do = appStartTrace;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppStartTrace appStartTrace = this.f11952do;
            if (appStartTrace.f11942for == null) {
                appStartTrace.f11943for = true;
            }
        }
    }

    public AppStartTrace(AI ai, QJ qj, L9 l9, ThreadPoolExecutor threadPoolExecutor) {
        Timer timer;
        long startElapsedRealtime;
        Timer timer2 = null;
        this.f11931do = ai;
        this.f11933do = qj;
        this.f11932do = l9;
        f11928do = threadPoolExecutor;
        C2684eI.Cdo l = C2684eI.l();
        l.m6556static("_experiment_app_start_ttid");
        this.f11938do = l;
        if (Build.VERSION.SDK_INT >= 24) {
            startElapsedRealtime = Process.getStartElapsedRealtime();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long micros = timeUnit.toMicros(startElapsedRealtime);
            timer = new Timer((micros - TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos())) + timeUnit.toMicros(System.currentTimeMillis()), micros);
        } else {
            timer = null;
        }
        this.f11937do = timer;
        AbstractC0680aF abstractC0680aF = (AbstractC0680aF) C0706ai.m3146for().m3149if(AbstractC0680aF.class);
        if (abstractC0680aF != null) {
            long mo3109do = abstractC0680aF.mo3109do();
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            long micros2 = timeUnit2.toMicros(mo3109do);
            timer2 = new Timer((micros2 - TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos())) + timeUnit2.toMicros(System.currentTimeMillis()), micros2);
        }
        this.f11945if = timer2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m6107goto(Context context) {
        PowerManager powerManager;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        String m7816case = Cpublic.m7816case(packageName, CertificateUtil.DELIMITER);
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && (runningAppProcessInfo.processName.equals(packageName) || runningAppProcessInfo.processName.startsWith(m7816case))) {
                if ((Build.VERSION.SDK_INT >= 23 || (powerManager = (PowerManager) context.getSystemService("power")) == null) ? true : powerManager.isInteractive()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public static AppStartTrace m6108new() {
        if (f11927do != null) {
            return f11927do;
        }
        AI ai = AI.f54do;
        QJ qj = new QJ(17);
        if (f11927do == null) {
            synchronized (AppStartTrace.class) {
                if (f11927do == null) {
                    f11927do = new AppStartTrace(ai, qj, L9.m1286try(), new ThreadPoolExecutor(0, 1, f11926do + 10, TimeUnit.SECONDS, new LinkedBlockingQueue()));
                }
            }
        }
        return f11927do;
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m6109catch(C2684eI.Cdo cdo) {
        if (this.f11944goto == null || this.f11949this == null || this.f11929break == null) {
            return;
        }
        f11928do.execute(new RunnableC3667s9(3, this, cdo));
        m6111const();
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m6110class(Context context) {
        boolean z;
        if (this.f11939do) {
            return;
        }
        Cbreak.f7089do.f7092do.mo4259do(this);
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            if (!this.f11948new && !m6107goto(applicationContext)) {
                z = false;
                this.f11948new = z;
                this.f11939do = true;
                this.f11934do = applicationContext;
            }
            z = true;
            this.f11948new = z;
            this.f11939do = true;
            this.f11934do = applicationContext;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final synchronized void m6111const() {
        if (this.f11939do) {
            Cbreak.f7089do.f7092do.mo4261for(this);
            ((Application) this.f11934do).unregisterActivityLifecycleCallbacks(this);
            this.f11939do = false;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Timer m6112for() {
        Timer timer = this.f11945if;
        return timer != null ? timer : f11925catch;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000a, B:10:0x000f, B:14:0x001b, B:16:0x0042), top: B:2:0x0001 }] */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void onActivityCreated(android.app.Activity r5, android.os.Bundle r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r6 = r4.f11943for     // Catch: java.lang.Throwable -> L48
            if (r6 != 0) goto L46
            com.google.firebase.perf.util.Timer r6 = r4.f11942for     // Catch: java.lang.Throwable -> L48
            if (r6 == 0) goto La
            goto L46
        La:
            boolean r6 = r4.f11948new     // Catch: java.lang.Throwable -> L48
            r0 = 1
            if (r6 != 0) goto L1a
            android.content.Context r6 = r4.f11934do     // Catch: java.lang.Throwable -> L48
            boolean r6 = m6107goto(r6)     // Catch: java.lang.Throwable -> L48
            if (r6 == 0) goto L18
            goto L1a
        L18:
            r6 = 0
            goto L1b
        L1a:
            r6 = 1
        L1b:
            r4.f11948new = r6     // Catch: java.lang.Throwable -> L48
            java.lang.ref.WeakReference r6 = new java.lang.ref.WeakReference     // Catch: java.lang.Throwable -> L48
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L48
            QJ r5 = r4.f11933do     // Catch: java.lang.Throwable -> L48
            r5.getClass()     // Catch: java.lang.Throwable -> L48
            com.google.firebase.perf.util.Timer r5 = new com.google.firebase.perf.util.Timer     // Catch: java.lang.Throwable -> L48
            r5.<init>()     // Catch: java.lang.Throwable -> L48
            r4.f11942for = r5     // Catch: java.lang.Throwable -> L48
            com.google.firebase.perf.util.Timer r5 = r4.m6113try()     // Catch: java.lang.Throwable -> L48
            com.google.firebase.perf.util.Timer r6 = r4.f11942for     // Catch: java.lang.Throwable -> L48
            r5.getClass()     // Catch: java.lang.Throwable -> L48
            long r1 = r6.f11972if     // Catch: java.lang.Throwable -> L48
            long r5 = r5.f11972if     // Catch: java.lang.Throwable -> L48
            long r1 = r1 - r5
            long r5 = com.google.firebase.perf.metrics.AppStartTrace.f11926do     // Catch: java.lang.Throwable -> L48
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 <= 0) goto L44
            r4.f11946if = r0     // Catch: java.lang.Throwable -> L48
        L44:
            monitor-exit(r4)
            return
        L46:
            monitor-exit(r4)
            return
        L48:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.metrics.AppStartTrace.onActivityCreated(android.app.Activity, android.os.Bundle):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (this.f11943for || this.f11946if || !this.f11932do.m1288case()) {
            return;
        }
        activity.findViewById(R.id.content).getViewTreeObserver().removeOnDrawListener(this.f11935do);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityResumed(Activity activity) {
        if (!this.f11943for && !this.f11946if) {
            boolean m1288case = this.f11932do.m1288case();
            if (m1288case) {
                View findViewById = activity.findViewById(R.id.content);
                findViewById.getViewTreeObserver().addOnDrawListener(this.f11935do);
                ViewTreeObserverOnDrawListenerC0430Pi viewTreeObserverOnDrawListenerC0430Pi = new ViewTreeObserverOnDrawListenerC0430Pi(findViewById, new LH(this, 2));
                if (Build.VERSION.SDK_INT < 26) {
                    if (!(findViewById.getViewTreeObserver().isAlive() && findViewById.isAttachedToWindow())) {
                        findViewById.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0408Oi(viewTreeObserverOnDrawListenerC0430Pi));
                        findViewById.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC2955ix(findViewById, new Y1(this, 7), new RunnableC2617d9(this, 3)));
                    }
                }
                findViewById.getViewTreeObserver().addOnDrawListener(viewTreeObserverOnDrawListenerC0430Pi);
                findViewById.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC2955ix(findViewById, new Y1(this, 7), new RunnableC2617d9(this, 3)));
            }
            if (this.f11950try != null) {
                return;
            }
            new WeakReference(activity);
            this.f11933do.getClass();
            this.f11950try = new Timer();
            this.f11936do = SessionManager.getInstance().perfSession();
            Q0 m1818new = Q0.m1818new();
            activity.getClass();
            Timer m6112for = m6112for();
            Timer timer = this.f11950try;
            m6112for.getClass();
            long j = timer.f11972if;
            m1818new.m1820do();
            f11928do.execute(new FE(this, 4));
            if (!m1288case) {
                m6111const();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityStarted(Activity activity) {
        if (!this.f11943for && this.f11947new == null && !this.f11946if) {
            this.f11933do.getClass();
            this.f11947new = new Timer();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Cthis(Ctry.Cdo.ON_STOP)
    @Keep
    public void onAppEnteredBackground() {
        if (this.f11943for || this.f11946if || this.f11940else != null) {
            return;
        }
        this.f11933do.getClass();
        this.f11940else = new Timer();
        C2684eI.Cdo l = C2684eI.l();
        l.m6556static("_experiment_firstBackgrounding");
        l.m6554public(m6113try().f11971do);
        Timer m6113try = m6113try();
        Timer timer = this.f11940else;
        m6113try.getClass();
        l.m6555return(timer.f11972if - m6113try.f11972if);
        this.f11938do.m6552import(l.m6305const());
    }

    @Cthis(Ctry.Cdo.ON_START)
    @Keep
    public void onAppEnteredForeground() {
        if (this.f11943for || this.f11946if || this.f11930case != null) {
            return;
        }
        this.f11933do.getClass();
        this.f11930case = new Timer();
        C2684eI.Cdo l = C2684eI.l();
        l.m6556static("_experiment_firstForegrounding");
        l.m6554public(m6113try().f11971do);
        Timer m6113try = m6113try();
        Timer timer = this.f11930case;
        m6113try.getClass();
        l.m6555return(timer.f11972if - m6113try.f11972if);
        this.f11938do.m6552import(l.m6305const());
    }

    /* renamed from: try, reason: not valid java name */
    public final Timer m6113try() {
        Timer timer = this.f11937do;
        return timer != null ? timer : m6112for();
    }
}
