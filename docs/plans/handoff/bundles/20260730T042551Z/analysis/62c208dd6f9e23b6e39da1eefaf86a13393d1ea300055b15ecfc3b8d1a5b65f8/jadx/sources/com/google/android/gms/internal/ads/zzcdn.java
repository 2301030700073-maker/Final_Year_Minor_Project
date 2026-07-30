package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzcdn extends zzcde implements zzcbi {
    public static final /* synthetic */ int zzd = 0;
    private zzcbj zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzccw zzi;
    private long zzj;
    private long zzk;

    public zzcdn(zzcbs zzcbsVar, zzcbr zzcbrVar) {
        super(zzcbsVar);
        zzcef zzcefVar = new zzcef(zzcbsVar.getContext(), zzcbrVar, (zzcbs) this.zzc.get(), null);
        com.google.android.gms.ads.internal.util.client.zzo.zzi("ExoPlayerAdapter initialized.");
        this.zze = zzcefVar;
        zzcefVar.zzL(this);
    }

    public static final String zzc(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str)));
    }

    private static String zzd(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + CertificateUtil.DELIMITER + exc.getMessage();
    }

    private final void zzx(long j) {
        com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdm
            @Override // java.lang.Runnable
            public final void run() {
                zzcdn.this.zzb();
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcde, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcbj zzcbjVar = this.zze;
        if (zzcbjVar != null) {
            zzcbjVar.zzL(null);
            this.zze.zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzD(int i, int i2) {
    }

    public final zzcbj zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzL(null);
        zzcbj zzcbjVar = this.zze;
        this.zze = null;
        return zzcbjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* JADX WARN: Type inference failed for: r3v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22, types: [com.google.android.gms.internal.ads.zzcde, com.google.android.gms.internal.ads.zzcdn] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [com.google.android.gms.internal.ads.zzcdn] */
    /* JADX WARN: Type inference failed for: r3v31 */
    public final /* synthetic */ void zzb() {
        String str;
        zzcdn zzcdnVar;
        zzcdn zzcdnVar2;
        ?? longValue;
        long intValue;
        zzcdn zzcdnVar3;
        long j;
        long j2;
        String str2;
        long j3;
        String zzc = zzc(this.zzf);
        String str3 = "error";
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzK)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzs)).intValue();
            zzcdnVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbY)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            str = zzc;
            zzcdnVar = this;
        }
        synchronized (this) {
            try {
                int i = ((com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.zzj) > longValue ? 1 : ((com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.zzj) == longValue ? 0 : -1));
                if (i <= 0) {
                    try {
                        if (this.zzg) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.zzh) {
                            if (!this.zze.zzV()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzz = this.zze.zzz();
                            if (zzz > 0) {
                                long zzv = this.zze.zzv();
                                if (zzv != this.zzk) {
                                    try {
                                        j2 = intValue;
                                        str2 = zzc;
                                        try {
                                            zzo(this.zzf, zzc, zzv, zzz, zzv > 0, zzcdnVar != 0 ? this.zze.zzA() : -1L, zzcdnVar != 0 ? this.zze.zzx() : -1L, zzcdnVar != 0 ? this.zze.zzB() : -1L, zzcbj.zzs(), zzcbj.zzu());
                                            zzcdnVar = this;
                                            j = zzv;
                                            try {
                                                zzcdnVar.zzk = j;
                                                j3 = zzz;
                                                zzcdnVar = zzcdnVar;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzcdnVar = this;
                                            str = str2;
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        zzcdnVar = this;
                                        str = zzc;
                                    }
                                } else {
                                    j = zzv;
                                    j2 = intValue;
                                    str2 = zzc;
                                    zzcdnVar = this;
                                    j3 = zzz;
                                }
                                if (j >= j3) {
                                    zzcdnVar.zzj(zzcdnVar.zzf, str2, j3);
                                    zzcdnVar2 = zzcdnVar;
                                } else {
                                    long zzw = zzcdnVar.zze.zzw();
                                    zzcdnVar3 = zzcdnVar;
                                    if (zzw >= j2) {
                                        zzcdnVar3 = zzcdnVar;
                                        if (j > 0) {
                                            zzcdnVar2 = zzcdnVar;
                                        }
                                    }
                                }
                            } else {
                                zzcdnVar3 = this;
                            }
                            zzcdnVar3.zzx(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzL)).longValue());
                            return;
                        }
                        zzcdnVar2 = this;
                        com.google.android.gms.ads.internal.zzv.zzz().zzc(zzcdnVar2.zzi);
                    } catch (Throwable th5) {
                        th = th5;
                        str3 = longValue;
                        str = i;
                    }
                } else {
                    str = zzc;
                    zzcdnVar = this;
                    try {
                        throw new IOException("Timeout reached. Limit: " + ((long) longValue) + " ms");
                    } catch (Throwable th6) {
                        th = th6;
                        str3 = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = zzc;
                zzcdnVar = this;
            }
            try {
                throw th;
            } catch (Exception e2) {
                e = e2;
                String str4 = str3;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + zzcdnVar.zzf + " Exception: " + e.getMessage());
                com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcdnVar.zzg(zzcdnVar.zzf, str, str4, zzd(str4, e));
                zzcdnVar2 = zzcdnVar;
                com.google.android.gms.ads.internal.zzv.zzz().zzc(zzcdnVar2.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzf() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzg(this.zzf, zzc(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzi(final boolean z, final long j) {
        final zzcbs zzcbsVar = (zzcbs) this.zzc.get();
        if (zzcbsVar != null) {
            zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdl
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbs.this.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzk(String str, Exception exc) {
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzl(String str, Exception exc) {
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzp(int i) {
        this.zze.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzq(int i) {
        this.zze.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzr(int i) {
        this.zze.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzs(int i) {
        this.zze.zzN(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzcde] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzcde
    public final boolean zzu(String str, String[] strArr) {
        ?? r6;
        String str2;
        ?? r5;
        long j;
        long j2;
        long j3;
        ?? r1;
        long j4;
        String str3;
        long j5;
        long j6;
        long j7;
        zzcdn zzcdnVar = this;
        String str4 = str;
        zzcdnVar.zzf = str4;
        String str5 = "error";
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zzcdnVar.zze.zzF(uriArr, zzcdnVar.zzb);
            zzcbs zzcbsVar = (zzcbs) zzcdnVar.zzc.get();
            if (zzcbsVar != null) {
                zzcbsVar.zzt(zzc, zzcdnVar);
            }
            Clock zzC = com.google.android.gms.ads.internal.zzv.zzC();
            long currentTimeMillis = zzC.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzL)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzK)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzs)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbY)).booleanValue();
            long j8 = -1;
            long j9 = intValue;
            while (true) {
                synchronized (this) {
                    try {
                        if (zzC.currentTimeMillis() - currentTimeMillis > longValue2) {
                            throw new IOException("Timeout reached. Limit: " + longValue2 + " ms");
                        }
                        if (zzcdnVar.zzg) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (zzcdnVar.zzh) {
                            break;
                        }
                        if (!zzcdnVar.zze.zzV()) {
                            throw new IOException("ExoPlayer was released during preloading.");
                        }
                        long zzz = zzcdnVar.zze.zzz();
                        if (zzz > 0) {
                            long zzv = zzcdnVar.zze.zzv();
                            if (zzv != j8) {
                                try {
                                    j = j9;
                                    j7 = zzz;
                                    j2 = longValue2;
                                    j4 = longValue;
                                    str3 = zzc;
                                } catch (Throwable th) {
                                    th = th;
                                    r5 = this;
                                    r6 = str;
                                    str2 = zzc;
                                }
                                try {
                                    zzo(str, zzc, zzv, j7, zzv > 0, booleanValue ? zzcdnVar.zze.zzA() : -1L, booleanValue ? zzcdnVar.zze.zzx() : -1L, booleanValue ? zzcdnVar.zze.zzB() : -1L, zzcbj.zzs(), zzcbj.zzu());
                                    j6 = zzv;
                                    j5 = zzz;
                                    r6 = j7;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r5 = this;
                                    r6 = str;
                                    str2 = str3;
                                    try {
                                        throw th;
                                    } catch (Exception e) {
                                        e = e;
                                        String str6 = str5;
                                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + r6 + " Exception: " + e.getMessage());
                                        com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
                                        release();
                                        r5.zzg(r6, str2, str6, zzd(str6, e));
                                        return false;
                                    }
                                }
                            } else {
                                j = j9;
                                j2 = longValue2;
                                j4 = longValue;
                                str3 = zzc;
                                j5 = zzz;
                                j6 = j8;
                                r6 = j9;
                            }
                            r5 = (zzv > j5 ? 1 : (zzv == j5 ? 0 : -1));
                            if (r5 >= 0) {
                                zzj(str, str3, j5);
                            } else {
                                try {
                                    zzcdn zzcdnVar2 = this;
                                    r6 = str;
                                    str2 = str3;
                                    if (zzcdnVar2.zze.zzw() < j || zzv <= 0) {
                                        j3 = j4;
                                        r1 = j6;
                                        r5 = zzcdnVar2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        } else {
                            j = j9;
                            j2 = longValue2;
                            r6 = str4;
                            str2 = zzc;
                            r5 = zzcdnVar;
                            j3 = longValue;
                            r1 = j8;
                        }
                        try {
                            try {
                                r5.wait(j3);
                            } catch (InterruptedException unused) {
                                throw new IOException("Wait interrupted.");
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            str5 = r1;
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r6 = str4;
                        str2 = zzc;
                        r5 = zzcdnVar;
                    }
                }
                longValue = j3;
                zzcdnVar = r5;
                str4 = r6;
                zzc = str2;
                j9 = j;
                longValue2 = j2;
                j8 = r1;
            }
            return true;
        } catch (Exception e2) {
            e = e2;
            r6 = str4;
            str2 = zzc;
            r5 = zzcdnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbi
    public final void zzv() {
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final boolean zzw(String str, String[] strArr, zzccw zzccwVar) {
        this.zzf = str;
        this.zzi = zzccwVar;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzcbs zzcbsVar = (zzcbs) this.zzc.get();
            if (zzcbsVar != null) {
                zzcbsVar.zzt(zzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str + " Exception: " + e.getMessage());
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, zzc, "error", zzd("error", e));
            return false;
        }
    }
}
