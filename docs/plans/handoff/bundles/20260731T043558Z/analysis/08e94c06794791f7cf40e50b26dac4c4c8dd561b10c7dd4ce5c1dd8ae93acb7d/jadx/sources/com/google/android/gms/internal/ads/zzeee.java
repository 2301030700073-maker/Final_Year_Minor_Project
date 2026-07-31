package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeee implements zzfjx {
    protected final Context zza;
    protected final String zzb;
    private final String zzc;

    public zzeee(Context context, String str, zzbxr zzbxrVar, int i, String str2) {
        this.zza = context;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzfjx
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzeed zza(zzeec zzeecVar) throws zzdzv {
        return zzc(zzeecVar.zza, zzeecVar.zzb, zzeecVar.zzc, zzeecVar.zzd, zzeecVar.zze, com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime());
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x021c, code lost:
    
        r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 35);
        r4.append("Received error HTTP response code: ");
        r4.append(r0);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(r4.toString());
        r8 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 35);
        r8.append("Received error HTTP response code: ");
        r8.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0256, code lost:
    
        throw new com.google.android.gms.internal.ads.zzdzv(1, r8.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x027a, code lost:
    
        return r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zzeed zzc(java.lang.String r18, int r19, java.util.Map r20, byte[] r21, java.lang.String r22, long r23) throws com.google.android.gms.internal.ads.zzdzv {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeee.zzc(java.lang.String, int, java.util.Map, byte[], java.lang.String, long):com.google.android.gms.internal.ads.zzeed");
    }
}
