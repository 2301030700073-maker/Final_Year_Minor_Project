package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdmg {
    private final Executor zza;
    private final zzcnr zzb;
    private final zzddm zzc;
    private final zzcmk zzd;

    public zzdmg(Executor executor, zzcnr zzcnrVar, zzddm zzddmVar, zzcmk zzcmkVar) {
        this.zza = executor;
        this.zzc = zzddmVar;
        this.zzb = zzcnrVar;
        this.zzd = zzcmkVar;
    }

    public final void zza(final zzcex zzcexVar) {
        if (zzcexVar == null) {
            return;
        }
        this.zzc.zza(zzcexVar.zzF());
        this.zzc.zzo(new zzayk() { // from class: com.google.android.gms.internal.ads.zzdmc
            @Override // com.google.android.gms.internal.ads.zzayk
            public final void zzdn(zzayj zzayjVar) {
                zzcgp zzN = zzcex.this.zzN();
                Rect rect = zzayjVar.zzd;
                zzN.zzr(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzo(new zzayk() { // from class: com.google.android.gms.internal.ads.zzdmd
            @Override // com.google.android.gms.internal.ads.zzayk
            public final void zzdn(zzayj zzayjVar) {
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != zzayjVar.zzj ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
                zzcex.this.zzd("onAdVisibilityChanged", hashMap);
            }
        }, this.zza);
        this.zzc.zzo(this.zzb, this.zza);
        this.zzb.zzf(zzcexVar);
        zzcgp zzN = zzcexVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjY)).booleanValue() && zzN != null) {
            zzN.zzL(this.zzd);
            zzN.zzM(this.zzd, null, null);
        }
        zzcexVar.zzag("/trackActiveViewUnit", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdme
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                zzdmg.this.zzb((zzcex) obj, map);
            }
        });
        zzcexVar.zzag("/untrackActiveViewUnit", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdmf
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                zzdmg.this.zzc((zzcex) obj, map);
            }
        });
    }

    public final /* synthetic */ void zzb(zzcex zzcexVar, Map map) {
        this.zzb.zzb();
    }

    public final /* synthetic */ void zzc(zzcex zzcexVar, Map map) {
        this.zzb.zza();
    }
}
