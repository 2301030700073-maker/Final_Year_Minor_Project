package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import defpackage.Creturn;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import j$.util.Optional;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdla {
    private final zzgcs zza;
    private final zzdlp zzb;
    private final zzdlu zzc;

    public zzdla(zzgcs zzgcsVar, zzdlp zzdlpVar, zzdlu zzdluVar) {
        this.zza = zzgcsVar;
        this.zzb = zzdlpVar;
        this.zzc = zzdluVar;
    }

    public static final /* synthetic */ zzdif zzb(InterfaceFutureC3942wq interfaceFutureC3942wq, InterfaceFutureC3942wq interfaceFutureC3942wq2, InterfaceFutureC3942wq interfaceFutureC3942wq3, InterfaceFutureC3942wq interfaceFutureC3942wq4, InterfaceFutureC3942wq interfaceFutureC3942wq5, JSONObject jSONObject, InterfaceFutureC3942wq interfaceFutureC3942wq6, InterfaceFutureC3942wq interfaceFutureC3942wq7, InterfaceFutureC3942wq interfaceFutureC3942wq8, InterfaceFutureC3942wq interfaceFutureC3942wq9, InterfaceFutureC3942wq interfaceFutureC3942wq10) {
        zzdif zzdifVar = (zzdif) interfaceFutureC3942wq.get();
        zzdifVar.zzP((List) interfaceFutureC3942wq2.get());
        zzdifVar.zzM((zzbfw) interfaceFutureC3942wq3.get());
        zzdifVar.zzQ((zzbfw) interfaceFutureC3942wq4.get());
        zzdifVar.zzJ((zzbfp) interfaceFutureC3942wq5.get());
        zzdifVar.zzS(zzdlp.zzj(jSONObject));
        zzdifVar.zzL(zzdlp.zzi(jSONObject));
        zzcex zzcexVar = (zzcex) interfaceFutureC3942wq6.get();
        if (zzcexVar != null) {
            zzdifVar.zzad(zzcexVar);
            zzdifVar.zzac(zzcexVar.zzF());
            zzdifVar.zzab(zzcexVar.zzq());
        }
        zzdifVar.zzd().putAll((Bundle) interfaceFutureC3942wq7.get());
        zzcex zzcexVar2 = (zzcex) interfaceFutureC3942wq8.get();
        if (zzcexVar2 != null) {
            zzdifVar.zzO(zzcexVar2);
            zzdifVar.zzae(zzcexVar2.zzF());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue() || zzc(jSONObject)) {
            zzcex zzcexVar3 = (zzcex) interfaceFutureC3942wq9.get();
            if (zzcexVar3 != null) {
                zzdifVar.zzT(zzcexVar3);
            }
        } else {
            zzdifVar.zzU(interfaceFutureC3942wq9);
            zzdifVar.zzX(new zzcab());
        }
        for (zzdlt zzdltVar : (List) interfaceFutureC3942wq10.get()) {
            if (zzdltVar.zza != 1) {
                zzdifVar.zzN(zzdltVar.zzb, zzdltVar.zzd);
            } else {
                zzdifVar.zzZ(zzdltVar.zzb, zzdltVar.zzc);
            }
        }
        return zzdifVar;
    }

    private static final boolean zzc(JSONObject jSONObject) {
        return jSONObject.optInt("template_id") == 3;
    }

    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar, final JSONObject jSONObject) {
        final InterfaceFutureC3942wq zzh;
        InterfaceFutureC3942wq zzh2;
        final InterfaceFutureC3942wq zzb = this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdkv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdif zzdifVar = new zzdif();
                JSONObject jSONObject2 = jSONObject;
                zzdifVar.zzaa(jSONObject2.optInt("template_id", -1));
                zzdifVar.zzK(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                String optString = optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null;
                zzfca zzfcaVar2 = zzfcaVar;
                zzdifVar.zzV(optString);
                zzfcj zzfcjVar = zzfcaVar2.zza.zza;
                if (!zzfcjVar.zzg.contains(Integer.toString(zzdifVar.zzc()))) {
                    throw new zzegu(1, V1.m2494case("Invalid template ID: ", zzdifVar.zzc()));
                }
                if (zzdifVar.zzc() == 3) {
                    if (zzdifVar.zzA() == null) {
                        throw new zzegu(1, "No custom template id for custom template ad response.");
                    }
                    if (!zzfcjVar.zzh.contains(zzdifVar.zzA())) {
                        throw new zzegu(1, "Unexpected custom template id in the response.");
                    }
                }
                zzfbo zzfboVar2 = zzfboVar;
                zzdifVar.zzY(jSONObject2.optDouble("rating", -1.0d));
                String optString2 = jSONObject2.optString("headline", null);
                if (zzfboVar2.zzM) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    optString2 = Creturn.m7982new(com.google.android.gms.ads.internal.util.zzs.zzz(), " : ", optString2);
                }
                zzdifVar.zzZ("headline", optString2);
                zzdifVar.zzZ("body", jSONObject2.optString("body", null));
                zzdifVar.zzZ("call_to_action", jSONObject2.optString("call_to_action", null));
                zzdifVar.zzZ("store", jSONObject2.optString("store", null));
                zzdifVar.zzZ("price", jSONObject2.optString("price", null));
                zzdifVar.zzZ("advertiser", jSONObject2.optString("advertiser", null));
                return zzdifVar;
            }
        });
        final InterfaceFutureC3942wq zzf = this.zzb.zzf(jSONObject, "images");
        zzfbr zzfbrVar = zzfcaVar.zzb.zzb;
        zzdlp zzdlpVar = this.zzb;
        final InterfaceFutureC3942wq zzg = zzdlpVar.zzg(jSONObject, "images", zzfboVar, zzfbrVar);
        final InterfaceFutureC3942wq zze = zzdlpVar.zze(jSONObject, "secondary_image");
        final InterfaceFutureC3942wq zze2 = zzdlpVar.zze(jSONObject, "app_icon");
        final InterfaceFutureC3942wq zzd = zzdlpVar.zzd(jSONObject, "attribution");
        final InterfaceFutureC3942wq zzh3 = this.zzb.zzh(jSONObject, zzfboVar, zzfcaVar.zzb.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmO)).booleanValue() && ((Integer) Optional.ofNullable(jSONObject.optJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdkw
            @Override // java.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((JSONObject) obj).optJSONArray("flags");
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdkx
            @Override // java.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject.optString("key").equals("afma_video_player_type")) {
                        return optJSONObject.optString("value");
                    }
                }
                return null;
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdky
            @Override // java.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(Integer.parseInt((String) obj));
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).orElse(0)).intValue() == 3) {
            zzdlp zzdlpVar2 = this.zzb;
            zzcab zzcabVar = new zzcab();
            zzgch.zzr(zzh3, new zzdlo(zzdlpVar2, zzcabVar), zzbzw.zzf);
            zzh = zzcabVar;
        } else {
            zzh = zzgch.zzh(new Bundle());
        }
        final InterfaceFutureC3942wq zza = this.zzc.zza(jSONObject, "custom_assets");
        final zzdlp zzdlpVar3 = this.zzb;
        if (jSONObject.optBoolean("enable_omid")) {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzh2 = zzgch.zzh(null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                zzh2 = TextUtils.isEmpty(optString) ? zzgch.zzh(null) : zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdle
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        return zzdlp.this.zzc(optString, obj);
                    }
                }, zzbzw.zzf);
            }
        } else {
            zzh2 = zzgch.zzh(null);
        }
        final InterfaceFutureC3942wq interfaceFutureC3942wq = zzh2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzb);
        arrayList.add(zzf);
        arrayList.add(zzg);
        arrayList.add(zze);
        arrayList.add(zze2);
        arrayList.add(zzd);
        arrayList.add(zzh3);
        arrayList.add(zzh);
        arrayList.add(zza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue() || zzc(jSONObject)) {
            arrayList.add(interfaceFutureC3942wq);
        }
        return zzgch.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdkz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdla.zzb(zzb, zzf, zze2, zze, zzd, jSONObject, zzh3, zzh, zzg, interfaceFutureC3942wq, zza);
            }
        }, this.zza);
    }
}
