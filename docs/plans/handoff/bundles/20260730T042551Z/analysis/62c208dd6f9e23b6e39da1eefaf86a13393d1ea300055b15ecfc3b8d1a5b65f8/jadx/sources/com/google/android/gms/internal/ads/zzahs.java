package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzahs implements zzacn {
    private final zzdy zza;
    private final zzadf zzb;
    private final zzadb zzc;
    private final zzadd zzd;
    private final zzadt zze;
    private zzacq zzf;
    private zzadt zzg;
    private zzadt zzh;
    private int zzi;
    private zzay zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private zzahu zzp;
    private boolean zzq;

    public zzahs() {
        throw null;
    }

    public zzahs(int i) {
        this.zza = new zzdy(10);
        this.zzb = new zzadf();
        this.zzc = new zzadb();
        this.zzk = -9223372036854775807L;
        this.zzd = new zzadd();
        zzaci zzaciVar = new zzaci();
        this.zze = zzaciVar;
        this.zzh = zzaciVar;
        this.zzn = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzg(com.google.android.gms.internal.ads.zzaco r35) {
        /*
            Method dump skipped, instructions count: 775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahs.zzg(com.google.android.gms.internal.ads.zzaco):int");
    }

    private final long zzh(long j) {
        zzadf zzadfVar = this.zzb;
        return ((j * 1000000) / zzadfVar.zzd) + this.zzk;
    }

    private final void zzj() {
        zzahu zzahuVar = this.zzp;
        if ((zzahuVar instanceof zzahp) && zzahuVar.zzh()) {
            long j = this.zzn;
            if (j == -1 || j == this.zzp.zzd()) {
                return;
            }
            zzahp zzf = ((zzahp) this.zzp).zzf(this.zzn);
            this.zzp = zzf;
            zzacq zzacqVar = this.zzf;
            zzacqVar.getClass();
            zzacqVar.zzO(zzf);
        }
    }

    private static boolean zzk(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzl(zzaco zzacoVar) {
        zzahu zzahuVar = this.zzp;
        if (zzahuVar != null) {
            long zzd = zzahuVar.zzd();
            if (zzd != -1 && zzacoVar.zze() > zzd - 4) {
                return true;
            }
        }
        try {
            return !zzacoVar.zzm(this.zza.zzN(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzm(zzaco zzacoVar, boolean z) {
        int i;
        int i2;
        int zzb;
        zzacoVar.zzj();
        if (zzacoVar.zzf() == 0) {
            zzay zza = this.zzd.zza(zzacoVar, null);
            this.zzj = zza;
            if (zza != null) {
                this.zzc.zzb(zza);
            }
            i2 = (int) zzacoVar.zze();
            if (!z) {
                zzacoVar.zzk(i2);
            }
            i = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (!zzl(zzacoVar)) {
                this.zza.zzL(0);
                int zzg = this.zza.zzg();
                if ((i == 0 || zzk(zzg, i)) && (zzb = zzadg.zzb(zzg)) != -1) {
                    i3++;
                    if (i3 != 1) {
                        if (i3 == 4) {
                            break;
                        }
                    } else {
                        this.zzb.zza(zzg);
                        i = zzg;
                    }
                    zzacoVar.zzg(zzb - 4);
                } else {
                    int i5 = i4 + 1;
                    if (i4 == (true != z ? 131072 : 32768)) {
                        if (z) {
                            return false;
                        }
                        zzj();
                        throw new EOFException();
                    }
                    if (z) {
                        zzacoVar.zzj();
                        zzacoVar.zzg(i2 + i5);
                    } else {
                        zzacoVar.zzk(1);
                    }
                    i4 = i5;
                    i = 0;
                    i3 = 0;
                }
            } else if (i3 <= 0) {
                zzj();
                throw new EOFException();
            }
        }
        if (z) {
            zzacoVar.zzk(i2 + i4);
        } else {
            zzacoVar.zzj();
        }
        this.zzi = i;
        return true;
    }

    public final void zza() {
        this.zzq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        zzcw.zzb(this.zzg);
        int i = zzei.zza;
        int zzg = zzg(zzacoVar);
        if (zzg == -1 && (this.zzp instanceof zzahq)) {
            if (this.zzp.zza() != zzh(this.zzl)) {
                throw null;
            }
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return zzfxn.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        this.zzf = zzacqVar;
        zzadt zzw = zzacqVar.zzw(0, 1);
        this.zzg = zzw;
        this.zzh = zzw;
        this.zzf.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzi = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = 0L;
        this.zzo = 0;
        zzahu zzahuVar = this.zzp;
        if (zzahuVar instanceof zzahq) {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        return zzm(zzacoVar, true);
    }
}
