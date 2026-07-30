package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class zzcgx implements zzckx {
    private static zzcgx zza;

    private static synchronized zzcgx zzG(Context context, zzbpe zzbpeVar, int i, boolean z, int i2, zzcid zzcidVar) {
        synchronized (zzcgx.class) {
            zzcgx zzcgxVar = zza;
            if (zzcgxVar != null) {
                return zzcgxVar;
            }
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            zzbcl.zza(context);
            if (((Boolean) zzbed.zze.zze()).booleanValue()) {
                zzbbv.zzd(context);
            }
            zzfdf zzd = zzfdf.zzd(context);
            VersionInfoParcel zzc = zzd.zzc(244410000, false, i2);
            zzd.zzf(zzbpeVar);
            zzcis zzcisVar = new zzcis(null);
            zzcgy zzcgyVar = new zzcgy();
            zzcgyVar.zzf(zzc);
            zzcgyVar.zze(context);
            zzcgyVar.zzd(currentTimeMillis);
            zzcisVar.zzb(new zzcha(zzcgyVar, null));
            zzcisVar.zzc(new zzcjn(zzcidVar));
            zzcgx zza2 = zzcisVar.zza();
            com.google.android.gms.ads.internal.zzv.zzp().zzu(context, zzc);
            com.google.android.gms.ads.internal.zzv.zzc().zzi(context);
            com.google.android.gms.ads.internal.zzv.zzq().zzm(context);
            com.google.android.gms.ads.internal.zzv.zzq().zzl(context);
            com.google.android.gms.ads.internal.util.zzd.zza(context);
            com.google.android.gms.ads.internal.zzv.zzb().zzd(context);
            com.google.android.gms.ads.internal.zzv.zzw().zzb(context);
            zza2.zza().zzc();
            zzbyj.zzd(context);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgb)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaI)).booleanValue()) {
                    new zzeax(context, zzc, new zzbbj(new zzbbp(context)), new zzeac(new zzdzy(context), zza2.zzB())).zzb(com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                }
            }
            zza = zza2;
            return zza2;
        }
    }

    public static zzcgx zzb(Context context, zzbpe zzbpeVar, int i) {
        return zzG(context, zzbpeVar, 244410000, false, i, new zzcid());
    }

    public abstract zzfjj zzA();

    public abstract zzgcs zzB();

    public abstract Executor zzC();

    public abstract ScheduledExecutorService zzD();

    public abstract zzbzb zzE();

    @Override // com.google.android.gms.internal.ads.zzckx
    public final zzbzb zzF() {
        return zzE();
    }

    public abstract com.google.android.gms.ads.internal.util.zzcb zza();

    public abstract zzcjy zzc();

    public abstract zzcnz zzd();

    public abstract zzcpp zze();

    public abstract zzcyl zzf();

    public abstract zzdft zzg();

    public abstract zzdgp zzh();

    public abstract zzdoe zzi();

    public abstract zzdrw zzj();

    public abstract zzdtg zzk();

    public abstract zzduv zzl();

    public abstract zzdvs zzm();

    public abstract zzebv zzn();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzv zzo();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzab zzp();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzau zzq();

    @Override // com.google.android.gms.internal.ads.zzckx
    public final zzeuu zzr(zzbvk zzbvkVar, int i) {
        return zzs(new zzevx(zzbvkVar, i));
    }

    public abstract zzeuu zzs(zzevx zzevxVar);

    public abstract zzewo zzt();

    public abstract zzeyc zzu();

    public abstract zzezt zzv();

    public abstract zzfbh zzw();

    public abstract zzfcy zzx();

    public abstract zzfdi zzy();

    public abstract zzfhk zzz();
}
