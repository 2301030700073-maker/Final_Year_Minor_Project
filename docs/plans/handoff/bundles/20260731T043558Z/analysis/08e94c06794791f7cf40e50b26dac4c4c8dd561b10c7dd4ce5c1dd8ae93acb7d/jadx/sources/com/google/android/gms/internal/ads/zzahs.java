package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzahs implements zzada {
    public static final /* synthetic */ int zza = 0;
    private final zzeg zzb;
    private final zzadw zzc;
    private final zzads zzd;
    private final zzadu zze;
    private final zzaem zzf;
    private zzadd zzg;
    private zzaem zzh;
    private zzaem zzi;
    private int zzj;
    private zzap zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzahu zzq;
    private boolean zzr;

    static {
        int i = zzahq.zza;
    }

    public zzahs() {
        throw null;
    }

    public zzahs(int i) {
        this.zzb = new zzeg(10);
        this.zzc = new zzadw();
        this.zzd = new zzads();
        this.zzl = C.TIME_UNSET;
        this.zze = new zzadu();
        zzacx zzacxVar = new zzacx();
        this.zzf = zzacxVar;
        this.zzi = zzacxVar;
        this.zzo = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0111  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzh(com.google.android.gms.internal.ads.zzadb r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 747
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahs.zzh(com.google.android.gms.internal.ads.zzadb):int");
    }

    private final long zzi(long j) {
        return this.zzl + ((j * 1000000) / this.zzc.zzd);
    }

    private final boolean zzj(zzadb zzadbVar, boolean z) throws IOException {
        int i;
        int i2;
        int zza2;
        zzadbVar.zzl();
        long zzn = zzadbVar.zzn();
        int i3 = true != z ? 131072 : 32768;
        if (zzn == 0) {
            zzap zza3 = this.zze.zza(zzadbVar, null, i3);
            this.zzk = zza3;
            if (zza3 != null) {
                this.zzd.zza(zza3);
            }
            i = (int) zzadbVar.zzm();
            if (!z) {
                zzadbVar.zzf(i);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i4 = i2;
        int i5 = i4;
        while (true) {
            if (!zzk(zzadbVar)) {
                zzeg zzegVar = this.zzb;
                zzegVar.zzh(0);
                int zzB = zzegVar.zzB();
                if ((i2 == 0 || zzm(zzB, i2)) && (zza2 = zzadx.zza(zzB)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        this.zzc.zza(zzB);
                        i2 = zzB;
                    }
                    zzadbVar.zzk(zza2 - 4);
                } else {
                    int i6 = i5 + 1;
                    if (i5 == i3) {
                        if (z) {
                            return false;
                        }
                        zzl();
                        throw new EOFException();
                    }
                    if (z) {
                        zzadbVar.zzl();
                        zzadbVar.zzk(i + i6);
                    } else {
                        zzadbVar.zzf(1);
                    }
                    i4 = 0;
                    i5 = i6;
                    i2 = 0;
                }
            } else if (i4 <= 0) {
                zzl();
                throw new EOFException();
            }
        }
        if (z) {
            zzadbVar.zzf(i + i5);
        } else {
            zzadbVar.zzl();
        }
        this.zzj = i2;
        return true;
    }

    private final boolean zzk(zzadb zzadbVar) throws IOException {
        zzahu zzahuVar = this.zzq;
        if (zzahuVar != null) {
            long zzf = zzahuVar.zzf();
            if (zzf != -1 && zzadbVar.zzm() > zzf - 4) {
                return true;
            }
        }
        try {
            return !zzadbVar.zzh(this.zzb.zzi(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final void zzl() {
        zzahu zzahuVar = this.zzq;
        if ((zzahuVar instanceof zzahn) && zzahuVar.zzb()) {
            long j = this.zzo;
            if (j == -1 || j == this.zzq.zzf()) {
                return;
            }
            this.zzq = ((zzahn) this.zzq).zzh(this.zzo);
            zzadd zzaddVar = this.zzg;
            zzaddVar.getClass();
            zzaddVar.zzw(this.zzq);
            this.zzh.getClass();
            this.zzq.zza();
        }
    }

    private static boolean zzm(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        return zzj(zzadbVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zzg = zzaddVar;
        zzaem zzu = zzaddVar.zzu(0, 1);
        this.zzh = zzu;
        this.zzi = zzu;
        this.zzg.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        this.zzh.getClass();
        String str = zzep.zza;
        int zzh = zzh(zzadbVar);
        if (zzh == -1 && (this.zzq instanceof zzaho)) {
            if (this.zzq.zza() != zzi(this.zzm)) {
                throw null;
            }
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        this.zzj = 0;
        this.zzl = C.TIME_UNSET;
        this.zzm = 0L;
        this.zzp = 0;
        zzahu zzahuVar = this.zzq;
        if (zzahuVar instanceof zzaho) {
            throw null;
        }
    }

    public final void zzg() {
        this.zzr = true;
    }
}
