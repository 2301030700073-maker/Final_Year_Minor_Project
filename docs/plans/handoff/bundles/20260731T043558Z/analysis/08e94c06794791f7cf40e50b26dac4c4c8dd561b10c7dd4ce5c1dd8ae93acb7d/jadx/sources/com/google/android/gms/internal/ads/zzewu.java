package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzewu implements zzeya {
    private final Context zza;
    private final zzgus zzb;
    private final zzfgn zzc;
    private final VersionInfoParcel zzd;

    zzewu(Context context, zzgus zzgusVar, zzfgn zzfgnVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzgusVar;
        this.zzc = zzfgnVar;
        this.zzd = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zzb.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzewt
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzewu.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 53;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdA)).booleanValue() == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
    
        r1 = com.google.android.gms.internal.ads.zzfwx.zzh(r0).zzi(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdL)).longValue(), com.google.android.gms.ads.internal.zzt.zzh().zzo().zzx());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00bb, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdB)).booleanValue() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d1, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzfwy.zzh(r0);
        r0 = com.google.android.gms.internal.ads.zzfwu.zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ed, code lost:
    
        if (r9.zzd.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdH)).intValue()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ef, code lost:
    
        r2 = r4.zzi(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdM)).longValue(), com.google.android.gms.ads.internal.zzt.zzh().zzo().zzx());
        r3 = r0.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0113, code lost:
    
        r6 = r0.zze();
        r4 = r2;
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cf, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdD)).booleanValue() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzdC)).booleanValue() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ com.google.android.gms.internal.ads.zzewv zzc() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzewu.zzc():com.google.android.gms.internal.ads.zzewv");
    }
}
