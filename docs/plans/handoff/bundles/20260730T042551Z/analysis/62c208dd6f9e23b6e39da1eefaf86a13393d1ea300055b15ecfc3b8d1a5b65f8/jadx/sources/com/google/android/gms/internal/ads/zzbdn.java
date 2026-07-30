package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import defpackage.C3692sc;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbdn extends C3692sc {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    private final List zzb = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjL)).split(","));
    private final zzbdq zzc;
    private final C3692sc zzd;
    private final zzdsb zze;

    public zzbdn(zzbdq zzbdqVar, C3692sc c3692sc, zzdsb zzdsbVar) {
        this.zzd = c3692sc;
        this.zzc = zzbdqVar;
        this.zze = zzdsbVar;
    }

    private final void zzb(String str) {
        com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(this.zze, null, "pact_action", new Pair("pe", str));
    }

    @Override // defpackage.C3692sc
    public final void extraCallback(String str, Bundle bundle) {
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.extraCallback(str, bundle);
        }
    }

    @Override // defpackage.C3692sc
    public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            return c3692sc.extraCallbackWithResult(str, bundle);
        }
        return null;
    }

    @Override // defpackage.C3692sc
    public final void onActivityResized(int i, int i2, Bundle bundle) {
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.onActivityResized(i, i2, bundle);
        }
    }

    @Override // defpackage.C3692sc
    public final void onMessageChannelReady(Bundle bundle) {
        this.zza.set(false);
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.onMessageChannelReady(bundle);
        }
    }

    @Override // defpackage.C3692sc
    public final void onNavigationEvent(int i, Bundle bundle) {
        List list;
        this.zza.set(false);
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.onNavigationEvent(i, bundle);
        }
        this.zzc.zzi(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        if (this.zzc == null || (list = this.zzb) == null || !list.contains(String.valueOf(i))) {
            return;
        }
        this.zzc.zzf();
        zzb("pact_reqpmc");
    }

    @Override // defpackage.C3692sc
    public final void onPostMessage(String str, Bundle bundle) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("gpa", -1) == 0) {
                this.zza.set(true);
                zzb("pact_con");
                this.zzc.zzh(jSONObject.getString("paw_id"));
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Message is not in JSON format: ", e);
        }
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.onPostMessage(str, bundle);
        }
    }

    @Override // defpackage.C3692sc
    public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        C3692sc c3692sc = this.zzd;
        if (c3692sc != null) {
            c3692sc.onRelationshipValidationResult(i, uri, z, bundle);
        }
    }

    public final Boolean zza() {
        return Boolean.valueOf(this.zza.get());
    }
}
