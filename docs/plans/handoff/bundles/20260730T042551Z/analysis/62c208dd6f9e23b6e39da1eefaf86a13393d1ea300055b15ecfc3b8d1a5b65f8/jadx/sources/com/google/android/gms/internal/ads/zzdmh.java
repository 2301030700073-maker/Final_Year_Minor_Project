package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.InterfaceFutureC3942wq;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdmh {
    private final zzfcj zza;
    private final Executor zzb;
    private final zzdow zzc;
    private final zzdnr zzd;
    private final Context zze;
    private final zzdrw zzf;
    private final zzfja zzg;
    private final zzebk zzh;

    public zzdmh(zzfcj zzfcjVar, Executor executor, zzdow zzdowVar, Context context, zzdrw zzdrwVar, zzfja zzfjaVar, zzebk zzebkVar, zzdnr zzdnrVar) {
        this.zza = zzfcjVar;
        this.zzb = executor;
        this.zzc = zzdowVar;
        this.zze = context;
        this.zzf = zzdrwVar;
        this.zzg = zzfjaVar;
        this.zzh = zzebkVar;
        this.zzd = zzdnrVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzh(zzcex zzcexVar) {
        zzj(zzcexVar);
        zzcexVar.zzag("/video", zzbjo.zzl);
        zzcexVar.zzag("/videoMeta", zzbjo.zzm);
        zzcexVar.zzag("/precache", new zzcdf());
        zzcexVar.zzag("/delayPageLoaded", zzbjo.zzp);
        zzcexVar.zzag("/instrument", zzbjo.zzn);
        zzcexVar.zzag("/log", zzbjo.zzg);
        zzcexVar.zzag("/click", new zzbin(null, 0 == true ? 1 : 0));
        if (this.zza.zzb != null) {
            zzcexVar.zzN().zzG(true);
            zzcexVar.zzag("/open", new zzbkb(null, null, null, null, null));
        } else {
            zzcexVar.zzN().zzG(false);
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcexVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcexVar.zzD() != null) {
                hashMap = zzcexVar.zzD().zzaw;
            }
            zzcexVar.zzag("/logScionEvent", new zzbjv(zzcexVar.getContext(), hashMap));
        }
    }

    private final void zzi(zzcex zzcexVar, zzcaa zzcaaVar) {
        if (this.zza.zza != null && zzcexVar.zzq() != null) {
            zzcexVar.zzq().zzs(this.zza.zza);
        }
        zzcaaVar.zzb();
    }

    private static final void zzj(zzcex zzcexVar) {
        zzcexVar.zzag("/videoClicked", zzbjo.zzh);
        zzcexVar.zzN().zzI(true);
        zzcexVar.zzag("/getNativeAdViewSignals", zzbjo.zzs);
        zzcexVar.zzag("/getNativeClickMeta", zzbjo.zzt);
    }

    public final InterfaceFutureC3942wq zza(final JSONObject jSONObject) {
        return zzgch.zzn(zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdly
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdmh.this.zze(obj);
            }
        }, this.zzb), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdlx
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdmh.this.zzc(jSONObject, (zzcex) obj);
            }
        }, this.zzb);
    }

    public final InterfaceFutureC3942wq zzb(final String str, final String str2, final zzfbo zzfboVar, final zzfbr zzfbrVar, final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        return zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdlw
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdmh.this.zzd(zzsVar, zzfboVar, zzfbrVar, str, str2, obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(JSONObject jSONObject, final zzcex zzcexVar) {
        zzblz zzblzVar = this.zza.zzb;
        final zzcaa zza = zzcaa.zza(zzcexVar);
        if (zzblzVar != null) {
            zzcexVar.zzaj(zzcgr.zzd());
        } else {
            zzcexVar.zzaj(zzcgr.zze());
        }
        zzcexVar.zzN().zzC(new zzcgn() { // from class: com.google.android.gms.internal.ads.zzdma
            @Override // com.google.android.gms.internal.ads.zzcgn
            public final void zza(boolean z, int i, String str, String str2) {
                zzdmh.this.zzf(zzcexVar, zza, z, i, str, str2);
            }
        });
        zzcexVar.zzl("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzd(com.google.android.gms.ads.internal.client.zzs zzsVar, zzfbo zzfboVar, zzfbr zzfbrVar, String str, String str2, Object obj) {
        final zzcex zza = this.zzc.zza(zzsVar, zzfboVar, zzfbrVar);
        final zzcaa zza2 = zzcaa.zza(zza);
        if (this.zza.zzb != null) {
            zzh(zza);
            zza.zzaj(zzcgr.zzd());
        } else {
            zzdno zzb = this.zzd.zzb();
            zza.zzN().zzV(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zze, null, null), null, null, this.zzh, this.zzg, this.zzf, null, zzb, null, null, null, null);
            zzj(zza);
        }
        zza.zzN().zzC(new zzcgn() { // from class: com.google.android.gms.internal.ads.zzdmb
            @Override // com.google.android.gms.internal.ads.zzcgn
            public final void zza(boolean z, int i, String str3, String str4) {
                zzdmh.this.zzg(zza, zza2, z, i, str3, str4);
            }
        });
        zza.zzae(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zze(Object obj) {
        zzcex zza = this.zzc.zza(com.google.android.gms.ads.internal.client.zzs.zzc(), null, null);
        final zzcaa zza2 = zzcaa.zza(zza);
        zzh(zza);
        zza.zzN().zzJ(new zzcgo() { // from class: com.google.android.gms.internal.ads.zzdlz
            @Override // com.google.android.gms.internal.ads.zzcgo
            public final void zza() {
                zzcaa.this.zzb();
            }
        });
        zza.loadUrl((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdR));
        return zza2;
    }

    public final /* synthetic */ void zzf(zzcex zzcexVar, zzcaa zzcaaVar, boolean z, int i, String str, String str2) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdZ)).booleanValue()) {
            zzi(zzcexVar, zzcaaVar);
            return;
        }
        if (z) {
            zzi(zzcexVar, zzcaaVar);
            return;
        }
        zzcaaVar.zzd(new zzegu(1, "Native Video WebView failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
    }

    public final /* synthetic */ void zzg(zzcex zzcexVar, zzcaa zzcaaVar, boolean z, int i, String str, String str2) {
        if (z) {
            if (this.zza.zza != null && zzcexVar.zzq() != null) {
                zzcexVar.zzq().zzs(this.zza.zza);
            }
            zzcaaVar.zzb();
            return;
        }
        zzcaaVar.zzd(new zzegu(1, "Html video Web View failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
    }
}
