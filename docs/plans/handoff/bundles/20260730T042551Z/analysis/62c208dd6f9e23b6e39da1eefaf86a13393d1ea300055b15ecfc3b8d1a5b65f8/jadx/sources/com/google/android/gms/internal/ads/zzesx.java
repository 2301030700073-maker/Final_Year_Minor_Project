package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.BinderC3652rv;
import defpackage.InterfaceFutureC3942wq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzesx implements zzetr {
    public static final /* synthetic */ int zzb = 0;
    private static final zzesy zzc = new zzesy(new JSONArray().toString(), new Bundle());
    final String zza;
    private final zzgcs zzd;
    private final ScheduledExecutorService zze;
    private final zzejj zzf;
    private final Context zzg;
    private final zzfcj zzh;
    private final zzejf zzi;
    private final zzdpm zzj;
    private final zzduc zzk;
    private final int zzl;

    public zzesx(zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, String str, zzejj zzejjVar, Context context, zzfcj zzfcjVar, zzejf zzejfVar, zzdpm zzdpmVar, zzduc zzducVar, int i) {
        this.zzd = zzgcsVar;
        this.zze = scheduledExecutorService;
        this.zza = str;
        this.zzf = zzejjVar;
        this.zzg = context;
        this.zzh = zzfcjVar;
        this.zzi = zzejfVar;
        this.zzj = zzdpmVar;
        this.zzk = zzducVar;
        this.zzl = i;
    }

    public static /* synthetic */ InterfaceFutureC3942wq zzc(zzesx zzesxVar) {
        String lowerCase = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkM)).booleanValue() ? zzesxVar.zzh.zzf.toLowerCase(Locale.ROOT) : zzesxVar.zzh.zzf;
        final Bundle zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbL)).booleanValue() ? zzesxVar.zzk.zzg() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbU)).booleanValue()) {
            zzesxVar.zzi(arrayList, zzesxVar.zzf.zza(zzesxVar.zza, lowerCase));
        } else {
            for (Map.Entry entry : ((zzfxq) zzesxVar.zzf.zzb(zzesxVar.zza, lowerCase)).entrySet()) {
                String str = (String) entry.getKey();
                arrayList.add(zzesxVar.zzg(str, (List) entry.getValue(), zzesxVar.zzf(str), true, true));
            }
            zzesxVar.zzi(arrayList, zzesxVar.zzf.zzc());
        }
        return zzgch.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzess
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i = zzesx.zzb;
                JSONArray jSONArray = new JSONArray();
                for (InterfaceFutureC3942wq interfaceFutureC3942wq : arrayList) {
                    if (((JSONObject) interfaceFutureC3942wq.get()) != null) {
                        jSONArray.put(interfaceFutureC3942wq.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzesy(jSONArray.toString(), zzg);
            }
        }, zzesxVar.zzd);
    }

    private final Bundle zzf(String str) {
        Bundle bundle = this.zzh.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgby zzg(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgby zzu = zzgby.zzu(zzgch.zzk(new zzgbn() { // from class: com.google.android.gms.internal.ads.zzesu
            @Override // com.google.android.gms.internal.ads.zzgbn
            public final InterfaceFutureC3942wq zza() {
                return zzesx.this.zzd(str, list, bundle, z, z2);
            }
        }, this.zzd));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbH)).booleanValue()) {
            zzu = (zzgby) zzgch.zzo(zzu, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbA)).longValue(), TimeUnit.MILLISECONDS, this.zze);
        }
        return (zzgby) zzgch.zze(zzu, Throwable.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzesv
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                String str2 = str;
                Throwable th = (Throwable) obj;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmR)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, this.zzd);
    }

    private final void zzh(zzbrd zzbrdVar, Bundle bundle, List list, zzejm zzejmVar) {
        zzbrdVar.zzh(new BinderC3652rv(this.zzg), this.zza, bundle, (Bundle) list.get(0), this.zzh.zze, zzejmVar);
    }

    private final void zzi(List list, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzejn zzejnVar = (zzejn) ((Map.Entry) it.next()).getValue();
            String str = zzejnVar.zza;
            list.add(zzg(str, Collections.singletonList(zzejnVar.zze), zzf(str), zzejnVar.zzb, zzejnVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        if (this.zzl == 2) {
            return zzgch.zzh(zzc);
        }
        zzfcj zzfcjVar = this.zzh;
        if (zzfcjVar.zzr) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbN)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcjVar.zzd)))) {
                return zzgch.zzh(zzc);
            }
        }
        return zzgch.zzk(new zzgbn() { // from class: com.google.android.gms.internal.ads.zzesr
            @Override // com.google.android.gms.internal.ads.zzgbn
            public final InterfaceFutureC3942wq zza() {
                return zzesx.zzc(zzesx.this);
            }
        }, this.zzd);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:0|1|(2:3|(3:5|(2:7|(1:9)(1:12))(3:13|(1:15)|(2:17|(1:19)(1:20))(1:21))|10))|22|23|(0)(0)|10) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002d, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002e, code lost:
    
        com.google.android.gms.ads.internal.util.zze.zzb("Couldn't create RTB adapter : ", r13);
        r13 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ defpackage.InterfaceFutureC3942wq zzd(java.lang.String r9, final java.util.List r10, final android.os.Bundle r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzcab r7 = new com.google.android.gms.internal.ads.zzcab
            r7.<init>()
            r0 = 0
            if (r13 == 0) goto L26
            com.google.android.gms.internal.ads.zzbcc r13 = com.google.android.gms.internal.ads.zzbcl.zzbM
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r13 = r1.zza(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L26
            com.google.android.gms.internal.ads.zzejf r13 = r8.zzi
            r13.zzb(r9)
            com.google.android.gms.internal.ads.zzejf r13 = r8.zzi
            com.google.android.gms.internal.ads.zzbrd r13 = r13.zza(r9)
            goto L34
        L26:
            com.google.android.gms.internal.ads.zzdpm r13 = r8.zzj     // Catch: android.os.RemoteException -> L2d
            com.google.android.gms.internal.ads.zzbrd r13 = r13.zzb(r9)     // Catch: android.os.RemoteException -> L2d
            goto L34
        L2d:
            r13 = move-exception
            java.lang.String r1 = "Couldn't create RTB adapter : "
            com.google.android.gms.ads.internal.util.zze.zzb(r1, r13)
            r13 = r0
        L34:
            if (r13 != 0) goto L4e
            com.google.android.gms.internal.ads.zzbcc r10 = com.google.android.gms.internal.ads.zzbcl.zzbC
            com.google.android.gms.internal.ads.zzbcj r11 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r10 = r11.zza(r10)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L4d
            com.google.android.gms.internal.ads.zzejm.zzb(r9, r7)
            goto Lba
        L4d:
            throw r0
        L4e:
            com.google.android.gms.internal.ads.zzejm r6 = new com.google.android.gms.internal.ads.zzejm
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzv.zzC()
            long r4 = r0.elapsedRealtime()
            r0 = r6
            r1 = r9
            r2 = r13
            r3 = r7
            r0.<init>(r1, r2, r3, r4)
            com.google.android.gms.internal.ads.zzbcc r9 = com.google.android.gms.internal.ads.zzbcl.zzbH
            com.google.android.gms.internal.ads.zzbcj r0 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r9 = r0.zza(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L8d
            java.util.concurrent.ScheduledExecutorService r9 = r8.zze
            com.google.android.gms.internal.ads.zzesw r0 = new com.google.android.gms.internal.ads.zzesw
            r0.<init>()
            com.google.android.gms.internal.ads.zzbcc r1 = com.google.android.gms.internal.ads.zzbcl.zzbA
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r1 = r2.zza(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            r9.schedule(r0, r1, r3)
        L8d:
            if (r12 == 0) goto Lb7
            com.google.android.gms.internal.ads.zzbcc r9 = com.google.android.gms.internal.ads.zzbcl.zzbO
            com.google.android.gms.internal.ads.zzbcj r12 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r9 = r12.zza(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzgcs r9 = r8.zzd
            com.google.android.gms.internal.ads.zzest r12 = new com.google.android.gms.internal.ads.zzest
            r0 = r12
            r1 = r8
            r2 = r13
            r3 = r11
            r4 = r10
            r5 = r6
            r6 = r7
            r0.<init>()
            r9.zza(r12)
            goto Lba
        Lb3:
            r8.zzh(r13, r11, r10, r6)
            goto Lba
        Lb7:
            r6.zzd()
        Lba:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesx.zzd(java.lang.String, java.util.List, android.os.Bundle, boolean, boolean):wq");
    }

    public final /* synthetic */ void zze(zzbrd zzbrdVar, Bundle bundle, List list, zzejm zzejmVar, zzcab zzcabVar) {
        try {
            zzh(zzbrdVar, bundle, list, zzejmVar);
        } catch (RemoteException e) {
            zzcabVar.zzd(e);
        }
    }
}
