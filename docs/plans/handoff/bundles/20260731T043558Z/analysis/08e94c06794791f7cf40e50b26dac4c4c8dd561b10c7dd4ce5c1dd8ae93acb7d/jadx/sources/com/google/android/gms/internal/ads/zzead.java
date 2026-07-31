package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzead {
    private final zzgus zza;
    private final zzgus zzb;
    private final zzebn zzc;
    private final zzifb zzd;

    public zzead(zzgus zzgusVar, zzgus zzgusVar2, zzebn zzebnVar, zzifb zzifbVar) {
        this.zza = zzgusVar;
        this.zzb = zzgusVar2;
        this.zzc = zzebnVar;
        this.zzd = zzifbVar;
    }

    public final ListenableFuture zza(final zzbxj zzbxjVar) {
        ListenableFuture zzh;
        String str = zzbxjVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzc();
        if (com.google.android.gms.ads.internal.util.zzs.zzG(str)) {
            zzh = zzgui.zzc(new zzecj(1));
        } else {
            zzh = zzgui.zzh(this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzeac
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzead.this.zzb(zzbxjVar);
                }
            }), ExecutionException.class, zzdzz.zza, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgui.zzh(zzh, zzecj.class, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzeaa
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzead.this.zzc(zzbxjVar, callingUid, (zzecj) obj);
            }
        }, this.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzeck zzb(zzbxj zzbxjVar) {
        return (zzeck) this.zzc.zza(zzbxjVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgi)).intValue(), TimeUnit.SECONDS);
    }

    final /* synthetic */ ListenableFuture zzc(final zzbxj zzbxjVar, int i, zzecj zzecjVar) {
        Bundle bundle;
        if (zzbxjVar != null && (bundle = zzbxjVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgui.zzj(((zzeea) this.zzd.zzb()).zzb(zzbxjVar, i), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzeab
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgui.zza(new zzeck((InputStream) obj, zzbxj.this));
            }
        }, this.zzb);
    }
}
