package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.InterfaceFutureC3942wq;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzdxe implements zzdyg {
    private static final Pattern zza = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzdwg zzb;
    private final zzgcs zzc;
    private final zzfcj zzd;
    private final ScheduledExecutorService zze;
    private final zzeag zzf;
    private final zzfhh zzg;
    private final Context zzh;

    public zzdxe(Context context, zzfcj zzfcjVar, zzdwg zzdwgVar, zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzeag zzeagVar, zzfhh zzfhhVar) {
        this.zzh = context;
        this.zzd = zzfcjVar;
        this.zzb = zzdwgVar;
        this.zzc = zzgcsVar;
        this.zze = scheduledExecutorService;
        this.zzf = zzeagVar;
        this.zzg = zzfhhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyg
    public final InterfaceFutureC3942wq zzb(zzbvk zzbvkVar) {
        Context context = this.zzh;
        InterfaceFutureC3942wq zzc = this.zzb.zzc(zzbvkVar);
        zzfgw zza2 = zzfgv.zza(context, 11);
        zzfhg.zzd(zzc, zza2);
        InterfaceFutureC3942wq zzn = zzgch.zzn(zzc, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxb
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdxe.this.zzc((zzdyi) obj);
            }
        }, this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfx)).booleanValue()) {
            zzn = zzgch.zzf(zzgch.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS, this.zze), TimeoutException.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxc
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    return zzgch.zzg(new zzdvy(5));
                }
            }, zzbzw.zzg);
        }
        zzfhg.zza(zzn, this.zzg, zza2);
        zzgch.zzr(zzn, new zzdxd(this), zzbzw.zzg);
        return zzn;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(zzdyi zzdyiVar) {
        return zzgch.zzh(new zzfca(new zzfbx(this.zzd), zzfbz.zza(new InputStreamReader(zzdyiVar.zzb()), zzdyiVar.zza())));
    }
}
