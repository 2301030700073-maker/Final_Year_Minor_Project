package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzezj implements zzeya {
    private final zzcbj zza;
    private final ScheduledExecutorService zzb;
    private final zzgus zzc;

    zzezj(String str, zzbcw zzbcwVar, zzcbj zzcbjVar, ScheduledExecutorService scheduledExecutorService, zzgus zzgusVar) {
        this.zza = zzcbjVar;
        this.zzb = scheduledExecutorService;
        this.zzc = zzgusVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdt)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdy)).booleanValue()) {
                ListenableFuture zza = zzfxf.zza(Tasks.forResult(null), null);
                zzgus zzgusVar = this.zzc;
                ListenableFuture zzj = zzgui.zzj(zza, zzezi.zza, zzgusVar);
                if (((Boolean) zzbgh.zza.zze()).booleanValue()) {
                    zzj = zzgui.zzi(zzj, ((Long) zzbgh.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
                }
                return zzgui.zzg(zzj, Exception.class, new zzglu() { // from class: com.google.android.gms.internal.ads.zzezh
                    @Override // com.google.android.gms.internal.ads.zzglu
                    public final /* synthetic */ Object apply(Object obj) {
                        return zzezj.this.zzc((Exception) obj);
                    }
                }, zzgusVar);
            }
        }
        return zzgui.zza(new zzezk(null, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 43;
    }

    final /* synthetic */ zzezk zzc(Exception exc) {
        this.zza.zzg(exc, "AppSetIdInfoGmscoreSignal");
        return new zzezk(null, -1);
    }
}
