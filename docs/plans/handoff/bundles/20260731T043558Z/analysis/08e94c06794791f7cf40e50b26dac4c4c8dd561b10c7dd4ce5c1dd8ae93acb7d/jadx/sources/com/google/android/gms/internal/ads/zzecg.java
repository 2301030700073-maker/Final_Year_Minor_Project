package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzecg implements zzeci {
    private final Map zza;
    private final zzgus zzb;
    private final zzdbs zzc;

    public zzecg(Map map, zzgus zzgusVar, zzdbs zzdbsVar) {
        this.zza = map;
        this.zzb = zzgusVar;
        this.zzc = zzdbsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeci
    public final ListenableFuture zza(final zzbxj zzbxjVar) {
        this.zzc.zzdT(zzbxjVar);
        ListenableFuture zzc = zzgui.zzc(new zzdzv(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjc)).split(",")) {
            final zzifw zzifwVar = (zzifw) this.zza.get(str.trim());
            if (zzifwVar != null) {
                zzc = zzgui.zzh(zzc, zzdzv.class, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzecf
                    @Override // com.google.android.gms.internal.ads.zzgtq
                    public final /* synthetic */ ListenableFuture zza(Object obj) {
                        return ((zzeci) zzifw.this.zzb()).zza(zzbxjVar);
                    }
                }, this.zzb);
            }
        }
        zzgui.zzr(zzc, new zzece(this), zzcbv.zzg);
        return zzc;
    }

    final /* synthetic */ zzdbs zzb() {
        return this.zzc;
    }
}
