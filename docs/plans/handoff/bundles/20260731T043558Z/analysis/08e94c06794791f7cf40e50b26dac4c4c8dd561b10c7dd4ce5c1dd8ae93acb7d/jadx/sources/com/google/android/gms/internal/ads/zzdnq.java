package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdnq implements zzczi {
    private final zzdlq zza;
    private final zzdlv zzb;
    private final Executor zzc;
    private final Executor zzd;

    public zzdnq(zzdlq zzdlqVar, zzdlv zzdlvVar, Executor executor, Executor executor2) {
        this.zza = zzdlqVar;
        this.zzb = zzdlvVar;
        this.zzc = executor;
        this.zzd = executor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final void zza(final zzcgy zzcgyVar) {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnp
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcgy.this.zze("onSdkImpression", new ArrayMap());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczi
    public final void zzdw() {
        if (this.zzb.zzd()) {
            zzdlq zzdlqVar = this.zza;
            zzehf zzZ = zzdlqVar.zzZ();
            if (zzZ == null && zzdlqVar.zzX() != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfW)).booleanValue()) {
                ListenableFuture zzX = zzdlqVar.zzX();
                zzcca zzY = zzdlqVar.zzY();
                if (zzX == null || zzY == null) {
                    return;
                }
                zzgui.zzr(zzgui.zzq(zzX, zzY), new zzdno(this), this.zzd);
                return;
            }
            if (zzZ != null) {
                zzcgy zzW = zzdlqVar.zzW();
                zzcgy zzT = zzdlqVar.zzT();
                if (zzW == null) {
                    zzW = zzT == null ? null : zzT;
                }
                if (zzW != null) {
                    zza(zzW);
                }
            }
        }
    }
}
