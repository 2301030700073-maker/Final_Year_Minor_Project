package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzanb implements zzamq {
    private final String zza;
    private final int zzb;
    private final String zzc = MimeTypes.VIDEO_MP2T;
    private final zzeg zzd;
    private final zzef zze;
    private zzaem zzf;
    private String zzg;
    private zzv zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private long zzs;
    private int zzt;
    private long zzu;
    private int zzv;
    private String zzw;

    public zzanb(String str, int i, String str2) {
        this.zza = str;
        this.zzb = i;
        zzeg zzegVar = new zzeg(1024);
        this.zzd = zzegVar;
        byte[] zzi = zzegVar.zzi();
        this.zze = new zzef(zzi, zzi.length);
        this.zzm = C.TIME_UNSET;
    }

    private final int zzf(zzef zzefVar) throws zzat {
        int zzc = zzefVar.zzc();
        zzaby zzb = zzabz.zzb(zzefVar, true);
        this.zzw = zzb.zzc;
        this.zzt = zzb.zza;
        this.zzv = zzb.zzb;
        return zzc - zzefVar.zzc();
    }

    private static long zzg(zzef zzefVar) {
        return zzefVar.zzj((zzefVar.zzj(2) + 1) * 8);
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zza() {
        this.zzi = 0;
        this.zzm = C.TIME_UNSET;
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzb(zzadd zzaddVar, zzaoe zzaoeVar) {
        zzaoeVar.zza();
        this.zzf = zzaddVar.zzu(zzaoeVar.zzb(), 1);
        this.zzg = zzaoeVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzc(long j, int i) {
        this.zzm = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x015a, code lost:
    
        if (r14.zzn == false) goto L89;
     */
    @Override // com.google.android.gms.internal.ads.zzamq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzeg r15) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanb.zzd(com.google.android.gms.internal.ads.zzeg):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
    }
}
