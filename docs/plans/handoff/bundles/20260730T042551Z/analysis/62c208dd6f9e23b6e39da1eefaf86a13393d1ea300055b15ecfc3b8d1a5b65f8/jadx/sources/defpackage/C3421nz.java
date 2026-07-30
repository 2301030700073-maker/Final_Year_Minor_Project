package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

@KeepForSdk
/* renamed from: nz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3421nz implements InterfaceC0211Fi {

    /* renamed from: do, reason: not valid java name */
    public static final Clock f14640do = DefaultClock.getInstance();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Random f14641do = new Random();

    /* renamed from: for, reason: not valid java name */
    public static final HashMap f14642for = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0605Xh f14643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f14644do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f14645do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14646do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f14647do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f14648do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f14649do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<A0> f14650do;

    /* renamed from: if, reason: not valid java name */
    public final HashMap f14651if;

    /* renamed from: nz$do, reason: invalid class name */
    public static class Cdo implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public static final AtomicReference<Cdo> f14652do = new AtomicReference<>();

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void onBackgroundStateChanged(boolean z) {
            Clock clock = C3421nz.f14640do;
            synchronized (C3421nz.class) {
                Iterator it = C3421nz.f14642for.values().iterator();
                while (it.hasNext()) {
                    ((C0101Ai) it.next()).m93new(z);
                }
            }
        }
    }

    public C3421nz() {
        throw null;
    }

    public C3421nz(Context context, @InterfaceC4017y5 ScheduledExecutorService scheduledExecutorService, C0706ai c0706ai, InterfaceC3227ki interfaceC3227ki, C0605Xh c0605Xh, InterfaceC3655ry<A0> interfaceC3655ry) {
        boolean z;
        this.f14647do = new HashMap();
        this.f14651if = new HashMap();
        this.f14645do = context;
        this.f14648do = scheduledExecutorService;
        this.f14644do = c0706ai;
        this.f14649do = interfaceC3227ki;
        this.f14643do = c0605Xh;
        this.f14650do = interfaceC3655ry;
        c0706ai.m3147do();
        this.f14646do = c0706ai.f4989do.f14828if;
        AtomicReference<Cdo> atomicReference = Cdo.f14652do;
        Application application = (Application) context.getApplicationContext();
        AtomicReference<Cdo> atomicReference2 = Cdo.f14652do;
        if (atomicReference2.get() == null) {
            Cdo cdo = new Cdo();
            while (true) {
                if (atomicReference2.compareAndSet(null, cdo)) {
                    z = true;
                    break;
                } else if (atomicReference2.get() != null) {
                    z = false;
                    break;
                }
            }
            if (z) {
                BackgroundDetector.initialize(application);
                BackgroundDetector.getInstance().addListener(cdo);
            }
        }
        LG.m1316for(new Callable() { // from class: mz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C3421nz.this.m7627for("firebase");
            }
        }, scheduledExecutorService);
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized I9 m7626case(C0706ai c0706ai, InterfaceC3227ki interfaceC3227ki, Cif cif, D9 d9, Context context, String str, Cfor cfor) {
        return new I9(c0706ai, interfaceC3227ki, cif, d9, context, str, cfor, this.f14648do);
    }

    @Override // defpackage.InterfaceC0211Fi
    /* renamed from: do */
    public final void mo630do(C0511Tb c0511Tb) {
        C3845vA c3845vA = m7627for("firebase").f132do;
        c3845vA.f16026do.add(c0511Tb);
        FG<E9> m354if = c3845vA.f16025do.m354if();
        m354if.mo590case(c3845vA.f16027do, new YA(c3845vA, m354if, c0511Tb, 2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [lz] */
    @KeepForSdk
    /* renamed from: for, reason: not valid java name */
    public final synchronized C0101Ai m7627for(String str) {
        D9 m7629new;
        D9 m7629new2;
        D9 m7629new3;
        Cfor cfor;
        H9 h9;
        m7629new = m7629new(str, "fetch");
        m7629new2 = m7629new(str, "activate");
        m7629new3 = m7629new(str, "defaults");
        cfor = new Cfor(this.f14645do.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.f14646do, str, "settings"), 0));
        h9 = new H9(this.f14648do, m7629new2, m7629new3);
        C0706ai c0706ai = this.f14644do;
        InterfaceC3655ry<A0> interfaceC3655ry = this.f14650do;
        c0706ai.m3147do();
        final Mw mw = (c0706ai.f4986do.equals("[DEFAULT]") && str.equals("firebase")) ? new Mw(interfaceC3655ry) : null;
        if (mw != null) {
            h9.m819do(new BiConsumer() { // from class: lz
                @Override // com.google.android.gms.common.util.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    JSONObject optJSONObject;
                    Mw mw2 = Mw.this;
                    String str2 = (String) obj;
                    E9 e9 = (E9) obj2;
                    A0 a0 = (A0) ((InterfaceC3655ry) mw2.f2274do).get();
                    if (a0 == null) {
                        return;
                    }
                    JSONObject jSONObject = e9.f743for;
                    if (jSONObject.length() < 1) {
                        return;
                    }
                    JSONObject jSONObject2 = e9.f745if;
                    if (jSONObject2.length() >= 1 && (optJSONObject = jSONObject.optJSONObject(str2)) != null) {
                        String optString = optJSONObject.optString("choiceId");
                        if (optString.isEmpty()) {
                            return;
                        }
                        synchronized (((Map) mw2.f2275if)) {
                            if (!optString.equals(((Map) mw2.f2275if).get(str2))) {
                                ((Map) mw2.f2275if).put(str2, optString);
                                Bundle bundle = new Bundle();
                                bundle.putString("arm_key", str2);
                                bundle.putString("arm_value", jSONObject2.optString(str2));
                                bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                                bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                                bundle.putString("group", optJSONObject.optString("group"));
                                a0.mo8if(bundle, "fp", "personalization_assignment");
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("_fpid", optString);
                                a0.mo8if(bundle2, "fp", "_fpc");
                            }
                        }
                    }
                }
            });
        }
        return m7628if(this.f14644do, str, this.f14649do, this.f14643do, this.f14648do, m7629new, m7629new2, m7629new3, m7630try(str, m7629new, cfor), h9, cfor, new C3845vA(m7629new2, new C3727tA(m7629new2, m7629new3), this.f14648do));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized defpackage.C0101Ai m7628if(defpackage.C0706ai r23, java.lang.String r24, defpackage.InterfaceC3227ki r25, defpackage.C0605Xh r26, java.util.concurrent.ScheduledExecutorService r27, defpackage.D9 r28, defpackage.D9 r29, defpackage.D9 r30, com.google.firebase.remoteconfig.internal.Cif r31, defpackage.H9 r32, com.google.firebase.remoteconfig.internal.Cfor r33, defpackage.C3845vA r34) {
        /*
            r22 = this;
            r9 = r22
            r0 = r24
            monitor-enter(r22)
            java.util.HashMap r1 = r9.f14647do     // Catch: java.lang.Throwable -> L7a
            boolean r1 = r1.containsKey(r0)     // Catch: java.lang.Throwable -> L7a
            if (r1 != 0) goto L70
            Ai r15 = new Ai     // Catch: java.lang.Throwable -> L7a
            java.lang.String r1 = "firebase"
            boolean r1 = r0.equals(r1)     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L28
            r23.m3147do()     // Catch: java.lang.Throwable -> L7a
            java.lang.String r1 = "[DEFAULT]"
            r2 = r23
            java.lang.String r3 = r2.f4986do     // Catch: java.lang.Throwable -> L7a
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L2a
            r1 = 1
            goto L2b
        L28:
            r2 = r23
        L2a:
            r1 = 0
        L2b:
            if (r1 == 0) goto L30
            r12 = r26
            goto L32
        L30:
            r1 = 0
            r12 = r1
        L32:
            android.content.Context r6 = r9.f14645do     // Catch: java.lang.Throwable -> L7a
            r1 = r22
            r2 = r23
            r3 = r25
            r4 = r31
            r5 = r29
            r7 = r24
            r8 = r33
            I9 r20 = r1.m7626case(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L7a
            r10 = r15
            r11 = r25
            r13 = r27
            r14 = r28
            r1 = r15
            r15 = r29
            r16 = r30
            r17 = r31
            r18 = r32
            r19 = r33
            r21 = r34
            r10.<init>(r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)     // Catch: java.lang.Throwable -> L7a
            r29.m354if()     // Catch: java.lang.Throwable -> L7a
            r30.m354if()     // Catch: java.lang.Throwable -> L7a
            r28.m354if()     // Catch: java.lang.Throwable -> L7a
            java.util.HashMap r2 = r9.f14647do     // Catch: java.lang.Throwable -> L7a
            r2.put(r0, r1)     // Catch: java.lang.Throwable -> L7a
            java.util.HashMap r2 = defpackage.C3421nz.f14642for     // Catch: java.lang.Throwable -> L7a
            r2.put(r0, r1)     // Catch: java.lang.Throwable -> L7a
        L70:
            java.util.HashMap r1 = r9.f14647do     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r0 = r1.get(r0)     // Catch: java.lang.Throwable -> L7a
            Ai r0 = (defpackage.C0101Ai) r0     // Catch: java.lang.Throwable -> L7a
            monitor-exit(r22)
            return r0
        L7a:
            r0 = move-exception
            monitor-exit(r22)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3421nz.m7628if(ai, java.lang.String, ki, Xh, java.util.concurrent.ScheduledExecutorService, D9, D9, D9, com.google.firebase.remoteconfig.internal.if, H9, com.google.firebase.remoteconfig.internal.for, vA):Ai");
    }

    /* renamed from: new, reason: not valid java name */
    public final D9 m7629new(String str, String str2) {
        M9 m9;
        String format = String.format("%s_%s_%s_%s.json", "frc", this.f14646do, str, str2);
        ScheduledExecutorService scheduledExecutorService = this.f14648do;
        Context context = this.f14645do;
        HashMap hashMap = M9.f2128do;
        synchronized (M9.class) {
            HashMap hashMap2 = M9.f2128do;
            if (!hashMap2.containsKey(format)) {
                hashMap2.put(format, new M9(context, format));
            }
            m9 = (M9) hashMap2.get(format);
        }
        return D9.m352new(scheduledExecutorService, m9);
    }

    /* renamed from: try, reason: not valid java name */
    public final synchronized Cif m7630try(String str, D9 d9, Cfor cfor) {
        InterfaceC3227ki interfaceC3227ki;
        InterfaceC3655ry c3608r9;
        ScheduledExecutorService scheduledExecutorService;
        Clock clock;
        Random random;
        String str2;
        C0706ai c0706ai;
        interfaceC3227ki = this.f14649do;
        C0706ai c0706ai2 = this.f14644do;
        c0706ai2.m3147do();
        c3608r9 = c0706ai2.f4986do.equals("[DEFAULT]") ? this.f14650do : new C3608r9(4);
        scheduledExecutorService = this.f14648do;
        clock = f14640do;
        random = f14641do;
        C0706ai c0706ai3 = this.f14644do;
        c0706ai3.m3147do();
        str2 = c0706ai3.f4989do.f14825do;
        c0706ai = this.f14644do;
        c0706ai.m3147do();
        return new Cif(interfaceC3227ki, c3608r9, scheduledExecutorService, clock, random, d9, new ConfigFetchHttpClient(this.f14645do, c0706ai.f4989do.f14828if, str2, str, cfor.f11995do.getLong("fetch_timeout_in_seconds", 60L), cfor.f11995do.getLong("fetch_timeout_in_seconds", 60L)), cfor, this.f14651if);
    }
}
