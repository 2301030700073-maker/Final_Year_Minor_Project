package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.measurement.zzdw;
import com.google.android.gms.internal.measurement.zzhj;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class TS implements InterfaceC3511pT {

    /* renamed from: do, reason: not valid java name */
    public static volatile TS f3679do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f3680do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f3681do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LU f3682do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QS f3683do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SP f3684do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZO f3685do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZT f3686do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0691aQ f3687do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0753bS f3689do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0812cS f3690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0820cd f3691do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f3692do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2636dS f3693do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2638dU f3694do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3156jS f3695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f3696do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3697do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3217kU f3699do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3395nV f3700do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4040yS f3701do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4041yT f3702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3703do;

    /* renamed from: for, reason: not valid java name */
    public final Boolean f3704for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f3705for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public volatile boolean f3706for;

    /* renamed from: if, reason: not valid java name */
    public int f3707if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f3708if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public volatile Boolean f3709if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f3710if;

    /* renamed from: new, reason: not valid java name */
    public final Boolean f3712new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final String f3713new;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f3711if = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f3698do = new AtomicInteger(0);

    public TS(C3923wT c3923wT) {
        Bundle bundle;
        int i = 0;
        Preconditions.checkNotNull(c3923wT);
        Context context = c3923wT.f16350do;
        C0820cd c0820cd = new C0820cd();
        this.f3691do = c0820cd;
        C3850vF.f16041do = c0820cd;
        this.f3688do = context;
        this.f3697do = c3923wT.f16354do;
        this.f3710if = c3923wT.f16357if;
        this.f3705for = c3923wT.f16356for;
        this.f3703do = c3923wT.f16355do;
        this.f3709if = c3923wT.f16352do;
        this.f3713new = c3923wT.f16358new;
        this.f3706for = true;
        zzdw zzdwVar = c3923wT.f16351do;
        if (zzdwVar != null && (bundle = zzdwVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f3704for = (Boolean) obj;
            }
            Object obj2 = zzdwVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f3712new = (Boolean) obj2;
            }
        }
        zzhj.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.f3692do = defaultClock;
        Long l = c3923wT.f16353do;
        this.f3708if = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        this.f3685do = new ZO(this);
        C4040yS c4040yS = new C4040yS(this);
        c4040yS.m7887const();
        this.f3701do = c4040yS;
        C3156jS c3156jS = new C3156jS(this);
        c3156jS.m7887const();
        this.f3695do = c3156jS;
        C3395nV c3395nV = new C3395nV(this);
        c3395nV.m7887const();
        this.f3700do = c3395nV;
        this.f3693do = new C2636dS(new C0174Dp(this));
        this.f3687do = new C0691aQ(this);
        C2638dU c2638dU = new C2638dU(this);
        c2638dU.m8475native();
        this.f3694do = c2638dU;
        C4041yT c4041yT = new C4041yT(this);
        c4041yT.m8475native();
        this.f3702do = c4041yT;
        LU lu = new LU(this);
        lu.m8475native();
        this.f3682do = lu;
        ZT zt = new ZT(this);
        zt.m7887const();
        this.f3686do = zt;
        QS qs = new QS(this);
        qs.m7887const();
        this.f3683do = qs;
        zzdw zzdwVar2 = c3923wT.f16351do;
        boolean z = true ^ ((zzdwVar2 == null || zzdwVar2.zzb == 0) ? false : true);
        if (context.getApplicationContext() instanceof Application) {
            m2244else(c4041yT);
            if (c4041yT.mo2255for().getApplicationContext() instanceof Application) {
                Application application = (Application) c4041yT.mo2255for().getApplicationContext();
                if (c4041yT.f16773do == null) {
                    c4041yT.f16773do = new TT(c4041yT);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(c4041yT.f16773do);
                    application.registerActivityLifecycleCallbacks(c4041yT.f16773do);
                    c4041yT.mo2249case().f13723this.m7369if("Registered activity lifecycle callback");
                }
            }
        } else {
            m2247this(c3156jS);
            c3156jS.f13722new.m7369if("Application context is not an Application");
        }
        qs.m1964public(new ZS(i, this, c3923wT));
    }

    /* renamed from: else, reason: not valid java name */
    public static void m2244else(AbstractC3863vS abstractC3863vS) {
        if (abstractC3863vS == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC3863vS.f16089do) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC3863vS.getClass())));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m2245goto(AbstractC3570qT abstractC3570qT) {
        if (abstractC3570qT == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static TS m2246if(Context context, zzdw zzdwVar, Long l) {
        Bundle bundle;
        if (zzdwVar != null && (zzdwVar.zze == null || zzdwVar.zzf == null)) {
            zzdwVar = new zzdw(zzdwVar.zza, zzdwVar.zzb, zzdwVar.zzc, zzdwVar.zzd, null, null, zzdwVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f3679do == null) {
            synchronized (TS.class) {
                if (f3679do == null) {
                    f3679do = new TS(new C3923wT(context, zzdwVar, l));
                }
            }
        } else if (zzdwVar != null && (bundle = zzdwVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(f3679do);
            f3679do.f3709if = Boolean.valueOf(zzdwVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(f3679do);
        return f3679do;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m2247this(AbstractC3570qT abstractC3570qT) {
        if (abstractC3570qT == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC3570qT.f15118do) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC3570qT.getClass())));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m2248break() {
        return m2251class() == 0;
    }

    @Override // defpackage.InterfaceC3511pT
    /* renamed from: case, reason: not valid java name */
    public final C3156jS mo2249case() {
        C3156jS c3156jS = this.f3695do;
        m2247this(c3156jS);
        return c3156jS;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
    
        if (android.text.TextUtils.isEmpty(r0.f8536case) == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2250catch() {
        /*
            r7 = this;
            boolean r0 = r7.f3711if
            if (r0 == 0) goto Lb1
            QS r0 = r7.f3683do
            m2247this(r0)
            r0.mo1960catch()
            java.lang.Boolean r0 = r7.f3696do
            com.google.android.gms.common.util.Clock r1 = r7.f3692do
            if (r0 == 0) goto L31
            long r2 = r7.f3681do
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L31
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto Laa
            long r2 = r1.elapsedRealtime()
            long r4 = r7.f3681do
            long r2 = r2 - r4
            long r2 = java.lang.Math.abs(r2)
            r4 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto Laa
        L31:
            long r0 = r1.elapsedRealtime()
            r7.f3681do = r0
            nV r0 = r7.f3700do
            m2245goto(r0)
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r1 = r0.A(r1)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L70
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r1 = r0.A(r1)
            if (r1 == 0) goto L70
            android.content.Context r1 = r7.f3688do
            com.google.android.gms.common.wrappers.PackageManagerWrapper r4 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r1)
            boolean r4 = r4.isCallerInstantApp()
            if (r4 != 0) goto L6e
            ZO r4 = r7.f3685do
            boolean r4 = r4.m3005private()
            if (r4 != 0) goto L6e
            boolean r4 = defpackage.C3395nV.e(r1)
            if (r4 == 0) goto L70
            boolean r1 = defpackage.C3395nV.o(r1)
            if (r1 == 0) goto L70
        L6e:
            r1 = 1
            goto L71
        L70:
            r1 = 0
        L71:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r7.f3696do = r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto Laa
            cS r1 = r7.m2258super()
            java.lang.String r1 = r1.m4908static()
            cS r4 = r7.m2258super()
            r4.m8474import()
            java.lang.String r4 = r4.f8536case
            boolean r0 = r0.h(r1, r4)
            if (r0 != 0) goto La3
            cS r0 = r7.m2258super()
            r0.m8474import()
            java.lang.String r0 = r0.f8536case
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto La4
        La3:
            r2 = 1
        La4:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            r7.f3696do = r0
        Laa:
            java.lang.Boolean r0 = r7.f3696do
            boolean r0 = r0.booleanValue()
            return r0
        Lb1:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "AppMeasurement is not initialized"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.TS.m2250catch():boolean");
    }

    /* renamed from: class, reason: not valid java name */
    public final int m2251class() {
        QS qs = this.f3683do;
        m2247this(qs);
        qs.mo1960catch();
        if (this.f3685do.m3004package()) {
            return 1;
        }
        Boolean bool = this.f3712new;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        QS qs2 = this.f3683do;
        m2247this(qs2);
        qs2.mo1960catch();
        if (!this.f3706for) {
            return 8;
        }
        C4040yS c4040yS = this.f3701do;
        m2245goto(c4040yS);
        Boolean m8719extends = c4040yS.m8719extends();
        if (m8719extends != null) {
            return m8719extends.booleanValue() ? 0 : 3;
        }
        Boolean m3008static = this.f3685do.m3008static("firebase_analytics_collection_enabled");
        if (m3008static != null) {
            return m3008static.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f3704for;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.f3709if == null || this.f3709if.booleanValue()) ? 0 : 7;
    }

    /* renamed from: const, reason: not valid java name */
    public final C0691aQ m2252const() {
        C0691aQ c0691aQ = this.f3687do;
        if (c0691aQ != null) {
            return c0691aQ;
        }
        throw new IllegalStateException("Component not created");
    }

    @Override // defpackage.InterfaceC3511pT
    /* renamed from: do, reason: not valid java name */
    public final QS mo2253do() {
        QS qs = this.f3683do;
        m2247this(qs);
        return qs;
    }

    /* renamed from: final, reason: not valid java name */
    public final SP m2254final() {
        m2247this(this.f3684do);
        return this.f3684do;
    }

    @Override // defpackage.InterfaceC3511pT
    /* renamed from: for, reason: not valid java name */
    public final Context mo2255for() {
        return this.f3688do;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m2256import() {
        m2245goto(this.f3700do);
    }

    @Override // defpackage.InterfaceC3511pT
    /* renamed from: new, reason: not valid java name */
    public final Clock mo2257new() {
        return this.f3692do;
    }

    /* renamed from: super, reason: not valid java name */
    public final C0812cS m2258super() {
        m2244else(this.f3690do);
        return this.f3690do;
    }

    /* renamed from: throw, reason: not valid java name */
    public final C2636dS m2259throw() {
        return this.f3693do;
    }

    @Override // defpackage.InterfaceC3511pT
    /* renamed from: try, reason: not valid java name */
    public final C0820cd mo2260try() {
        return this.f3691do;
    }

    /* renamed from: while, reason: not valid java name */
    public final C3217kU m2261while() {
        m2244else(this.f3699do);
        return this.f3699do;
    }
}
