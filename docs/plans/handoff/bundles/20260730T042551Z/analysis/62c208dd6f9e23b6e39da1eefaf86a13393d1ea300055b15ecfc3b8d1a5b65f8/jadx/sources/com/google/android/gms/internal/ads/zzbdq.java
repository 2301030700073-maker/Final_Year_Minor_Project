package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import defpackage.C3692sc;
import defpackage.C3869vc;
import defpackage.C4105zc;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbdq {
    private final ScheduledExecutorService zza;
    private final com.google.android.gms.ads.nonagon.signalgeneration.zzo zzb;
    private final com.google.android.gms.ads.nonagon.signalgeneration.zzf zzc;
    private final zzdsb zzd;
    private Runnable zze;
    private zzbdn zzf;
    private C4105zc zzg;
    private String zzh;
    private long zzi = 0;
    private long zzj;
    private JSONArray zzk;
    private Context zzl;

    public zzbdq(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.ads.nonagon.signalgeneration.zzo zzoVar, com.google.android.gms.ads.nonagon.signalgeneration.zzf zzfVar, zzdsb zzdsbVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzoVar;
        this.zzc = zzfVar;
        this.zzd = zzdsbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0049, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzjJ)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzbdn r0 = r6.zzf
            if (r0 != 0) goto La
            java.lang.String r0 = "PACT callback is not present, please initialize the PawCustomTabsImpl."
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0)
            return
        La:
            java.lang.Boolean r0 = r0.zza()
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L15
            return
        L15:
            java.lang.String r0 = r6.zzh
            if (r0 == 0) goto L9c
            zc r0 = r6.zzg
            if (r0 == 0) goto L9c
            java.util.concurrent.ScheduledExecutorService r0 = r6.zza
            if (r0 == 0) goto L9c
            long r0 = r6.zzi
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L2a
            goto L39
        L2a:
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzv.zzC()
            long r0 = r0.elapsedRealtime()
            long r2 = r6.zzi
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 > 0) goto L39
            goto L4b
        L39:
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzjJ
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L9c
        L4b:
            zc r0 = r6.zzg
            java.lang.String r1 = r6.zzh
            android.net.Uri r1 = android.net.Uri.parse(r1)
            r0.getClass()
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
            android.os.Bundle r3 = new android.os.Bundle     // Catch: android.os.RemoteException -> L82
            r3.<init>()     // Catch: android.os.RemoteException -> L82
            android.app.PendingIntent r4 = r0.f16924do     // Catch: android.os.RemoteException -> L82
            if (r4 == 0) goto L6b
            if (r4 == 0) goto L6b
            java.lang.String r5 = "android.support.customtabs.extra.SESSION_ID"
            r3.putParcelable(r5, r4)     // Catch: android.os.RemoteException -> L82
        L6b:
            boolean r4 = r3.isEmpty()     // Catch: android.os.RemoteException -> L82
            if (r4 == 0) goto L72
            r3 = 0
        L72:
            Jm r4 = r0.f16922do
            Km r0 = r0.f16923do
            if (r3 == 0) goto L7f
            r2.putAll(r3)     // Catch: android.os.RemoteException -> L82
            r0.i(r4, r1, r2)     // Catch: android.os.RemoteException -> L82
            goto L82
        L7f:
            r0.mo1210volatile(r4, r1)     // Catch: android.os.RemoteException -> L82
        L82:
            java.util.concurrent.ScheduledExecutorService r0 = r6.zza
            java.lang.Runnable r1 = r6.zze
            com.google.android.gms.internal.ads.zzbcc r2 = com.google.android.gms.internal.ads.zzbcl.zzjK
            com.google.android.gms.internal.ads.zzbcj r3 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r2 = r3.zza(r2)
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r2, r4)
            return
        L9c:
            java.lang.String r0 = "PACT max retry connection duration timed out"
            com.google.android.gms.ads.internal.util.zze.zza(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdq.zzj():void");
    }

    private final void zzk(JSONObject jSONObject) {
        try {
            if (this.zzk == null) {
                this.zzk = new JSONArray((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjM));
            }
            jSONObject.put("eids", this.zzk);
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error fetching the PACT active eids JSON: ", e);
        }
    }

    public final C4105zc zzb() {
        return this.zzg;
    }

    public final JSONObject zzc(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("error", str2);
        jSONObject.put("sdk_ttl_ms", ((Boolean) zzbeq.zzc.zze()).booleanValue() ? ((Long) zzbeq.zzf.zze()).longValue() : 0L);
        zzk(jSONObject);
        if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
            jSONObject.put("as", this.zzc.zza());
        }
        return jSONObject;
    }

    public final JSONObject zzd(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("signal", str2);
        jSONObject.put("sdk_ttl_ms", ((Boolean) zzbeq.zzc.zze()).booleanValue() ? ((Long) zzbeq.zzf.zze()).longValue() : 0L);
        zzk(jSONObject);
        if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
            jSONObject.put("as", this.zzc.zza());
        }
        return jSONObject;
    }

    public final void zzf() {
        this.zzi = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() + ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjI)).intValue();
        if (this.zze == null) {
            this.zze = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdo
                @Override // java.lang.Runnable
                public final void run() {
                    zzbdq.this.zzj();
                }
            };
        }
        zzj();
    }

    public final void zzg(Context context, C3869vc c3869vc, String str, C3692sc c3692sc) {
        if (context == null) {
            throw new IllegalArgumentException("App Context parameter is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Origin parameter is empty or null");
        }
        if (c3869vc == null) {
            throw new IllegalArgumentException("CustomTabsClient parameter is null");
        }
        this.zzl = context;
        this.zzh = str;
        zzbdn zzbdnVar = new zzbdn(this, c3692sc, this.zzd);
        this.zzf = zzbdnVar;
        C4105zc m8478for = c3869vc.m8478for(zzbdnVar);
        this.zzg = m8478for;
        if (m8478for == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("CustomTabsClient failed to create new session.");
        }
        com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(this.zzd, null, "pact_action", new Pair("pe", "pact_init"));
    }

    public final void zzh(String str) {
        try {
            C4105zc c4105zc = this.zzg;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gsppack", true);
            jSONObject.put("fpt", new Date(this.zzj).toString());
            zzk(jSONObject);
            if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
                jSONObject.put("as", this.zzc.zza());
            }
            c4105zc.m8806do(jSONObject.toString());
            zzbdp zzbdpVar = new zzbdp(this, str);
            if (((Boolean) zzbeq.zzc.zze()).booleanValue()) {
                this.zzb.zzg(this.zzg, zzbdpVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            QueryInfo.generate(this.zzl, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzbdpVar);
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating JSON: ", e);
        }
    }

    public final void zzi(long j) {
        this.zzj = j;
    }
}
