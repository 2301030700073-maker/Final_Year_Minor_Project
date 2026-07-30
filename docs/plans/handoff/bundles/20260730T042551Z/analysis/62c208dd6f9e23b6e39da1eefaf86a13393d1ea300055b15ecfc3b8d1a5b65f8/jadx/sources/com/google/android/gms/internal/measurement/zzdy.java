package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import defpackage.C2904i2;
import defpackage.InterfaceC3805uT;
import defpackage.InterfaceC3864vT;
import defpackage.OS;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class zzdy {
    private static volatile zzdy zzb;
    protected final Clock zza;
    private final String zzc;
    private final ExecutorService zzd;
    private final C2904i2 zze;
    private final List<Pair<InterfaceC3805uT, zzb>> zzf;
    private int zzg;
    private boolean zzh;
    private String zzi;
    private volatile zzdj zzj;

    public abstract class zza implements Runnable {
        final long zza;
        final long zzb;
        private final boolean zzc;

        public zza(zzdy zzdyVar) {
            this(true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzdy.this.zzh) {
                zzb();
                return;
            }
            try {
                zza();
            } catch (Exception e) {
                zzdy.this.zza(e, false, this.zzc);
                zzb();
            }
        }

        public abstract void zza();

        public void zzb() {
        }

        public zza(boolean z) {
            this.zza = zzdy.this.zza.currentTimeMillis();
            this.zzb = zzdy.this.zza.elapsedRealtime();
            this.zzc = z;
        }
    }

    public static class zzb extends zzds {
        private final InterfaceC3805uT zza;

        public zzb(InterfaceC3805uT interfaceC3805uT) {
            this.zza = interfaceC3805uT;
        }

        @Override // com.google.android.gms.internal.measurement.zzdp
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzdp
        public final void zza(String str, String str2, Bundle bundle, long j) {
            this.zza.mo1152do(str, str2, bundle, j);
        }
    }

    public static class zzc extends zzds {
        private final InterfaceC3864vT zza;

        public zzc(InterfaceC3864vT interfaceC3864vT) {
            this.zza = interfaceC3864vT;
        }

        @Override // com.google.android.gms.internal.measurement.zzdp
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzdp
        public final void zza(String str, String str2, Bundle bundle, long j) {
            ((AppMeasurementDynamiteService.Cdo) this.zza).m5616do(str, str2, bundle, j);
        }
    }

    public class zzd implements Application.ActivityLifecycleCallbacks {
        public zzd() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzdy.this.zza(new zzfg(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzdy.this.zza(new zzfl(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzdy.this.zza(new zzfk(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzdy.this.zza(new zzfh(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzdk zzdkVar = new zzdk();
            zzdy.this.zza(new zzfm(this, activity, zzdkVar));
            Bundle zza = zzdkVar.zza(50L);
            if (zza != null) {
                bundle.putAll(zza);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzdy.this.zza(new zzfi(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzdy.this.zza(new zzfj(this, activity));
        }
    }

    private zzdy(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !zzc(str2, str3)) {
            this.zzc = "FA";
        } else {
            this.zzc = str;
        }
        this.zza = DefaultClock.getInstance();
        this.zzd = zzdc.zza().zza(new zzek(this), 1);
        this.zze = new C2904i2(this);
        this.zzf = new ArrayList();
        if (!(!zzb(context) || zzk())) {
            this.zzi = null;
            this.zzh = true;
            return;
        }
        if (zzc(str2, str3)) {
            this.zzi = str2;
        } else {
            this.zzi = "fa";
        }
        zza(new zzdx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new zzd());
    }

    private final boolean zzk() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, getClass().getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final int zza(String str) {
        zzdk zzdkVar = new zzdk();
        zza(new zzev(this, str, zzdkVar));
        Integer num = (Integer) zzdk.zza(zzdkVar.zza(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final C2904i2 zzb() {
        return this.zze;
    }

    public final Long zzc() {
        zzdk zzdkVar = new zzdk();
        zza(new zzex(this, zzdkVar));
        return zzdkVar.zzb(120000L);
    }

    public final String zzd() {
        return this.zzi;
    }

    public final String zze() {
        zzdk zzdkVar = new zzdk();
        zza(new zzey(this, zzdkVar));
        return zzdkVar.zzc(120000L);
    }

    public final String zzf() {
        zzdk zzdkVar = new zzdk();
        zza(new zzen(this, zzdkVar));
        return zzdkVar.zzc(50L);
    }

    public final String zzg() {
        zzdk zzdkVar = new zzdk();
        zza(new zzes(this, zzdkVar));
        return zzdkVar.zzc(500L);
    }

    public final String zzh() {
        zzdk zzdkVar = new zzdk();
        zza(new zzep(this, zzdkVar));
        return zzdkVar.zzc(500L);
    }

    public final String zzi() {
        zzdk zzdkVar = new zzdk();
        zza(new zzeo(this, zzdkVar));
        return zzdkVar.zzc(500L);
    }

    public final void zzj() {
        zza(new zzeh(this));
    }

    public final void zzb(String str) {
        zza(new zzem(this, str));
    }

    public final void zzd(Bundle bundle) {
        zza(new zzfc(this, bundle));
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, null);
    }

    public final void zzd(String str) {
        zza(new zzee(this, str));
    }

    public final void zzb(Bundle bundle) {
        zza(new zzef(this, bundle));
    }

    public final void zzc(String str) {
        zza(new zzel(this, str));
    }

    public final long zza() {
        zzdk zzdkVar = new zzdk();
        zza(new zzeq(this, zzdkVar));
        Long zzb2 = zzdkVar.zzb(500L);
        if (zzb2 == null) {
            long nextLong = new Random(System.nanoTime() ^ this.zza.currentTimeMillis()).nextLong();
            int i = this.zzg + 1;
            this.zzg = i;
            return nextLong + i;
        }
        return zzb2.longValue();
    }

    public final void zzb(String str, String str2) {
        zza((String) null, str, (Object) str2, false);
    }

    public final void zzc(Bundle bundle) {
        zza(new zzei(this, bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzc(String str, String str2) {
        return (str2 == null || str == null || zzk()) ? false : true;
    }

    public final void zzb(InterfaceC3805uT interfaceC3805uT) {
        Pair<InterfaceC3805uT, zzb> pair;
        Preconditions.checkNotNull(interfaceC3805uT);
        synchronized (this.zzf) {
            int i = 0;
            while (true) {
                if (i >= this.zzf.size()) {
                    pair = null;
                    break;
                } else {
                    if (interfaceC3805uT.equals(this.zzf.get(i).first)) {
                        pair = this.zzf.get(i);
                        break;
                    }
                    i++;
                }
            }
            if (pair == null) {
                return;
            }
            this.zzf.remove(pair);
            zzb zzbVar = (zzb) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzbVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                }
            }
            zza(new zzfd(this, zzbVar));
        }
    }

    public final Bundle zza(Bundle bundle, boolean z) {
        zzdk zzdkVar = new zzdk();
        zza(new zzew(this, bundle, zzdkVar));
        if (z) {
            return zzdkVar.zza(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
        }
        return null;
    }

    public final zzdj zza(Context context, boolean z) {
        try {
            return zzdm.asInterface(DynamiteModule.m5606for(context, DynamiteModule.f10179do, ModuleDescriptor.MODULE_ID).m5610if("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.Cdo e) {
            zza((Exception) e, true, false);
            return null;
        }
    }

    public static zzdy zza(Context context) {
        return zza(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    public static zzdy zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzb == null) {
            synchronized (zzdy.class) {
                if (zzb == null) {
                    zzb = new zzdy(context, str, str2, str3, bundle);
                }
            }
        }
        return zzb;
    }

    private static boolean zzb(Context context) {
        String str;
        try {
            String m1670do = OS.m1670do(context);
            Preconditions.checkNotNull(context);
            Resources resources = context.getResources();
            if (TextUtils.isEmpty(m1670do)) {
                m1670do = OS.m1670do(context);
            }
            int identifier = resources.getIdentifier("google_app_id", "string", m1670do);
            str = null;
            if (identifier != 0) {
                try {
                    str = resources.getString(identifier);
                } catch (Resources.NotFoundException unused) {
                }
            }
        } catch (IllegalStateException unused2) {
        }
        return str != null;
    }

    public final Object zza(int i) {
        zzdk zzdkVar = new zzdk();
        zza(new zzfa(this, zzdkVar, i));
        return zzdk.zza(zzdkVar.zza(15000L), Object.class);
    }

    public final List<Bundle> zza(String str, String str2) {
        zzdk zzdkVar = new zzdk();
        zza(new zzeb(this, str, str2, zzdkVar));
        List<Bundle> list = (List) zzdk.zza(zzdkVar.zza(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzdk zzdkVar = new zzdk();
        zza(new zzer(this, str, str2, z, zzdkVar));
        Bundle zza2 = zzdkVar.zza(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
        if (zza2 != null && zza2.size() != 0) {
            HashMap hashMap = new HashMap(zza2.size());
            for (String str3 : zza2.keySet()) {
                Object obj = zza2.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Exception exc, boolean z, boolean z2) {
        this.zzh |= z;
        if (!z && z2) {
            zza(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(new zzec(this, str, str2, bundle));
    }

    public final void zza(String str, Bundle bundle) {
        zza(null, str, bundle, false, true, null);
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        zza(str, str2, bundle, true, false, Long.valueOf(j));
    }

    private final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zza(new zzff(this, l, str, str2, bundle, z, z2));
    }

    public final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zza(new zzeu(this, false, 5, str, obj, null, null));
    }

    public final void zza(InterfaceC3805uT interfaceC3805uT) {
        Preconditions.checkNotNull(interfaceC3805uT);
        synchronized (this.zzf) {
            for (int i = 0; i < this.zzf.size(); i++) {
                if (interfaceC3805uT.equals(this.zzf.get(i).first)) {
                    return;
                }
            }
            zzb zzbVar = new zzb(interfaceC3805uT);
            this.zzf.add(new Pair<>(interfaceC3805uT, zzbVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzbVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                }
            }
            zza(new zzfe(this, zzbVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zza zzaVar) {
        this.zzd.execute(zzaVar);
    }

    public final void zza(Bundle bundle) {
        zza(new zzdz(this, bundle));
    }

    public final void zza(Activity activity, String str, String str2) {
        zza(new zzed(this, activity, str, str2));
    }

    public final void zza(boolean z) {
        zza(new zzez(this, z));
    }

    public final void zza(InterfaceC3864vT interfaceC3864vT) {
        zzc zzcVar = new zzc(interfaceC3864vT);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzcVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
            }
        }
        zza(new zzet(this, zzcVar));
    }

    public final void zza(Boolean bool) {
        zza(new zzeg(this, bool));
    }

    public final void zza(long j) {
        zza(new zzej(this, j));
    }

    public final void zza(Intent intent) {
        zza(new zzfb(this, intent));
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(new zzea(this, str, str2, obj, z));
    }
}
