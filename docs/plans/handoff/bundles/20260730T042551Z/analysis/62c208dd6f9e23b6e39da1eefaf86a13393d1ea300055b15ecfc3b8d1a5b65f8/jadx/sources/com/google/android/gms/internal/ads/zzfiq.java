package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Creturn;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfiq {
    private final com.google.android.gms.ads.internal.util.client.zzx zza;
    private final com.google.android.gms.ads.internal.util.client.zzu zzb;
    private final zzgct zzc;
    private final zzfir zzd;

    public zzfiq(com.google.android.gms.ads.internal.util.client.zzx zzxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzgct zzgctVar, zzfir zzfirVar) {
        this.zza = zzxVar;
        this.zzb = zzuVar;
        this.zzc = zzgctVar;
        this.zzd = zzfirVar;
    }

    private final InterfaceFutureC3942wq zze(final String str, final long j, final int i) {
        final String str2;
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        if (i > zzxVar.zzc()) {
            zzfir zzfirVar = this.zzd;
            if (zzfirVar == null || !zzxVar.zzd()) {
                return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE);
            }
            zzfirVar.zza(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 2);
            return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.BUFFERED);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziv)).booleanValue()) {
            Uri parse = Uri.parse(str);
            String encodedQuery = parse.getEncodedQuery();
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            clearQuery.appendQueryParameter("pa", Integer.toString(i));
            str2 = Creturn.m7982new(String.valueOf(clearQuery.build()), "&", encodedQuery);
        } else {
            str2 = str;
        }
        zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.internal.ads.zzfip
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzfiq.this.zzc(i, j, str, (com.google.android.gms.ads.internal.util.client.zzt) obj);
            }
        };
        return j == 0 ? zzgch.zzn(this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfio
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfiq.this.zza(str2);
            }
        }), zzgboVar, this.zzc) : zzgch.zzn(this.zzc.schedule(new Callable() { // from class: com.google.android.gms.internal.ads.zzfin
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfiq.this.zzb(str2);
            }
        }, j, TimeUnit.MILLISECONDS), zzgboVar, this.zzc);
    }

    public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zza(String str) {
        return this.zzb.zza(str);
    }

    public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zzb(String str) {
        return this.zzb.zza(str);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(int i, long j, String str, com.google.android.gms.ads.internal.util.client.zzt zztVar) {
        if (zztVar != com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE) {
            return zzgch.zzh(zztVar);
        }
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        long zzb = zzxVar.zzb();
        if (i != 1) {
            zzb = (long) (zzxVar.zza() * j);
        }
        return zze(str, zzb, i + 1);
    }

    public final InterfaceFutureC3942wq zzd(String str) {
        try {
            return zze(str, 0L, 1);
        } catch (NullPointerException | RejectedExecutionException unused) {
            return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.PERMANENT_FAILURE);
        }
    }
}
