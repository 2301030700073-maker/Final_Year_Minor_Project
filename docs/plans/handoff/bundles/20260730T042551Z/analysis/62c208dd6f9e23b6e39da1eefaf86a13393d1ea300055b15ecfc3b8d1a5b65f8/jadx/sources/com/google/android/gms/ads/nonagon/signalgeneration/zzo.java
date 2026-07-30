package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.util.Pair;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzdsb;
import com.google.android.gms.internal.ads.zzgcs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzo {

    /* renamed from: do, reason: not valid java name */
    public final Context f10075do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdsb f10076do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f10078do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f10077do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    public final HashMap f10079if = new HashMap();

    public zzo(Context context, zzdsb zzdsbVar, zzgcs zzgcsVar) {
        this.f10075do = context;
        this.f10076do = zzdsbVar;
        this.f10078do = zzgcsVar;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m5593do(final boolean z, zzq zzqVar) {
        HashMap hashMap = this.f10077do;
        Boolean valueOf = Boolean.valueOf(z);
        zzq zzqVar2 = (zzq) hashMap.get(valueOf);
        if (zzqVar2 == null || zzqVar2.zze() || zzqVar2.zzb() == null || zzqVar.zzb() != null) {
            this.f10077do.put(valueOf, zzqVar);
        }
        long longValue = (zzqVar.zzb() != null ? (Long) zzbeq.zzd.zze() : (Long) zzbeq.zze.zze()).longValue();
        final boolean z2 = zzqVar.zzb() == null;
        zzbzw.zzd.schedule(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            @Override // java.lang.Runnable
            public final void run() {
                zzo.this.m5596new(z, z2);
            }
        }, longValue, TimeUnit.SECONDS);
        List list = (List) this.f10079if.get(valueOf);
        this.f10079if.put(valueOf, new ArrayList());
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                m5594for(zzqVar, (Pair) it.next(), false);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5594for(zzq zzqVar, Pair pair, boolean z) {
        zzqVar.zzd();
        QueryInfo zzb = zzqVar.zzb();
        if (zzb != null) {
            ((QueryInfoGenerationCallback) pair.first).onSuccess(zzb);
        } else {
            ((QueryInfoGenerationCallback) pair.first).onFailure(zzqVar.zzc());
        }
        Pair[] pairArr = new Pair[7];
        pairArr[0] = new Pair("se", "query_g");
        pairArr[1] = new Pair("ad_format", AdFormat.BANNER.name());
        pairArr[2] = new Pair("rtype", Integer.toString(6));
        pairArr[3] = new Pair("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        pairArr[4] = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - ((Long) pair.second).longValue()));
        pairArr[5] = new Pair("sgpc_h", Boolean.toString(z));
        pairArr[6] = new Pair("sgpc_rs", Boolean.toString(zzqVar.zzb() != null));
        zzaa.zzd(this.f10076do, null, "sgpcr", pairArr);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5595if(final boolean z) {
        HashMap hashMap = this.f10079if;
        Boolean valueOf = Boolean.valueOf(z);
        if (hashMap.containsKey(valueOf)) {
            return;
        }
        hashMap.put(valueOf, new ArrayList());
        this.f10078do.submit(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            @Override // java.lang.Runnable
            public final void run() {
                zzo.this.m5596new(z, false);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0070 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0023, B:8:0x002d, B:12:0x0043, B:14:0x0070, B:18:0x007c, B:21:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007c A[Catch: all -> 0x0085, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0023, B:8:0x002d, B:12:0x0043, B:14:0x0070, B:18:0x007c, B:21:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: all -> 0x0085, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0023, B:8:0x002d, B:12:0x0043, B:14:0x0070, B:18:0x007c, B:21:0x003a), top: B:2:0x0001 }] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m5596new(boolean r10, boolean r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            android.os.Bundle r0 = new android.os.Bundle     // Catch: java.lang.Throwable -> L85
            r0.<init>()     // Catch: java.lang.Throwable -> L85
            java.lang.String r1 = "query_info_type"
            java.lang.String r2 = "requester_type_6"
            r0.putString(r1, r2)     // Catch: java.lang.Throwable -> L85
            java.lang.String r1 = "accept_3p_cookie"
            r0.putBoolean(r1, r10)     // Catch: java.lang.Throwable -> L85
            java.util.HashMap r1 = r9.f10077do     // Catch: java.lang.Throwable -> L85
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r10)     // Catch: java.lang.Throwable -> L85
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.nonagon.signalgeneration.zzq r1 = (com.google.android.gms.ads.nonagon.signalgeneration.zzq) r1     // Catch: java.lang.Throwable -> L85
            if (r11 == 0) goto L2b
            if (r1 != 0) goto L23
            goto L2b
        L23:
            int r11 = r1.zza()     // Catch: java.lang.Throwable -> L85
            int r11 = r11 + 1
            r6 = r11
            goto L2d
        L2b:
            r11 = 0
            r6 = 0
        L2d:
            java.util.HashMap r11 = r9.f10077do     // Catch: java.lang.Throwable -> L85
            java.lang.Object r11 = r11.get(r2)     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.nonagon.signalgeneration.zzq r11 = (com.google.android.gms.ads.nonagon.signalgeneration.zzq) r11     // Catch: java.lang.Throwable -> L85
            if (r11 != 0) goto L3a
            r11 = 0
        L38:
            r7 = r11
            goto L43
        L3a:
            boolean r11 = r11.zzf()     // Catch: java.lang.Throwable -> L85
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r11)     // Catch: java.lang.Throwable -> L85
            goto L38
        L43:
            com.google.android.gms.internal.ads.zzdsb r8 = r9.f10076do     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.nonagon.signalgeneration.zzp r11 = new com.google.android.gms.ads.nonagon.signalgeneration.zzp     // Catch: java.lang.Throwable -> L85
            r3 = r11
            r4 = r9
            r5 = r10
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.AdRequest$Builder r10 = new com.google.android.gms.ads.AdRequest$Builder     // Catch: java.lang.Throwable -> L85
            r10.<init>()     // Catch: java.lang.Throwable -> L85
            java.lang.Class<com.google.ads.mediation.admob.AdMobAdapter> r1 = com.google.ads.mediation.admob.AdMobAdapter.class
            com.google.android.gms.ads.AbstractAdRequestBuilder r10 = r10.addNetworkExtrasBundle(r1, r0)     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.AdRequest$Builder r10 = (com.google.android.gms.ads.AdRequest.Builder) r10     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.AdRequest r10 = r10.build()     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzkV     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L85
            java.lang.Object r0 = r1.zza(r0)     // Catch: java.lang.Throwable -> L85
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L85
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L85
            if (r0 == 0) goto L7c
            java.util.concurrent.ExecutorService r0 = r9.f10078do     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.nonagon.signalgeneration.zzn r1 = new com.google.android.gms.ads.nonagon.signalgeneration.zzn     // Catch: java.lang.Throwable -> L85
            r1.<init>()     // Catch: java.lang.Throwable -> L85
            r0.submit(r1)     // Catch: java.lang.Throwable -> L85
            monitor-exit(r9)
            return
        L7c:
            android.content.Context r0 = r9.f10075do     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.AdFormat r1 = com.google.android.gms.ads.AdFormat.BANNER     // Catch: java.lang.Throwable -> L85
            com.google.android.gms.ads.query.QueryInfo.generate(r0, r1, r10, r11)     // Catch: java.lang.Throwable -> L85
            monitor-exit(r9)
            return
        L85:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzo.m5596new(boolean, boolean):void");
    }

    public final synchronized void zzb() {
        m5595if(true);
        m5595if(false);
    }

    public final synchronized void zzg(final Object obj, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        final Pair pair = new Pair(queryInfoGenerationCallback, Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()));
        zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
            /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r5 = this;
                    com.google.android.gms.ads.nonagon.signalgeneration.zzo r0 = com.google.android.gms.ads.nonagon.signalgeneration.zzo.this
                    java.lang.Object r1 = r2
                    android.util.Pair r2 = r3
                    r0.getClass()
                    boolean r3 = r1 instanceof android.webkit.WebView
                    if (r3 != 0) goto Le
                    goto L1a
                Le:
                    android.content.Context r3 = r0.f10075do
                    com.google.android.gms.ads.internal.util.zzaa r4 = com.google.android.gms.ads.internal.zzv.zzr()
                    android.webkit.CookieManager r3 = r4.zza(r3)
                    if (r3 != 0) goto L1c
                L1a:
                    r1 = 0
                    goto L22
                L1c:
                    android.webkit.WebView r1 = (android.webkit.WebView) r1
                    boolean r1 = r3.acceptThirdPartyCookies(r1)
                L22:
                    java.util.HashMap r3 = r0.f10077do
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
                    java.lang.Object r3 = r3.get(r1)
                    com.google.android.gms.ads.nonagon.signalgeneration.zzq r3 = (com.google.android.gms.ads.nonagon.signalgeneration.zzq) r3
                    if (r3 == 0) goto L3c
                    boolean r4 = r3.zze()
                    if (r4 == 0) goto L37
                    goto L3c
                L37:
                    r1 = 1
                    r0.m5594for(r3, r2, r1)
                    goto L51
                L3c:
                    java.util.HashMap r0 = r0.f10079if
                    java.lang.Object r3 = r0.get(r1)
                    java.util.List r3 = (java.util.List) r3
                    if (r3 != 0) goto L4e
                    java.util.ArrayList r3 = new java.util.ArrayList
                    r3.<init>()
                    r0.put(r1, r3)
                L4e:
                    r3.add(r2)
                L51:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzk.run():void");
            }
        });
    }
}
