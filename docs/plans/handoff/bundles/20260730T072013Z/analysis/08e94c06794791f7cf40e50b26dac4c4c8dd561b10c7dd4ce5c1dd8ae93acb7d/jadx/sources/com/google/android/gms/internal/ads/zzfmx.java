package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfmx {
    private final com.google.android.gms.ads.internal.util.client.zzx zza;
    private final com.google.android.gms.ads.internal.util.client.zzu zzb;
    private final zzgut zzc;
    private final zzfmy zzd;
    private final zzcjk zze;

    public zzfmx(com.google.android.gms.ads.internal.util.client.zzx zzxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzgut zzgutVar, zzfmy zzfmyVar, zzcjk zzcjkVar) {
        this.zza = zzxVar;
        this.zzb = zzuVar;
        this.zzc = zzgutVar;
        this.zzd = zzfmyVar;
        this.zze = zzcjkVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final com.google.android.gms.ads.internal.util.client.zzt zzd(String str) {
        zzcjk zzcjkVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjN)).booleanValue() || (zzcjkVar = this.zze) == null || (!com.google.android.gms.ads.internal.zzt.zzc().zzi(str) && !com.google.android.gms.ads.internal.zzt.zzc().zzj(str))) {
            return this.zzb.zzc(str, null);
        }
        String zzb = zzcjkVar.zzb();
        HashMap hashMap = new HashMap();
        if (zzb != null) {
            hashMap.put((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjO), zzb);
        }
        return this.zzb.zzc(str, hashMap);
    }

    public final ListenableFuture zza(String str) {
        if (str != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzf)).booleanValue() || !str.isEmpty()) {
                try {
                    return zze(str, 0L, 1);
                } catch (NullPointerException | RejectedExecutionException unused) {
                    return zzgui.zza(com.google.android.gms.ads.internal.util.client.zzt.PERMANENT_FAILURE);
                }
            }
        }
        return zzgui.zza(com.google.android.gms.ads.internal.util.client.zzt.PERMANENT_FAILURE);
    }

    final /* synthetic */ ListenableFuture zzb(int i, long j, String str, com.google.android.gms.ads.internal.util.client.zzt zztVar) {
        if (zztVar != com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE) {
            return zzgui.zza(zztVar);
        }
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        long zzb = zzxVar.zzb();
        if (i != 1) {
            zzb = (long) (zzxVar.zzc() * j);
        }
        return zze(str, zzb, i + 1);
    }

    private final ListenableFuture zze(final String str, final long j, final int i) {
        final String str2;
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        if (i > zzxVar.zza()) {
            zzfmy zzfmyVar = this.zzd;
            if (zzfmyVar == null || !zzxVar.zzd()) {
                return zzgui.zza(com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE);
            }
            zzfmyVar.zza(str, "", 2);
            return zzgui.zza(com.google.android.gms.ads.internal.util.client.zzt.BUFFERED);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjv)).booleanValue()) {
            Uri parse = Uri.parse(str);
            String encodedQuery = parse.getEncodedQuery();
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            clearQuery.appendQueryParameter("pa", Integer.toString(i));
            String valueOf = String.valueOf(clearQuery.build());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(encodedQuery).length());
            sb.append(valueOf);
            sb.append("&");
            sb.append(encodedQuery);
            str2 = sb.toString();
        } else {
            str2 = str;
        }
        zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzfmw
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzfmx.this.zzb(i, j, str, (com.google.android.gms.ads.internal.util.client.zzt) obj);
            }
        };
        if (j == 0) {
            zzgut zzgutVar = this.zzc;
            return zzgui.zzj(zzgutVar.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzfmv
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzfmx.this.zzd(str2);
                }
            }), zzgtqVar, zzgutVar);
        }
        zzgut zzgutVar2 = this.zzc;
        return zzgui.zzj(zzgutVar2.schedule(new Callable() { // from class: com.google.android.gms.internal.ads.zzfmu
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzfmx.this.zzc(str2);
            }
        }, j, TimeUnit.MILLISECONDS), zzgtqVar, zzgutVar2);
    }
}
