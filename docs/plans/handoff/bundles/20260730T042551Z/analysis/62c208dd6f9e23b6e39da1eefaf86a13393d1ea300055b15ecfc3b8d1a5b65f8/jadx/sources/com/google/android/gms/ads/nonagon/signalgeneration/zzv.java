package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzdrq;
import com.google.android.gms.internal.ads.zzdsb;
import defpackage.LV;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzv {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdsb f10095do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ConcurrentHashMap f10096do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f10097do = new ArrayDeque();

    /* renamed from: if, reason: not valid java name */
    public final ArrayDeque f10100if = new ArrayDeque();

    /* renamed from: do, reason: not valid java name */
    public final int f10093do = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgK)).intValue();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f10094do = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgL)).longValue();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f10099do = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgP)).booleanValue();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f10101if = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgO)).booleanValue();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map f10098do = DesugarCollections.synchronizedMap(new LV(this));

    public zzv(zzdsb zzdsbVar) {
        this.f10095do = zzdsbVar;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m5597do(final zzdrq zzdrqVar) {
        if (this.f10099do) {
            ArrayDeque arrayDeque = this.f10100if;
            final ArrayDeque clone = arrayDeque.clone();
            arrayDeque.clear();
            ArrayDeque arrayDeque2 = this.f10097do;
            final ArrayDeque clone2 = arrayDeque2.clone();
            arrayDeque2.clear();
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzs
                @Override // java.lang.Runnable
                public final void run() {
                    zzv zzvVar = zzv.this;
                    zzdrq zzdrqVar2 = zzdrqVar;
                    ArrayDeque arrayDeque3 = clone;
                    ArrayDeque arrayDeque4 = clone2;
                    zzvVar.m5599if(zzdrqVar2, arrayDeque3, "to");
                    zzvVar.m5599if(zzdrqVar2, arrayDeque4, "of");
                }
            });
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized void m5598for() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
        try {
            Iterator it = this.f10098do.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (currentTimeMillis - ((zzu) entry.getValue()).zza.longValue() <= this.f10094do) {
                    break;
                }
                this.f10100if.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "QueryJsonMap.removeExpiredEntries");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5599if(zzdrq zzdrqVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdrqVar.zzb());
            this.f10096do = concurrentHashMap;
            concurrentHashMap.put(NativeProtocol.WEB_DIALOG_ACTION, "ev");
            this.f10096do.put("e_r", str);
            this.f10096do.put("e_id", (String) pair2.first);
            if (this.f10101if) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(zzaa.zzb(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                ConcurrentHashMap concurrentHashMap2 = this.f10096do;
                String str2 = (String) pair.first;
                if (!TextUtils.isEmpty(str2)) {
                    concurrentHashMap2.put("e_type", str2);
                }
                ConcurrentHashMap concurrentHashMap3 = this.f10096do;
                String str3 = (String) pair.second;
                if (!TextUtils.isEmpty(str3)) {
                    concurrentHashMap3.put("e_agent", str3);
                }
            }
            this.f10095do.zzg(this.f10096do);
        }
    }

    public final synchronized String zzb(String str, zzdrq zzdrqVar) {
        zzu zzuVar = (zzu) this.f10098do.get(str);
        zzdrqVar.zzb().put("request_id", str);
        if (zzuVar == null) {
            zzdrqVar.zzb().put("mhit", "false");
            return null;
        }
        zzdrqVar.zzb().put("mhit", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        return zzuVar.zzb;
    }

    public final synchronized void zzd(String str, String str2, zzdrq zzdrqVar) {
        this.f10098do.put(str, new zzu(Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()), str2, new HashSet()));
        m5598for();
        m5597do(zzdrqVar);
    }

    public final synchronized void zzf(String str) {
        this.f10098do.remove(str);
    }

    public final synchronized boolean zzg(String str, String str2, int i) {
        zzu zzuVar = (zzu) this.f10098do.get(str);
        if (zzuVar == null) {
            return false;
        }
        zzuVar.zzc.add(str2);
        return zzuVar.zzc.size() < i;
    }

    public final synchronized boolean zzh(String str, String str2) {
        zzu zzuVar = (zzu) this.f10098do.get(str);
        if (zzuVar != null) {
            if (zzuVar.zzc.contains(str2)) {
                return true;
            }
        }
        return false;
    }
}
