package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.firebase.messaging.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.C0148Cl;
import defpackage.C0298Jh;
import defpackage.C0315Kc;
import defpackage.C0391Nn;
import defpackage.C0428Pg;
import defpackage.C0660Zs;
import defpackage.C0706ai;
import defpackage.C2703ef;
import defpackage.C2876hb;
import defpackage.C3693sd;
import defpackage.Dz;
import defpackage.ExecutorC0697aW;
import defpackage.FG;
import defpackage.FJ;
import defpackage.InterfaceC0653Zl;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC3345mi;
import defpackage.InterfaceC3637rg;
import defpackage.InterfaceC3655ry;
import defpackage.InterfaceC3853vI;
import defpackage.LG;
import defpackage.MF;
import defpackage.RunnableC0651Zj;
import defpackage.RunnableC2852h9;
import defpackage.RunnableC3262lG;
import defpackage.TA;
import defpackage.TV;
import defpackage.VV;
import defpackage.XH;
import j$.util.Objects;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class FirebaseMessaging {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static com.google.firebase.messaging.Cdo f11889do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ScheduledThreadPoolExecutor f11890do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0148Cl f11892do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Dz f11893do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0660Zs f11894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f11895do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f11896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f11898do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3345mi f11899do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11900do;

    /* renamed from: if, reason: not valid java name */
    public final Executor f11901if;

    /* renamed from: do, reason: not valid java name */
    public static final long f11888do = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static InterfaceC3655ry<InterfaceC3853vI> f11891do = new C0428Pg(1);

    /* renamed from: com.google.firebase.messaging.FirebaseMessaging$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final MF f11902do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Boolean f11904do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11905do;

        public Cdo(MF mf) {
            this.f11902do = mf;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [ni] */
        /* renamed from: do, reason: not valid java name */
        public final synchronized void m6093do() {
            if (this.f11905do) {
                return;
            }
            Boolean m6094if = m6094if();
            this.f11904do = m6094if;
            if (m6094if == null) {
                this.f11902do.mo1402if(new InterfaceC3637rg() { // from class: ni
                    @Override // defpackage.InterfaceC3637rg
                    /* renamed from: do */
                    public final void mo4835do(C3284lg c3284lg) {
                        boolean booleanValue;
                        FirebaseMessaging.Cdo cdo = FirebaseMessaging.Cdo.this;
                        synchronized (cdo) {
                            cdo.m6093do();
                            Boolean bool = cdo.f11904do;
                            booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f11895do.m3148else();
                        }
                        if (booleanValue) {
                            Cdo cdo2 = FirebaseMessaging.f11889do;
                            FirebaseMessaging.this.m6091this();
                        }
                    }
                });
            }
            this.f11905do = true;
        }

        /* renamed from: if, reason: not valid java name */
        public final Boolean m6094if() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            C0706ai c0706ai = FirebaseMessaging.this.f11895do;
            c0706ai.m3147do();
            Context context = c0706ai.f4985do;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    public FirebaseMessaging() {
        throw null;
    }

    public FirebaseMessaging(C0706ai c0706ai, InterfaceC3345mi interfaceC3345mi, InterfaceC3655ry<FJ> interfaceC3655ry, InterfaceC3655ry<InterfaceC0653Zl> interfaceC3655ry2, InterfaceC3227ki interfaceC3227ki, InterfaceC3655ry<InterfaceC3853vI> interfaceC3655ry3, MF mf) {
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        final C0660Zs c0660Zs = new C0660Zs(context);
        final C0148Cl c0148Cl = new C0148Cl(c0706ai, c0660Zs, interfaceC3655ry, interfaceC3655ry2, interfaceC3227ki);
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Task"));
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Init"));
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("Firebase-Messaging-File-Io"));
        this.f11900do = false;
        f11891do = interfaceC3655ry3;
        this.f11895do = c0706ai;
        this.f11899do = interfaceC3345mi;
        this.f11897do = new Cdo(mf);
        c0706ai.m3147do();
        final Context context2 = c0706ai.f4985do;
        this.f11896do = context2;
        C0298Jh c0298Jh = new C0298Jh();
        this.f11894do = c0660Zs;
        this.f11892do = c0148Cl;
        this.f11893do = new Dz(newSingleThreadExecutor);
        this.f11898do = scheduledThreadPoolExecutor;
        this.f11901if = threadPoolExecutor;
        c0706ai.m3147do();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(c0298Jh);
        } else {
            Objects.toString(context);
        }
        if (interfaceC3345mi != null) {
            interfaceC3345mi.m7463do();
        }
        scheduledThreadPoolExecutor.execute(new RunnableC2852h9(this, 9));
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Topics-Io"));
        int i = XH.f4484do;
        LG.m1316for(new Callable() { // from class: WH
            @Override // java.util.concurrent.Callable
            public final Object call() {
                VH vh;
                Context context3 = context2;
                ScheduledExecutorService scheduledExecutorService = scheduledThreadPoolExecutor2;
                FirebaseMessaging firebaseMessaging = this;
                C0660Zs c0660Zs2 = c0660Zs;
                C0148Cl c0148Cl2 = c0148Cl;
                synchronized (VH.class) {
                    WeakReference<VH> weakReference = VH.f4075do;
                    vh = weakReference != null ? weakReference.get() : null;
                    if (vh == null) {
                        VH vh2 = new VH(context3.getSharedPreferences("com.google.android.gms.appid", 0), scheduledExecutorService);
                        vh2.m2554if();
                        VH.f4075do = new WeakReference<>(vh2);
                        vh = vh2;
                    }
                }
                return new XH(firebaseMessaging, c0660Zs2, vh, c0148Cl2, context3, scheduledExecutorService);
            }
        }, scheduledThreadPoolExecutor2).mo590case(scheduledThreadPoolExecutor, new C2703ef(this));
        scheduledThreadPoolExecutor.execute(new RunnableC0651Zj(this, 7));
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized com.google.firebase.messaging.Cdo m6082for(Context context) {
        com.google.firebase.messaging.Cdo cdo;
        synchronized (FirebaseMessaging.class) {
            if (f11889do == null) {
                f11889do = new com.google.firebase.messaging.Cdo(context);
            }
            cdo = f11889do;
        }
        return cdo;
    }

    @Keep
    public static synchronized FirebaseMessaging getInstance(C0706ai c0706ai) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) c0706ai.m3149if(FirebaseMessaging.class);
            Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    @SuppressLint({"ThreadPoolCreation"})
    /* renamed from: if, reason: not valid java name */
    public static void m6083if(RunnableC3262lG runnableC3262lG, long j) {
        synchronized (FirebaseMessaging.class) {
            if (f11890do == null) {
                f11890do = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
            }
            f11890do.schedule(runnableC3262lG, j, TimeUnit.SECONDS);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final synchronized void m6084break(long j) {
        m6083if(new RunnableC3262lG(this, Math.min(Math.max(30L, 2 * j), f11888do)), j);
        this.f11900do = true;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m6085case() {
        boolean booleanValue;
        Cdo cdo = this.f11897do;
        synchronized (cdo) {
            cdo.m6093do();
            Boolean bool = cdo.f11904do;
            booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f11895do.m3148else();
        }
        return booleanValue;
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m6086catch(Cdo.C0077do c0077do) {
        if (c0077do != null) {
            return (System.currentTimeMillis() > (c0077do.f11913do + Cdo.C0077do.f11912if) ? 1 : (System.currentTimeMillis() == (c0077do.f11913do + Cdo.C0077do.f11912if) ? 0 : -1)) > 0 || !this.f11894do.m3075do().equals(c0077do.f11915if);
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m6087do() {
        FG fg;
        InterfaceC3345mi interfaceC3345mi = this.f11899do;
        if (interfaceC3345mi != null) {
            try {
                return (String) LG.m1314do(interfaceC3345mi.m7464for());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        Cdo.C0077do m6090new = m6090new();
        if (!m6086catch(m6090new)) {
            return m6090new.f11914do;
        }
        String m3074for = C0660Zs.m3074for(this.f11895do);
        Dz dz = this.f11893do;
        synchronized (dz) {
            fg = (FG) dz.f711do.getOrDefault(m3074for, null);
            if (fg == null) {
                C0148Cl c0148Cl = this.f11892do;
                fg = c0148Cl.m289do(c0148Cl.m290for(new Bundle(), C0660Zs.m3074for(c0148Cl.f412do), "*")).mo600import(this.f11901if, new C3693sd(this, m3074for, m6090new)).mo589break(dz.f712do, new C2876hb(dz, m3074for));
                dz.f711do.put(m3074for, fg);
            }
        }
        try {
            return (String) LG.m1314do(fg);
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final synchronized void m6088else(boolean z) {
        this.f11900do = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6089goto() {
        /*
            r5 = this;
            android.content.Context r0 = r5.f11896do
            defpackage.C3773ty.m8354do(r0)
            boolean r1 = com.google.android.gms.common.util.PlatformVersion.isAtLeastQ()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto Le
            goto L37
        Le:
            int r1 = android.os.Binder.getCallingUid()
            android.content.pm.ApplicationInfo r4 = r0.getApplicationInfo()
            int r4 = r4.uid
            if (r1 != r4) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            if (r1 != 0) goto L23
            r0.getPackageName()
            goto L37
        L23:
            java.lang.Object r0 = defpackage.C2665e.m6501this(r0)
            android.app.NotificationManager r0 = (android.app.NotificationManager) r0
            java.lang.String r0 = defpackage.r.m7919else(r0)
            java.lang.String r1 = "com.google.android.gms"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L37
            r0 = 1
            goto L38
        L37:
            r0 = 0
        L38:
            if (r0 != 0) goto L3b
            return r3
        L3b:
            ai r0 = r5.f11895do
            java.lang.Class<A0> r1 = defpackage.A0.class
            java.lang.Object r0 = r0.m3149if(r1)
            if (r0 == 0) goto L46
            return r2
        L46:
            boolean r0 = defpackage.C0550Us.m2475do()
            if (r0 == 0) goto L51
            ry<vI> r0 = com.google.firebase.messaging.FirebaseMessaging.f11891do
            if (r0 == 0) goto L51
            goto L52
        L51:
            r2 = 0
        L52:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessaging.m6089goto():boolean");
    }

    /* renamed from: new, reason: not valid java name */
    public final Cdo.C0077do m6090new() {
        Cdo.C0077do m6099do;
        com.google.firebase.messaging.Cdo m6082for = m6082for(this.f11896do);
        C0706ai c0706ai = this.f11895do;
        c0706ai.m3147do();
        String m3150new = "[DEFAULT]".equals(c0706ai.f4986do) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : c0706ai.m3150new();
        String m3074for = C0660Zs.m3074for(this.f11895do);
        synchronized (m6082for) {
            m6099do = Cdo.C0077do.m6099do(m6082for.f11910do.getString(m3150new + "|T|" + m3074for + "|*", null));
        }
        return m6099do;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m6091this() {
        InterfaceC3345mi interfaceC3345mi = this.f11899do;
        if (interfaceC3345mi != null) {
            interfaceC3345mi.m7465if();
        } else if (m6086catch(m6090new())) {
            synchronized (this) {
                if (!this.f11900do) {
                    m6084break(0L);
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6092try() {
        FG m1319new;
        int i;
        TA ta = this.f11892do.f410do;
        int i2 = 5;
        if (ta.f3607do.m2939do() >= 241100000) {
            VV m2648do = VV.m2648do(ta.f3608do);
            Bundle bundle = Bundle.EMPTY;
            synchronized (m2648do) {
                i = m2648do.f4135do;
                m2648do.f4135do = i + 1;
            }
            m1319new = m2648do.m2649for(new TV(i, 5, bundle)).mo598goto(ExecutorC0697aW.f4962do, C0315Kc.f1833for);
        } else {
            m1319new = LG.m1319new(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        m1319new.mo590case(this.f11898do, new C0391Nn(this, i2));
    }
}
