package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.measurement.internal.zzae;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: kU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3217kU extends AbstractC3863vS {

    /* renamed from: do, reason: not valid java name */
    public final AU f13993do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final KT f13994do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PT f13995do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RU f13996do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public YR f13997do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Boolean f13998do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f13999do;

    public C3217kU(TS ts) {
        super(ts);
        this.f13999do = new ArrayList();
        this.f13996do = new RU(ts.f3692do);
        this.f13993do = new AU(this);
        int i = 1;
        this.f13995do = new PT(this, ts, i);
        this.f13994do = new KT(this, ts, i);
    }

    /* renamed from: abstract, reason: not valid java name */
    public final boolean m7258abstract() {
        mo1960catch();
        m8474import();
        return !m7259continue() || m7571break().D() >= 241200;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    /* renamed from: continue, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7259continue() {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3217kU.m7259continue():boolean");
    }

    /* renamed from: default, reason: not valid java name */
    public final void m7260default(boolean z) {
        mo1960catch();
        m8474import();
        if ((!zznm.zza() || !m7572else().m3012throws(null, C3684sQ.j0)) && z) {
            m8797const().m4839switch();
        }
        if (m7265private()) {
            m7267static(new RunnableC3688sU(this, m7263interface(false), 1));
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m7261extends() {
        mo1960catch();
        m8474import();
        if (m7264package()) {
            return;
        }
        if (!m7259continue()) {
            if (m7572else().m3005private()) {
                return;
            }
            List<ResolveInfo> queryIntentServices = mo2255for().getPackageManager().queryIntentServices(new Intent().setClassName(mo2255for(), "com.google.android.gms.measurement.AppMeasurementService"), NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            if (!((queryIntentServices == null || queryIntentServices.isEmpty()) ? false : true)) {
                mo2249case().f13717do.m7369if("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            intent.setComponent(new ComponentName(mo2255for(), "com.google.android.gms.measurement.AppMeasurementService"));
            this.f13993do.m75do(intent);
            return;
        }
        AU au = this.f13993do;
        au.f90do.mo1960catch();
        Context mo2255for = au.f90do.mo2255for();
        synchronized (au) {
            if (au.f91do) {
                au.f90do.mo2249case().f13723this.m7369if("Connection attempt already in progress");
                return;
            }
            if (au.f89do != null && (au.f89do.isConnecting() || au.f89do.isConnected())) {
                au.f90do.mo2249case().f13723this.m7369if("Already awaiting connection attempt");
                return;
            }
            au.f89do = new C2753fS(mo2255for, Looper.getMainLooper(), au, au);
            au.f90do.mo2249case().f13723this.m7369if("Connecting to remote service");
            au.f91do = true;
            Preconditions.checkNotNull(au.f89do);
            au.f89do.checkAvailabilityAndConnect();
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m7262finally() {
        mo1960catch();
        m8474import();
        AU au = this.f13993do;
        if (au.f89do != null && (au.f89do.isConnected() || au.f89do.isConnecting())) {
            au.f89do.disconnect();
        }
        au.f89do = null;
        try {
            ConnectionTracker.getInstance().unbindService(mo2255for(), this.f13993do);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f13997do = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x028c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0230  */
    /* renamed from: interface, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzo m7263interface(boolean r47) {
        /*
            Method dump skipped, instructions count: 849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3217kU.m7263interface(boolean):com.google.android.gms.measurement.internal.zzo");
    }

    /* renamed from: package, reason: not valid java name */
    public final boolean m7264package() {
        mo1960catch();
        m8474import();
        return this.f13997do != null;
    }

    /* renamed from: private, reason: not valid java name */
    public final boolean m7265private() {
        mo1960catch();
        m8474import();
        return !m7259continue() || m7571break().D() >= C3684sQ.F.m2158do(null).intValue();
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public */
    public final boolean mo1327public() {
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m7266return(zzae zzaeVar) {
        boolean m4838static;
        Preconditions.checkNotNull(zzaeVar);
        mo1960catch();
        m8474import();
        C0753bS m8797const = m8797const();
        m8797const.m7571break();
        byte[] m = C3395nV.m(zzaeVar);
        if (m.length > 131072) {
            m8797const.mo2249case().f13721if.m7369if("Conditional user property too long for local database. Sending directly to service");
            m4838static = false;
        } else {
            m4838static = m8797const.m4838static(2, m);
        }
        m7267static(new RunnableC3983xU(this, m7263interface(true), m4838static, new zzae(zzaeVar), zzaeVar));
    }

    /* renamed from: static, reason: not valid java name */
    public final void m7267static(Runnable runnable) {
        mo1960catch();
        if (m7264package()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.f13999do;
        if (arrayList.size() >= 1000) {
            mo2249case().f13717do.m7369if("Discarding data. Max runnable queue size reached");
            return;
        }
        arrayList.add(runnable);
        this.f13994do.m452if(60000L);
        m7261extends();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m7268strictfp() {
        mo1960catch();
        C3156jS mo2249case = mo2249case();
        ArrayList arrayList = this.f13999do;
        mo2249case.f13723this.m7368for("Processing queued up service tasks", Integer.valueOf(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e) {
                mo2249case().f13717do.m7368for("Task exception while flushing queue", e);
            }
        }
        arrayList.clear();
        this.f13994do.m450do();
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m7269switch(AtomicReference<String> atomicReference) {
        mo1960catch();
        m8474import();
        m7267static(new TR(this, atomicReference, m7263interface(false)));
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x035f A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x01d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0258 A[ADDED_TO_REGION] */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7270throws(defpackage.YR r30, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r31, com.google.android.gms.measurement.internal.zzo r32) {
        /*
            Method dump skipped, instructions count: 885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3217kU.m7270throws(YR, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, com.google.android.gms.measurement.internal.zzo):void");
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m7271volatile() {
        mo1960catch();
        RU ru = this.f13996do;
        ru.f3185do = ru.f3186do.elapsedRealtime();
        this.f13995do.m452if(C3684sQ.f15470instanceof.m2158do(null).longValue());
    }
}
