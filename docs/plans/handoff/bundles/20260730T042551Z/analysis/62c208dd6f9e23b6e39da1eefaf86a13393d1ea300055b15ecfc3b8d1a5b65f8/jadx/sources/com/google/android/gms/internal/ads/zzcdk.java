package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.internal.Utility;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.Clock;
import defpackage.Creturn;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzcdk extends zzcde implements zzgy {
    private static final AtomicInteger zzd = new AtomicInteger(0);
    private String zze;
    private final zzcbr zzf;
    private boolean zzg;
    private final zzcdj zzh;
    private final zzcco zzi;
    private ByteBuffer zzj;
    private boolean zzk;
    private final Object zzl;
    private final String zzm;
    private final int zzn;
    private boolean zzo;

    public zzcdk(zzcbs zzcbsVar, zzcbr zzcbrVar) {
        super(zzcbsVar);
        this.zzf = zzcbrVar;
        this.zzh = new zzcdj();
        this.zzi = new zzcco();
        this.zzl = new Object();
        this.zzm = (String) zzful.zzd(zzcbsVar != null ? zzcbsVar.zzr() : null).zzb(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.zzn = zzcbsVar != null ? zzcbsVar.zzf() : 0;
        zzd.incrementAndGet();
    }

    public static int zzi() {
        return zzd.get();
    }

    public static final String zzv(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str)));
    }

    private final void zzx() {
        int zza = (int) this.zzh.zza();
        int zza2 = (int) this.zzi.zza(this.zzj);
        int position = this.zzj.position();
        int round = Math.round((position / zza) * zza2);
        int zzs = zzcbj.zzs();
        int zzu = zzcbj.zzu();
        String str = this.zze;
        zzn(str, zzv(str), position, zza, round, zza2, round > 0, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzcde, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzd.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final void zza(zzfy zzfyVar, zzgd zzgdVar, boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final void zzb(zzfy zzfyVar, zzgd zzgdVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final void zzc(zzfy zzfyVar, zzgd zzgdVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final void zzd(zzfy zzfyVar, zzgd zzgdVar, boolean z) {
        if (zzfyVar instanceof zzgl) {
            this.zzh.zzb((zzgl) zzfyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final void zzf() {
        this.zzg = true;
    }

    public final String zzk() {
        return this.zze;
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzl) {
            ByteBuffer byteBuffer = this.zzj;
            if (byteBuffer != null && !this.zzk) {
                byteBuffer.flip();
                this.zzk = true;
            }
            this.zzg = true;
        }
        return this.zzj;
    }

    public final boolean zzm() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcde
    public final boolean zzt(String str) {
        String str2;
        String str3;
        zzcdk zzcdkVar;
        String str4;
        String str5 = str;
        this.zze = str5;
        String zzv = zzv(str);
        int i = 0;
        try {
            zzgg zzggVar = new zzgg();
            zzggVar.zzf(this.zzb);
            zzggVar.zzc(this.zzf.zzd);
            zzggVar.zzd(this.zzf.zze);
            zzggVar.zzb(true);
            zzggVar.zze(this);
            zzfy zza = zzggVar.zza();
            if (this.zzf.zzi) {
                zza = new zzccm(this.zza, zza, this.zzm, this.zzn, null, null);
            }
            zza.zzb(new zzgd(Uri.parse(str), 0L, -1L, null));
            zzcbs zzcbsVar = (zzcbs) this.zzc.get();
            if (zzcbsVar != null) {
                zzcbsVar.zzt(zzv, this);
            }
            Clock zzC = com.google.android.gms.ads.internal.zzv.zzC();
            long currentTimeMillis = zzC.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzL)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzK)).longValue();
            this.zzj = ByteBuffer.allocate(this.zzf.zzc);
            int i2 = Utility.DEFAULT_STREAM_BUFFER_SIZE;
            byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
            str2 = "error";
            long j = currentTimeMillis;
            while (true) {
                try {
                    int zza2 = zza.zza(bArr, i, Math.min(this.zzj.remaining(), i2));
                    if (zza2 == -1) {
                        this.zzo = true;
                        zzj(str5, zzv, (int) this.zzi.zza(this.zzj));
                        return true;
                    }
                    synchronized (this.zzl) {
                        try {
                            if (!this.zzg) {
                                str5 = null;
                                this.zzj.put(bArr, 0, zza2);
                            }
                        } finally {
                            th = th;
                            str3 = str;
                            zzcdkVar = this;
                            while (true) {
                                try {
                                    try {
                                        break;
                                    } catch (Exception e) {
                                        e = e;
                                        str4 = str2;
                                        String m7982new = Creturn.m7982new(e.getClass().getCanonicalName(), CertificateUtil.DELIMITER, e.getMessage());
                                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str3 + " Exception: " + m7982new);
                                        zzcdkVar.zzg(str3, zzv, str4, m7982new);
                                        return false;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                }
                            }
                        }
                    }
                    if (this.zzj.remaining() <= 0) {
                        zzx();
                        return true;
                    }
                    try {
                        if (this.zzg) {
                            throw new IOException("Precache abort at " + this.zzj.limit() + " bytes");
                        }
                        long currentTimeMillis2 = zzC.currentTimeMillis();
                        if (currentTimeMillis2 - j >= longValue) {
                            zzx();
                            j = currentTimeMillis2;
                        }
                        if (currentTimeMillis2 - currentTimeMillis > 1000 * longValue2) {
                            throw new IOException("Timeout exceeded. Limit: " + longValue2 + " sec");
                        }
                        i = 0;
                        i2 = Utility.DEFAULT_STREAM_BUFFER_SIZE;
                        str5 = str;
                    } catch (Exception e2) {
                        e = e2;
                        zzcdkVar = this;
                        str4 = str5;
                        str3 = str;
                        String m7982new2 = Creturn.m7982new(e.getClass().getCanonicalName(), CertificateUtil.DELIMITER, e.getMessage());
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str3 + " Exception: " + m7982new2);
                        zzcdkVar.zzg(str3, zzv, str4, m7982new2);
                        return false;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str4 = str2;
                    String m7982new22 = Creturn.m7982new(e.getClass().getCanonicalName(), CertificateUtil.DELIMITER, e.getMessage());
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str3 + " Exception: " + m7982new22);
                    zzcdkVar.zzg(str3, zzv, str4, m7982new22);
                    return false;
                }
            }
        } catch (Exception e4) {
            e = e4;
            str2 = "error";
        }
    }
}
