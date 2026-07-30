package defpackage;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.consent_sdk.zza;
import com.google.android.gms.internal.consent_sdk.zzj;
import defpackage.C3631ra;
import defpackage.C3808ua;
import defpackage.InterfaceC3749ta;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: Dl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0170Dl {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile zzj f642do;

    /* renamed from: do, reason: not valid java name */
    public static final Handler f641do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ArrayList f643do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile InterfaceC3690sa f644do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile boolean f645do = false;

    /* renamed from: if, reason: not valid java name */
    public static volatile boolean f646if = false;

    /* renamed from: Dl$do, reason: invalid class name */
    public class Cdo implements InterfaceC3749ta.Cif {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f647do;

        public Cdo(Activity activity) {
            this.f647do = activity;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
        @Override // defpackage.InterfaceC3749ta.Cif
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onConsentInfoUpdateSuccess() {
            /*
                r3 = this;
                com.google.android.gms.internal.consent_sdk.zzj r0 = defpackage.C0170Dl.f642do     // Catch: java.lang.RuntimeException -> L32
                if (r0 == 0) goto Lc
                boolean r0 = r0.isConsentFormAvailable()     // Catch: java.lang.RuntimeException -> L32
                if (r0 == 0) goto Lc
                r0 = 1
                goto Ld
            Lc:
                r0 = 0
            Ld:
                if (r0 == 0) goto L2c
                android.app.Activity r0 = r3.f647do
                El r1 = new El     // Catch: java.lang.RuntimeException -> L27
                r1.<init>(r0)     // Catch: java.lang.RuntimeException -> L27
                Fl r2 = new Fl     // Catch: java.lang.RuntimeException -> L27
                r2.<init>(r0)     // Catch: java.lang.RuntimeException -> L27
                com.google.android.gms.internal.consent_sdk.zza r0 = com.google.android.gms.internal.consent_sdk.zza.zza(r0)     // Catch: java.lang.RuntimeException -> L27
                com.google.android.gms.internal.consent_sdk.zzbk r0 = r0.zzc()     // Catch: java.lang.RuntimeException -> L27
                r0.zzb(r1, r2)     // Catch: java.lang.RuntimeException -> L27
                goto L31
            L27:
                r0 = move-exception
                defpackage.C0170Dl.m382new(r0)
                goto L31
            L2c:
                android.app.Activity r0 = r3.f647do
                defpackage.C0170Dl.m379do(r0)
            L31:
                return
            L32:
                r0 = move-exception
                defpackage.C0170Dl.m382new(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0170Dl.Cdo.onConsentInfoUpdateSuccess():void");
        }
    }

    /* renamed from: Dl$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Runnable f648do;

        /* renamed from: if, reason: not valid java name */
        public final Runnable f649if;

        public Cfor(Runnable runnable, Runnable runnable2) {
            this.f648do = runnable;
            this.f649if = runnable2;
        }
    }

    /* renamed from: Dl$if, reason: invalid class name */
    public class Cif implements InterfaceC3749ta.Cdo {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f650do;

        public Cif(Activity activity) {
            this.f650do = activity;
        }

        @Override // defpackage.InterfaceC3749ta.Cdo
        public final void onConsentInfoUpdateFailure(C3817uj c3817uj) {
            C0170Dl.m379do(this.f650do);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m378case(Activity activity) {
        if (activity == null) {
            return;
        }
        synchronized (C0170Dl.class) {
            if (f645do) {
                return;
            }
            f645do = true;
            try {
                new C3631ra.Cdo(activity).m7972do();
                C3808ua.Cdo cdo = new C3808ua.Cdo();
                cdo.f15900do = false;
                C3808ua c3808ua = new C3808ua(cdo);
                f642do = zza.zza(activity).zzb();
                f642do.requestConsentInfoUpdate(activity, c3808ua, new Cdo(activity), new Cif(activity));
            } catch (RuntimeException e) {
                m382new(e);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m379do(Activity activity) {
        f645do = false;
        if (m381if()) {
            synchronized (C0170Dl.class) {
                ArrayList arrayList = f643do;
                if (!arrayList.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList(arrayList);
                    arrayList.clear();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        m380for(((Cfor) it.next()).f648do);
                    }
                }
            }
            C0301Jk.m1056this(activity, new RunnableC2852h9(activity, 10));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m380for(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f641do.post(runnable);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static synchronized boolean m381if() {
        boolean z;
        synchronized (C0170Dl.class) {
            zzj zzjVar = f642do;
            if (zzjVar != null) {
                z = zzjVar.canRequestAds();
            }
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m382new(RuntimeException runtimeException) {
        ArrayList arrayList;
        try {
            C0766bi.m4854do().m4855for(runtimeException);
        } catch (Throwable unused) {
        }
        synchronized (C0170Dl.class) {
            f642do = null;
            f644do = null;
            f645do = false;
            ArrayList arrayList2 = f643do;
            arrayList = new ArrayList(arrayList2);
            arrayList2.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Runnable runnable = ((Cfor) it.next()).f649if;
            if (runnable != null) {
                m380for(runnable);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m383try(Runnable runnable, Runnable runnable2) {
        boolean z;
        synchronized (C0170Dl.class) {
            try {
                zzj zzjVar = f642do;
                z = zzjVar != null && zzjVar.canRequestAds();
                if (!z) {
                    f643do.add(new Cfor(runnable, runnable2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            m380for(runnable);
        }
    }
}
