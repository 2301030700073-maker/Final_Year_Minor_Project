package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzdwz;
import com.google.android.gms.internal.ads.zzdyi;
import com.google.android.gms.internal.ads.zzgbo;
import com.google.android.gms.internal.ads.zzgch;
import defpackage.InterfaceFutureC3942wq;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zzbi implements zzgbo {

    /* renamed from: do, reason: not valid java name */
    public final zzdwz f10042do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f10043do;

    public zzbi(Executor executor, zzdwz zzdwzVar) {
        this.f10043do = executor;
        this.f10042do = zzdwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final /* bridge */ /* synthetic */ InterfaceFutureC3942wq zza(Object obj) {
        final zzbvk zzbvkVar = (zzbvk) obj;
        return zzgch.zzn(this.f10042do.zzc(zzbvkVar), new zzgbo() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbh
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj2) {
                zzdyi zzdyiVar = (zzdyi) obj2;
                zzbk zzbkVar = new zzbk(new JsonReader(new InputStreamReader(zzdyiVar.zzb())), zzdyiVar.zza());
                zzbvk zzbvkVar2 = zzbvk.this;
                try {
                    zzbkVar.zzb = com.google.android.gms.ads.internal.client.zzbc.zzb().zzi(zzbvkVar2.zza).toString();
                } catch (JSONException unused) {
                    zzbkVar.zzb = "{}";
                }
                if (!zzbvkVar2.zzn.isEmpty()) {
                    try {
                        zzbkVar.zzc = com.google.android.gms.ads.internal.client.zzbc.zzb().zzi(zzbvkVar2.zzn).toString();
                    } catch (JSONException unused2) {
                    }
                }
                return zzgch.zzh(zzbkVar);
            }
        }, this.f10043do);
    }
}
