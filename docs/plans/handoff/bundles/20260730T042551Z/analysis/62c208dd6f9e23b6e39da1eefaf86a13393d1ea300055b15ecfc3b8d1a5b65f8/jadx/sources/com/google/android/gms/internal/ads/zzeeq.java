package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzeeq implements zzecw {
    private final zzcpq zza;
    private final zzedx zzb;
    private final zzgcs zzc;
    private final zzcvv zzd;
    private final ScheduledExecutorService zze;
    private final zzdrq zzf;

    public zzeeq(zzcpq zzcpqVar, zzedx zzedxVar, zzcvv zzcvvVar, ScheduledExecutorService scheduledExecutorService, zzgcs zzgcsVar, zzdrq zzdrqVar) {
        this.zza = zzcpqVar;
        this.zzb = zzedxVar;
        this.zzd = zzcvvVar;
        this.zze = scheduledExecutorService;
        this.zzc = zzgcsVar;
        this.zzf = zzdrqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeen
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeeq.this.zzc(zzfcaVar, zzfboVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzbhn zza = zzfcaVar.zza.zza.zza();
        boolean zzb = this.zzb.zzb(zzfcaVar, zzfboVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlQ)).booleanValue()) {
            zzdrq zzdrqVar = this.zzf;
            String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            zzdrqVar.zzb().put("has_dbl", zza != null ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            zzdrq zzdrqVar2 = this.zzf;
            if (true != zzb) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            zzdrqVar2.zzb().put("crdb", str);
        }
        return zza != null && zzb;
    }

    public final /* synthetic */ zzcom zzc(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return this.zza.zzb(new zzcrp(zzfcaVar, zzfboVar, null), new zzcqh(zzfcaVar.zza.zza.zza(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeo
            @Override // java.lang.Runnable
            public final void run() {
                zzeeq.this.zzf(zzfcaVar, zzfboVar);
            }
        })).zza();
    }

    public final /* synthetic */ void zzf(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzgch.zzr(zzgch.zzo(this.zzb.zza(zzfcaVar, zzfboVar), zzfboVar.zzR, TimeUnit.SECONDS, this.zze), new zzeep(this), this.zzc);
    }
}
