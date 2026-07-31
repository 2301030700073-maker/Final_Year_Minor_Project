package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfdi {
    private final zzfic zza;
    private final zzcxv zzb;
    private final Executor zzc;
    private zzfdg zzd;

    public zzfdi(zzfic zzficVar, zzcxv zzcxvVar, Executor executor) {
        this.zza = zzficVar;
        this.zzb = zzcxvVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzfim zzb() {
        zzfgn zzb = this.zzb.zzb();
        return this.zza.zzd(zzb.zzd, zzb.zzg, zzb.zzk);
    }

    public final ListenableFuture zza() {
        ListenableFuture listenableFuture;
        zzfdg zzfdgVar = this.zzd;
        if (zzfdgVar != null) {
            return zzgui.zza(zzfdgVar);
        }
        if (((Boolean) zzbhb.zza.zze()).booleanValue()) {
            zzgua zzw = zzgua.zzw(this.zzb.zza().zze(this.zza.zze()));
            zzfdf zzfdfVar = new zzfdf(this);
            Executor executor = this.zzc;
            listenableFuture = (zzgua) zzgui.zzg((zzgua) zzgui.zzk(zzw, zzfdfVar, executor), zzecj.class, new zzfde(this), executor);
        } else {
            zzfdg zzfdgVar2 = new zzfdg(null, zzb(), null);
            this.zzd = zzfdgVar2;
            listenableFuture = zzgui.zza(zzfdgVar2);
        }
        return zzgui.zzk(listenableFuture, zzfdh.zza, this.zzc);
    }

    final /* synthetic */ zzfdg zzc() {
        return this.zzd;
    }

    final /* synthetic */ void zzd(zzfdg zzfdgVar) {
        this.zzd = zzfdgVar;
    }
}
