package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdpq {
    private final zzfgn zza;
    private final Executor zzb;
    private final zzdse zzc;
    private final zzdqz zzd;
    private final Context zze;
    private final zzdvi zzf;
    private final zzfng zzg;
    private final zzefy zzh;
    private final zzdvc zzi;
    private final zzdwl zzj;

    public zzdpq(zzfgn zzfgnVar, Executor executor, zzdse zzdseVar, Context context, zzdvi zzdviVar, zzfng zzfngVar, zzefy zzefyVar, zzdqz zzdqzVar, zzdvc zzdvcVar, zzdwl zzdwlVar) {
        this.zza = zzfgnVar;
        this.zzb = executor;
        this.zzc = zzdseVar;
        this.zze = context;
        this.zzf = zzdviVar;
        this.zzg = zzfngVar;
        this.zzh = zzefyVar;
        this.zzd = zzdqzVar;
        this.zzi = zzdvcVar;
        this.zzj = zzdwlVar;
    }

    private final void zzh(zzcgy zzcgyVar, zzcbz zzcbzVar) {
        com.google.android.gms.ads.internal.client.zzga zzgaVar = this.zza.zza;
        if (zzgaVar != null && zzcgyVar.zzh() != null) {
            zzcgyVar.zzh().zzc(zzgaVar);
        }
        zzcbzVar.zzb();
    }

    private final void zzi(zzcgy zzcgyVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar) {
        zzdwl zzdwlVar;
        zzj(zzcgyVar);
        zzcgyVar.zzab("/video", zzblw.zzl);
        zzcgyVar.zzab("/videoMeta", zzblw.zzm);
        zzcgyVar.zzab("/precache", new zzcff());
        zzcgyVar.zzab("/delayPageLoaded", zzblw.zzp);
        zzcgyVar.zzab("/instrument", zzblw.zzn);
        zzcgyVar.zzab("/log", zzblw.zzg);
        zzcgyVar.zzab("/click", zzblw.zzb(null, null));
        if (this.zza.zzb != null) {
            zzcgyVar.zzP().zzR(true);
            zzcgyVar.zzab("/open", new zzbmk(true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoB)).booleanValue() ? null : zzbVar, null, null, null, null, null));
        } else {
            zzcgyVar.zzP().zzR(false);
        }
        if (com.google.android.gms.ads.internal.zzt.zzD().zza(zzcgyVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcgyVar.zzC() != null) {
                hashMap = zzcgyVar.zzC().zzaw;
            }
            zzcgyVar.zzab("/logScionEvent", new zzbmd(zzcgyVar.getContext(), hashMap));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoB)).booleanValue()) {
            zzcgyVar.zzP().zzi(zzbVar);
            zzcgyVar.zzP().zzj(zzbztVar);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziu)).booleanValue() || (zzdwlVar = this.zzj) == null) {
            return;
        }
        zzcgyVar.zzab("/onDeviceStorageEvent", new zzbmf(zzdwlVar));
    }

    private static final void zzj(zzcgy zzcgyVar) {
        zzcgyVar.zzab("/videoClicked", zzblw.zzh);
        zzcgyVar.zzP().zzP(true);
        zzcgyVar.zzab("/getNativeAdViewSignals", zzblw.zzs);
        zzcgyVar.zzab("/getNativeClickMeta", zzblw.zzt);
    }

    public final ListenableFuture zza(final JSONObject jSONObject, final com.google.android.gms.ads.internal.zzb zzbVar, final zzbzt zzbztVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzi.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_VIDEO_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        ListenableFuture zza = zzgui.zza(null);
        zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdpl
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzdpq.this.zze(zzbVar, zzbztVar, obj);
            }
        };
        Executor executor = this.zzb;
        return zzgui.zzj(zzgui.zzj(zza, zzgtqVar, executor), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdpp
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzdpq.this.zzc(jSONObject, (zzcgy) obj);
            }
        }, executor);
    }

    public final ListenableFuture zzb(final String str, final String str2, final zzffu zzffuVar, final zzffx zzffxVar, final com.google.android.gms.ads.internal.client.zzr zzrVar, final com.google.android.gms.ads.internal.zzb zzbVar, final zzbzt zzbztVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzi.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_VIDEO_COMPOSITION_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdpk
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzdpq.this.zzd(zzrVar, zzffuVar, zzffxVar, zzbVar, zzbztVar, str, str2, obj);
            }
        }, this.zzb);
    }

    final /* synthetic */ ListenableFuture zzc(JSONObject jSONObject, final zzcgy zzcgyVar) {
        zzboi zzboiVar = this.zza.zzb;
        final zzcbz zza = zzcbz.zza(zzcgyVar);
        if (zzboiVar != null) {
            zzcgyVar.zzaf(zzcji.zze());
        } else {
            zzcgyVar.zzaf(zzcji.zzd());
        }
        zzcgyVar.zzP().zzG(new zzciu() { // from class: com.google.android.gms.internal.ads.zzdpo
            @Override // com.google.android.gms.internal.ads.zzciu
            public final /* synthetic */ void zza(boolean z, int i, String str, String str2) {
                zzdpq.this.zzg(zzcgyVar, zza, z, i, str, str2);
            }
        });
        zzcgyVar.zzb("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    final /* synthetic */ ListenableFuture zzd(com.google.android.gms.ads.internal.client.zzr zzrVar, zzffu zzffuVar, zzffx zzffxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar, String str, String str2, Object obj) {
        final zzcgy zza = this.zzc.zza(zzrVar, zzffuVar, zzffxVar);
        final zzcbz zza2 = zzcbz.zza(zza);
        if (this.zza.zzb != null) {
            zzi(zza, zzbVar, zzbztVar);
            zza.zzaf(zzcji.zze());
        } else {
            zzdqw zza3 = this.zzd.zza();
            zzciw zzP = zza.zzP();
            zzbel zzbelVar = zzbeu.zzoB;
            zzP.zzZ(zza3, zza3, zza3, zza3, zza3, false, null, !((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue() ? new com.google.android.gms.ads.internal.zzb(this.zze, null, null) : zzbVar, null, true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue() ? null : zzbztVar, this.zzh, this.zzg, this.zzf, null, zza3, null, null, null, null, this.zzj, null);
            zzj(zza);
        }
        zza.zzP().zzG(new zzciu() { // from class: com.google.android.gms.internal.ads.zzdpn
            @Override // com.google.android.gms.internal.ads.zzciu
            public final /* synthetic */ void zza(boolean z, int i, String str3, String str4) {
                zzdpq.this.zzf(zza, zza2, z, i, str3, str4);
            }
        });
        zza.zzau(str, str2, null);
        return zza2;
    }

    final /* synthetic */ ListenableFuture zze(com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar, Object obj) {
        zzcgy zza = this.zzc.zza(com.google.android.gms.ads.internal.client.zzr.zzb(), null, null);
        final zzcbz zza2 = zzcbz.zza(zza);
        zzi(zza, zzbVar, zzbztVar);
        zza.zzP().zzH(new zzciv() { // from class: com.google.android.gms.internal.ads.zzdpm
            @Override // com.google.android.gms.internal.ads.zzciv
            public final /* synthetic */ void zza() {
                zzcbz.this.zzb();
            }
        });
        zza.loadUrl((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeo));
        return zza2;
    }

    final /* synthetic */ void zzf(zzcgy zzcgyVar, zzcbz zzcbzVar, boolean z, int i, String str, String str2) {
        if (z) {
            com.google.android.gms.ads.internal.client.zzga zzgaVar = this.zza.zza;
            if (zzgaVar != null && zzcgyVar.zzh() != null) {
                zzcgyVar.zzh().zzc(zzgaVar);
            }
            zzcbzVar.zzb();
            return;
        }
        int length = String.valueOf(i).length();
        StringBuilder sb = new StringBuilder(length + 63 + String.valueOf(str).length() + 15 + String.valueOf(str2).length());
        sb.append("Html video Web View failed to load. Error code: ");
        sb.append(i);
        sb.append(", Description: ");
        sb.append(str);
        sb.append(", Failing URL: ");
        sb.append(str2);
        zzcbzVar.zzd(new zzekz(1, sb.toString()));
    }

    final /* synthetic */ void zzg(zzcgy zzcgyVar, zzcbz zzcbzVar, boolean z, int i, String str, String str2) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzew)).booleanValue()) {
            zzh(zzcgyVar, zzcbzVar);
            return;
        }
        if (z) {
            zzh(zzcgyVar, zzcbzVar);
            return;
        }
        int length = String.valueOf(i).length();
        StringBuilder sb = new StringBuilder(length + 64 + String.valueOf(str).length() + 15 + String.valueOf(str2).length());
        sb.append("Native Video WebView failed to load. Error code: ");
        sb.append(i);
        sb.append(", Description: ");
        sb.append(str);
        sb.append(", Failing URL: ");
        sb.append(str2);
        zzcbzVar.zzd(new zzekz(1, sb.toString()));
    }
}
