package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzflp implements Runnable {
    public static Boolean zzb;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private int zzi;
    private final zzdsv zzj;
    private final List zzk;
    private final zzcjk zzl;
    private final zzbxr zzn;
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();
    private final zzflt zzg = zzflw.zzb();
    private String zzh = "";
    private boolean zzm = false;

    public zzflp(Context context, VersionInfoParcel versionInfoParcel, zzdsv zzdsvVar, zzeef zzeefVar, zzbxr zzbxrVar, zzcjk zzcjkVar) {
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzj = zzdsvVar;
        this.zzn = zzbxrVar;
        this.zzl = zzcjkVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjJ)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzs.zzk();
        } else {
            this.zzk = zzgpe.zzi();
        }
    }

    public static boolean zza() {
        boolean booleanValue;
        synchronized (zza) {
            if (zzb == null) {
                if (((Boolean) zzbgn.zzb.zze()).booleanValue()) {
                    zzb = Boolean.valueOf(Math.random() < ((Double) zzbgn.zza.zze()).doubleValue());
                } else {
                    zzb = false;
                }
            }
            booleanValue = zzb.booleanValue();
        }
        return booleanValue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] zzaN;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                if (this.zzg.zza() == 0) {
                    return;
                }
                try {
                    synchronized (obj) {
                        zzflt zzfltVar = this.zzg;
                        zzaN = ((zzflw) zzfltVar.zzbu()).zzaN();
                        zzfltVar.zzc();
                    }
                    zzeec zzeecVar = new zzeec((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjD), 60000, new HashMap(), zzaN, "application/x-protobuf", false);
                    zzeec zzeecVar2 = zzeecVar;
                    new zzeee(this.zze, this.zzf.afmaVersion, this.zzn, Binder.getCallingUid(), null).zza(zzeecVar);
                } catch (Exception e) {
                    if ((e instanceof zzdzv) && ((zzdzv) e).zza() == 3) {
                        return;
                    }
                    com.google.android.gms.ads.internal.zzt.zzh().zzh(e, "CuiMonitor.sendCuiPing");
                }
            }
        }
    }

    public final void zzb(final zzflf zzflfVar) {
        zzcbv.zza.submit(new Runnable() { // from class: com.google.android.gms.internal.ads.zzflo
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzflp.this.zzc(zzflfVar);
            }
        });
    }

    final /* synthetic */ void zzc(zzflf zzflfVar) {
        synchronized (zzd) {
            if (!this.zzm) {
                this.zzm = true;
                if (zza()) {
                    try {
                        com.google.android.gms.ads.internal.zzt.zzc();
                        this.zzh = com.google.android.gms.ads.internal.util.zzs.zzt(this.zze);
                    } catch (RemoteException | RuntimeException e) {
                        com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "CuiMonitor.gettingAppIdFromManifest");
                    }
                    this.zzi = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zze);
                    int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjE)).intValue();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmS)).booleanValue()) {
                        long j = intValue;
                        zzcbv.zzd.scheduleWithFixedDelay(this, j, j, TimeUnit.MILLISECONDS);
                    } else {
                        long j2 = intValue;
                        zzcbv.zzd.scheduleAtFixedRate(this, j2, j2, TimeUnit.MILLISECONDS);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjK)).booleanValue()) {
                        this.zzl.zza();
                    }
                }
            }
        }
        if (zza() && zzflfVar != null) {
            synchronized (zzc) {
                zzflt zzfltVar = this.zzg;
                if (zzfltVar.zza() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjF)).intValue()) {
                    return;
                }
                zzflq zza2 = zzfls.zza();
                zza2.zzv(zzflfVar.zzm());
                zza2.zza(zzflfVar.zzb());
                zza2.zzb(zzflfVar.zza());
                zza2.zzw(3);
                zza2.zzd(this.zzf.afmaVersion);
                zza2.zze(this.zzh);
                zza2.zzf(Build.VERSION.RELEASE);
                zza2.zzg(Build.VERSION.SDK_INT);
                zza2.zzx(zzflfVar.zzo());
                zza2.zzi(zzflfVar.zzc());
                zza2.zzj(this.zzi);
                zza2.zzy(zzflfVar.zzn());
                zza2.zzk(zzflfVar.zzd());
                zza2.zzl(zzflfVar.zze());
                zza2.zzm(zzflfVar.zzf());
                zza2.zzn(this.zzj.zzd(zzflfVar.zzf()));
                zza2.zzo(zzflfVar.zzg());
                zza2.zzs(zzflfVar.zzh());
                zza2.zzr(zzflfVar.zzk());
                zza2.zzp(zzflfVar.zzi());
                zza2.zzq(zzflfVar.zzj());
                zza2.zzc(zzflfVar.zzl());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjJ)).booleanValue()) {
                    zza2.zzh(this.zzk);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjK)).booleanValue()) {
                    zzcjk zzcjkVar = this.zzl;
                    zziag zzd2 = zzcjkVar.zzd();
                    String zzc2 = zzcjkVar.zzc();
                    if (zzd2 != null) {
                        zza2.zzt(zzd2);
                    }
                    if (zzc2 != null) {
                        zza2.zzu(zzc2);
                    }
                }
                zzflu zza3 = zzflv.zza();
                zza3.zza(zza2);
                zzfltVar.zzb(zza3);
            }
        }
    }
}
