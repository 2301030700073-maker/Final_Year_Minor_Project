package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzefq implements zzefk {
    private final zzdgq zza;
    private final zzgcs zzb;
    private final zzdla zzc;
    private final zzfdi zzd;
    private final zzdnr zze;
    private final zzdrq zzf;

    public zzefq(zzdgq zzdgqVar, zzgcs zzgcsVar, zzdla zzdlaVar, zzfdi zzfdiVar, zzdnr zzdnrVar, zzdrq zzdrqVar) {
        this.zza = zzdgqVar;
        this.zzb = zzgcsVar;
        this.zzc = zzdlaVar;
        this.zzd = zzfdiVar;
        this.zze = zzdnrVar;
        this.zzf = zzdrqVar;
    }

    private final InterfaceFutureC3942wq zzg(final zzfca zzfcaVar, final zzfbo zzfboVar, final JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            V1.m2496class(this.zzf.zza(), zzdre.RENDERING_WEBVIEW_CREATION_START.zza());
        }
        zzfdi zzfdiVar = this.zzd;
        zzdla zzdlaVar = this.zzc;
        final InterfaceFutureC3942wq zza = zzfdiVar.zza();
        final InterfaceFutureC3942wq zza2 = zzdlaVar.zza(zzfcaVar, zzfboVar, jSONObject);
        return zzgch.zzc(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzefl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzefq.this.zzc(zza2, zza, zzfcaVar, zzfboVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return zzgch.zzn(zzgch.zzn(this.zzd.zza(), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefn
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzefq.this.zze(zzfboVar, (zzdnl) obj);
            }
        }, this.zzb), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefo
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzefq.this.zzf(zzfcaVar, zzfboVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zzc == null) ? false : true;
    }

    public final /* synthetic */ zzdia zzc(InterfaceFutureC3942wq interfaceFutureC3942wq, InterfaceFutureC3942wq interfaceFutureC3942wq2, zzfca zzfcaVar, zzfbo zzfboVar, JSONObject jSONObject) {
        zzdif zzdifVar = (zzdif) interfaceFutureC3942wq.get();
        zzdnl zzdnlVar = (zzdnl) interfaceFutureC3942wq2.get();
        zzbcc zzbccVar = zzbcl.zzcm;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzf.zza(), zzdre.RENDERING_WEBVIEW_CREATION_END.zza());
        }
        zzdig zzd = this.zza.zzd(new zzcrp(zzfcaVar, zzfboVar, null), new zzdir(zzdifVar), new zzdhd(jSONObject, zzdnlVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            this.zzf.zza().putLong(zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza(), currentTimeMillis);
            this.zzf.zza().putLong(zzdre.RENDERING_CONFIGURE_WEBVIEW_START.zza(), currentTimeMillis);
        }
        zzd.zzh().zzb();
        zzd.zzi().zza(zzdnlVar);
        zzd.zzg().zza(zzdifVar.zzs());
        zzd.zzl().zza(this.zze, zzdifVar.zzq());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzf.zza(), zzdre.RENDERING_CONFIGURE_WEBVIEW_END.zza());
        }
        return zzd.zza();
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzd(zzdnl zzdnlVar, JSONObject jSONObject) {
        this.zzd.zzb(zzgch.zzh(zzdnlVar));
        if (jSONObject.optBoolean("success")) {
            return zzgch.zzh(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbnv("process json failed");
    }

    public final /* synthetic */ InterfaceFutureC3942wq zze(zzfbo zzfboVar, final zzdnl zzdnlVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziA)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzfboVar.zzs.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzgch.zzn(zzdnlVar.zzg("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefm
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzefq.this.zzd(zzdnlVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzf(zzfca zzfcaVar, zzfbo zzfboVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzgch.zzg(new zzdvy(3));
        }
        if (zzfcaVar.zza.zza.zzk <= 1) {
            return zzgch.zzm(zzg(zzfcaVar, zzfboVar, jSONArray.getJSONObject(0)), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzefp
                @Override // com.google.android.gms.internal.ads.zzfuc
                public final Object apply(Object obj) {
                    return Collections.singletonList(zzgch.zzh((zzdia) obj));
                }
            }, this.zzb);
        }
        int length = jSONArray.length();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcn)).booleanValue()) {
            this.zzf.zzc("nsl", String.valueOf(length));
        }
        this.zzd.zzc(Math.min(length, zzfcaVar.zza.zza.zzk));
        ArrayList arrayList = new ArrayList(zzfcaVar.zza.zza.zzk);
        for (int i = 0; i < zzfcaVar.zza.zza.zzk; i++) {
            if (i < length) {
                arrayList.add(zzg(zzfcaVar, zzfboVar, jSONArray.getJSONObject(i)));
            } else {
                arrayList.add(zzgch.zzg(new zzdvy(3)));
            }
        }
        return zzgch.zzh(arrayList);
    }
}
