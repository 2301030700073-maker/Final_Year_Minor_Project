package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfhk implements Runnable {
    public static Boolean zzb;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private int zzi;
    private final zzdpj zzj;
    private final List zzk;
    private final zzbvs zzm;
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();
    private final zzfhp zzg = zzfht.zzb();
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private boolean zzl = false;

    public zzfhk(Context context, VersionInfoParcel versionInfoParcel, zzdpj zzdpjVar, zzdzq zzdzqVar, zzbvs zzbvsVar) {
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzj = zzdpjVar;
        this.zzm = zzbvsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziJ)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzs.zzd();
        } else {
            this.zzk = zzfxn.zzn();
        }
    }

    public static boolean zza() {
        boolean booleanValue;
        synchronized (zza) {
            if (zzb == null) {
                if (((Boolean) zzbee.zzb.zze()).booleanValue()) {
                    zzb = Boolean.valueOf(Math.random() < ((Double) zzbee.zza.zze()).doubleValue());
                } else {
                    zzb = Boolean.FALSE;
                }
            }
            booleanValue = zzb.booleanValue();
        }
        return booleanValue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] zzaV;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                if (this.zzg.zza() == 0) {
                    return;
                }
                try {
                    synchronized (obj) {
                        zzaV = ((zzfht) this.zzg.zzbr()).zzaV();
                        this.zzg.zzc();
                    }
                    new zzdzp(this.zze, this.zzf.afmaVersion, this.zzm, Binder.getCallingUid()).zza(new zzdzn((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziD), 60000, new HashMap(), zzaV, "application/x-protobuf", false));
                } catch (Exception e) {
                    if ((e instanceof zzdvy) && ((zzdvy) e).zza() == 3) {
                        return;
                    }
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "CuiMonitor.sendCuiPing");
                }
            }
        }
    }

    public final void zzb(final zzfha zzfhaVar) {
        zzbzw.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhj
            @Override // java.lang.Runnable
            public final void run() {
                zzfhk.this.zzc(zzfhaVar);
            }
        });
    }

    public final /* synthetic */ void zzc(zzfha zzfhaVar) {
        synchronized (zzd) {
            if (!this.zzl) {
                this.zzl = true;
                if (zza()) {
                    try {
                        com.google.android.gms.ads.internal.zzv.zzq();
                        this.zzh = com.google.android.gms.ads.internal.util.zzs.zzq(this.zze);
                    } catch (RemoteException | RuntimeException e) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "CuiMonitor.gettingAppIdFromManifest");
                    }
                    this.zzi = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zze);
                    int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziE)).intValue();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlK)).booleanValue()) {
                        long j = intValue;
                        zzbzw.zzd.scheduleWithFixedDelay(this, j, j, TimeUnit.MILLISECONDS);
                    } else {
                        long j2 = intValue;
                        zzbzw.zzd.scheduleAtFixedRate(this, j2, j2, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }
        if (zza() && zzfhaVar != null) {
            synchronized (zzc) {
                if (this.zzg.zza() >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziF)).intValue()) {
                    return;
                }
                zzfhl zza2 = zzfho.zza();
                zza2.zzu(zzfhaVar.zzm());
                zza2.zzq(zzfhaVar.zzl());
                zza2.zzg(zzfhaVar.zzb());
                zza2.zzw(3);
                zza2.zzn(this.zzf.afmaVersion);
                zza2.zzb(this.zzh);
                zza2.zzk(Build.VERSION.RELEASE);
                zza2.zzr(Build.VERSION.SDK_INT);
                zza2.zzv(zzfhaVar.zzo());
                zza2.zzj(zzfhaVar.zza());
                zza2.zze(this.zzi);
                zza2.zzt(zzfhaVar.zzn());
                zza2.zzc(zzfhaVar.zze());
                zza2.zzf(zzfhaVar.zzg());
                zza2.zzh(zzfhaVar.zzh());
                zza2.zzi(this.zzj.zzb(zzfhaVar.zzh()));
                zza2.zzl(zzfhaVar.zzi());
                zza2.zzm(zzfhaVar.zzd());
                zza2.zzd(zzfhaVar.zzf());
                zza2.zzs(zzfhaVar.zzk());
                zza2.zzo(zzfhaVar.zzj());
                zza2.zzp(zzfhaVar.zzc());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziJ)).booleanValue()) {
                    zza2.zza(this.zzk);
                }
                zzfhp zzfhpVar = this.zzg;
                zzfhq zza3 = zzfhr.zza();
                zza3.zza(zza2);
                zzfhpVar.zzb(zza3);
            }
        }
    }
}
