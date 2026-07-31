package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcfn extends zzcfe implements zzcdh {
    public static final /* synthetic */ int zzd = 0;
    private zzcdi zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcew zzi;
    private long zzj;
    private long zzk;

    public zzcfn(zzcdr zzcdrVar, zzcdq zzcdqVar) {
        super(zzcdrVar);
        zzcgg zzcggVar = new zzcgg(zzcdrVar.getContext(), zzcdqVar, (zzcdr) this.zzc.get(), null);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("ExoPlayerAdapter initialized.");
        this.zze = zzcggVar;
        zzcggVar.zzs(this);
    }

    protected static final String zzc(String str) {
        String zzf = com.google.android.gms.ads.internal.util.client.zzf.zzf(str);
        String.valueOf(zzf);
        return "cache:".concat(String.valueOf(zzf));
    }

    private final void zzd(long j) {
        com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcfn.this.zzb();
            }
        }, j);
    }

    private static String zzx(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 1 + length + 1 + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzcfe, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcdi zzcdiVar = this.zze;
        if (zzcdiVar != null) {
            zzcdiVar.zzs(null);
            this.zze.zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzD() {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache onRenderedFirstFrame");
    }

    public final zzcdi zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzs(null);
        zzcdi zzcdiVar = this.zze;
        this.zze = null;
        return zzcdiVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [com.google.android.gms.internal.ads.zzcfe, com.google.android.gms.internal.ads.zzcfn] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26, types: [com.google.android.gms.internal.ads.zzcfn] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.zzbes] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v9, types: [int] */
    final /* synthetic */ void zzb() {
        String str;
        zzcfn zzcfnVar;
        zzcfn zzcfnVar2;
        long longValue;
        long intValue;
        zzcfn zzcfnVar3;
        long j;
        long j2;
        String str2;
        long j3;
        String zzc = zzc(this.zzf);
        String str3 = "error";
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzS)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzv)).intValue();
            zzbel zzbelVar = zzbeu.zzch;
            str = com.google.android.gms.ads.internal.client.zzbd.zzc();
            zzcfnVar = ((Boolean) str.zzd(zzbelVar)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            str = zzc;
            zzcfnVar = this;
        }
        synchronized (this) {
            try {
                str = ((com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.zzj) > longValue ? 1 : ((com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.zzj) == longValue ? 0 : -1));
                if (str <= 0) {
                    try {
                        if (this.zzg) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.zzh) {
                            if (!this.zze.zzB()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzH = this.zze.zzH();
                            if (zzH > 0) {
                                long zzN = this.zze.zzN();
                                if (zzN != this.zzk) {
                                    try {
                                        j2 = intValue;
                                        str2 = zzc;
                                        try {
                                            zzm(this.zzf, zzc, zzN, zzH, zzN > 0, zzcfnVar != 0 ? this.zze.zzI() : -1L, zzcfnVar != 0 ? this.zze.zzJ() : -1L, zzcfnVar != 0 ? this.zze.zzK() : -1L, zzcdi.zzP(), zzcdi.zzQ());
                                            zzcfnVar = this;
                                            j = zzN;
                                            try {
                                                zzcfnVar.zzk = j;
                                                j3 = zzH;
                                                zzcfnVar = zzcfnVar;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzcfnVar = this;
                                            str = str2;
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        str2 = zzc;
                                        zzcfnVar = this;
                                    }
                                } else {
                                    j = zzN;
                                    j2 = intValue;
                                    str2 = zzc;
                                    zzcfnVar = this;
                                    j3 = zzH;
                                }
                                if (j >= j3) {
                                    zzcfnVar.zzp(zzcfnVar.zzf, str2, j3);
                                    zzcfnVar2 = zzcfnVar;
                                } else {
                                    long zzO = zzcfnVar.zze.zzO();
                                    zzcfnVar3 = zzcfnVar;
                                    if (zzO >= j2) {
                                        zzcfnVar3 = zzcfnVar;
                                        if (j > 0) {
                                            zzcfnVar2 = zzcfnVar;
                                        }
                                    }
                                }
                            } else {
                                zzcfnVar3 = this;
                            }
                            zzcfnVar3.zzd(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzT)).longValue());
                            return;
                        }
                        zzcfnVar2 = this;
                        com.google.android.gms.ads.internal.zzt.zzB().zzd(zzcfnVar2.zzi);
                    } catch (Throwable th5) {
                        th = th5;
                        str3 = "Timeout reached. Limit: ";
                    }
                } else {
                    str = zzc;
                    zzcfnVar = this;
                    try {
                        StringBuilder sb = new StringBuilder(String.valueOf(longValue).length() + 27);
                        sb.append("Timeout reached. Limit: ");
                        sb.append(longValue);
                        sb.append(" ms");
                        throw new IOException(sb.toString());
                    } catch (Throwable th6) {
                        th = th6;
                        str3 = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = zzc;
                zzcfnVar = this;
            }
            try {
                throw th;
            } catch (Exception e2) {
                e = e2;
                String str4 = str3;
                String str5 = zzcfnVar.zzf;
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + String.valueOf(message).length());
                sb2.append("Failed to preload url ");
                sb2.append(str5);
                sb2.append(" Exception: ");
                sb2.append(message);
                String sb3 = sb2.toString();
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(sb3);
                com.google.android.gms.ads.internal.zzt.zzh().zzh(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcfnVar.zzq(zzcfnVar.zzf, str, str4, zzx(str4, e));
                zzcfnVar2 = zzcfnVar;
                com.google.android.gms.ads.internal.zzt.zzB().zzd(zzcfnVar2.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final boolean zze(String str) {
        return zzf(str, new String[]{str});
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0169, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzcfe] */
    /* JADX WARN: Type inference failed for: r5v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.StringBuilder] */
    @Override // com.google.android.gms.internal.ads.zzcfe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzf(java.lang.String r48, java.lang.String[] r49) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfn.zzf(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final boolean zzg(String str, String[] strArr, zzcew zzcewVar) {
        this.zzf = str;
        this.zzi = zzcewVar;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzq(uriArr, this.zzb);
            zzcdr zzcdrVar = (zzcdr) this.zzc.get();
            if (zzcdrVar != null) {
                zzcdrVar.zzt(zzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            this.zzk = -1L;
            zzd(0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
            sb.append("Failed to preload url ");
            sb.append(str);
            sb.append(" Exception: ");
            sb.append(message);
            String sb2 = sb.toString();
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzq(str, zzc, "error", zzx("error", e));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzh(int i) {
        this.zze.zzG(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzi(int i) {
        this.zze.zzF(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzj(int i) {
        this.zze.zzy(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzk(int i) {
        this.zze.zzz(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzl() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzq(this.zzf, zzc(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzr(final boolean z, final long j) {
        final zzcdr zzcdrVar = (zzcdr) this.zzc.get();
        if (zzcdrVar != null) {
            zzcbv.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfm
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    int i = zzcfn.zzd;
                    zzcdr.this.zzu(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzs(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzt(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzu(String str, Exception exc) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.zzh().zzh(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcdh
    public final void zzv(String str, Exception exc) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache exception", exc);
        com.google.android.gms.ads.internal.zzt.zzh().zzh(exc, "VideoStreamExoPlayerCache.onException");
    }
}
