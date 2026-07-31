package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfhj {
    private static zzfhj zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcy zzc;
    private final AtomicReference zzd = new AtomicReference();

    zzfhj(Context context, com.google.android.gms.ads.internal.client.zzcy zzcyVar) {
        this.zzb = context;
        this.zzc = zzcyVar;
    }

    public static zzfhj zza(Context context) {
        synchronized (zzfhj.class) {
            zzfhj zzfhjVar = zza;
            if (zzfhjVar != null) {
                return zzfhjVar;
            }
            Context applicationContext = context.getApplicationContext();
            long longValue = ((Long) zzbgv.zzb.zze()).longValue();
            com.google.android.gms.ads.internal.client.zzcy zzcyVar = null;
            if (longValue > 0 && longValue <= 253830000) {
                zzcyVar = zzf(applicationContext);
            }
            zzfhj zzfhjVar2 = new zzfhj(applicationContext, zzcyVar);
            zza = zzfhjVar2;
            return zzfhjVar2;
        }
    }

    static com.google.android.gms.ads.internal.client.zzcy zzf(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzcx.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to retrieve lite SDK info.", e);
            return null;
        }
    }

    private final com.google.android.gms.ads.internal.client.zzfc zzg() {
        com.google.android.gms.ads.internal.client.zzcy zzcyVar = this.zzc;
        if (zzcyVar != null) {
            try {
                return zzcyVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public final VersionInfoParcel zzb(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.client.zzfc zzg;
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zzI = com.google.android.gms.ads.internal.util.zzs.zzI(this.zzb);
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i2, true, zzI);
        return (((Boolean) zzbgv.zzc.zze()).booleanValue() && (zzg = zzg()) != null) ? new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, zzg.zza(), true, zzI) : versionInfoParcel;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(com.google.android.gms.internal.ads.zzbrj r4) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzbge r0 = com.google.android.gms.internal.ads.zzbgv.zza
            java.lang.Object r0 = r0.zze()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L22
            com.google.android.gms.ads.internal.client.zzcy r0 = r3.zzc
            if (r0 != 0) goto L15
        L13:
            r0 = r1
            goto L19
        L15:
            com.google.android.gms.internal.ads.zzbrj r0 = r0.getAdapterCreator()     // Catch: android.os.RemoteException -> L13
        L19:
            java.util.concurrent.atomic.AtomicReference r2 = r3.zzd
            if (r0 == 0) goto L1e
            r4 = r0
        L1e:
            androidx.lifecycle.LifecycleKt$$ExternalSyntheticBackportWithForwarding0.m(r2, r1, r4)
            return
        L22:
            java.util.concurrent.atomic.AtomicReference r0 = r3.zzd
            androidx.lifecycle.LifecycleKt$$ExternalSyntheticBackportWithForwarding0.m(r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfhj.zzc(com.google.android.gms.internal.ads.zzbrj):void");
    }

    public final zzbrj zzd() {
        return (zzbrj) this.zzd.get();
    }

    public final String zze() {
        com.google.android.gms.ads.internal.client.zzfc zzg = zzg();
        if (zzg != null) {
            return zzg.zzb();
        }
        return null;
    }
}
