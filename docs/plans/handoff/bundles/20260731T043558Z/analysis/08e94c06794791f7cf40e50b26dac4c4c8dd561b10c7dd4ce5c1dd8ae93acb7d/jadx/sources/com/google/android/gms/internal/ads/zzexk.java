package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzexk implements zzeya {
    private final zzcaf zza;
    private final zzgus zzb;
    private final Context zzc;

    public zzexk(zzcaf zzcafVar, zzgus zzgusVar, Context context) {
        this.zza = zzcafVar;
        this.zzb = zzgusVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zzb.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzexj
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzexk.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 34;
    }

    final /* synthetic */ zzexl zzc() {
        zzcaf zzcafVar = this.zza;
        Context context = this.zzc;
        if (!zzcafVar.zza(context)) {
            return new zzexl(null, null, null, null, null);
        }
        String zzh = zzcafVar.zzh(context);
        String str = zzh == null ? "" : zzh;
        String zzi = zzcafVar.zzi(context);
        String str2 = zzi == null ? "" : zzi;
        String zzj = zzcafVar.zzj(context);
        String str3 = zzj == null ? "" : zzj;
        String str4 = true != zzcafVar.zza(context) ? null : "fa";
        return new zzexl(str, str2, str3, str4 == null ? "" : str4, "TIME_OUT".equals(str2) ? (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaC) : null);
    }
}
