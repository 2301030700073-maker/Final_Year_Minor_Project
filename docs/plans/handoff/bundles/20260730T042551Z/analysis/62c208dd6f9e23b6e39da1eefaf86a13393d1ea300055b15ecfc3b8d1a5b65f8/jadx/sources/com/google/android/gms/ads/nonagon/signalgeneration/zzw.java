package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdee;
import com.google.android.gms.internal.ads.zzdrq;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzw implements zzdee {

    /* renamed from: break, reason: not valid java name */
    public final String f10102break;

    /* renamed from: do, reason: not valid java name */
    public final zzv f10103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdrq f10104do;

    /* renamed from: for, reason: not valid java name */
    public final int f10105for;

    public zzw(zzdrq zzdrqVar, zzv zzvVar, String str, int i) {
        this.f10104do = zzdrqVar;
        this.f10103do = zzvVar;
        this.f10102break = str;
        this.f10105for = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zze(zzbk zzbkVar) {
        String str;
        if (zzbkVar == null || this.f10105for == 2) {
            return;
        }
        boolean isEmpty = TextUtils.isEmpty(zzbkVar.zzc);
        zzdrq zzdrqVar = this.f10104do;
        zzv zzvVar = this.f10103do;
        if (isEmpty) {
            zzvVar.zzd(this.f10102break, zzbkVar.zzb, zzdrqVar);
            return;
        }
        try {
            str = new JSONObject(zzbkVar.zzc).optString("request_id");
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "RenderSignals.getRequestId");
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzvVar.zzd(str, zzbkVar.zzc, zzdrqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zzf(String str) {
    }
}
