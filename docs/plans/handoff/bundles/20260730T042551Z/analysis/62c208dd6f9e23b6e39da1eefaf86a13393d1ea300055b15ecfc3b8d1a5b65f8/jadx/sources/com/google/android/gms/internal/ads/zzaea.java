package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaea implements zzacn {
    private static final int[] zza = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] zzb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] zzc;
    private static final byte[] zzd;
    private final byte[] zze;
    private final zzadt zzf;
    private boolean zzg;
    private long zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private zzacq zzn;
    private zzadt zzo;
    private zzadt zzp;
    private zzadm zzq;
    private long zzr;
    private boolean zzs;

    static {
        int i = zzei.zza;
        zzc = "#!AMR\n".getBytes(StandardCharsets.UTF_8);
        zzd = "#!AMR-WB\n".getBytes(StandardCharsets.UTF_8);
    }

    public zzaea() {
        throw null;
    }

    public zzaea(int i) {
        this.zze = new byte[1];
        this.zzk = -1;
        zzaci zzaciVar = new zzaci();
        this.zzf = zzaciVar;
        this.zzp = zzaciVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003a A[Catch: EOFException -> 0x0088, TryCatch #0 {EOFException -> 0x0088, blocks: (B:13:0x000b, B:15:0x001c, B:23:0x003a, B:24:0x0043, B:30:0x003f, B:40:0x005e, B:41:0x0076, B:42:0x0077, B:43:0x0087), top: B:12:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003f A[Catch: EOFException -> 0x0088, TryCatch #0 {EOFException -> 0x0088, blocks: (B:13:0x000b, B:15:0x001c, B:23:0x003a, B:24:0x0043, B:30:0x003f, B:40:0x005e, B:41:0x0076, B:42:0x0077, B:43:0x0087), top: B:12:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(com.google.android.gms.internal.ads.zzaco r12) {
        /*
            r11 = this;
            java.lang.String r0 = "Illegal AMR "
            java.lang.String r1 = "Invalid padding bits for frame header "
            int r2 = r11.zzj
            r3 = 0
            r4 = -1
            r5 = 1
            if (r2 != 0) goto L89
            r12.zzj()     // Catch: java.io.EOFException -> L88
            byte[] r2 = r11.zze     // Catch: java.io.EOFException -> L88
            r12.zzh(r2, r3, r5)     // Catch: java.io.EOFException -> L88
            byte[] r2 = r11.zze     // Catch: java.io.EOFException -> L88
            r2 = r2[r3]     // Catch: java.io.EOFException -> L88
            r6 = r2 & 131(0x83, float:1.84E-43)
            r7 = 0
            if (r6 > 0) goto L77
            int r1 = r2 >> 3
            boolean r2 = r11.zzg     // Catch: java.io.EOFException -> L88
            r1 = r1 & 15
            if (r2 == 0) goto L2d
            r6 = 10
            if (r1 < r6) goto L38
            r6 = 13
            if (r1 <= r6) goto L2d
            goto L38
        L2d:
            if (r2 != 0) goto L57
            r6 = 12
            if (r1 < r6) goto L38
            r6 = 14
            if (r1 > r6) goto L38
            goto L57
        L38:
            if (r2 == 0) goto L3f
            int[] r0 = com.google.android.gms.internal.ads.zzaea.zzb     // Catch: java.io.EOFException -> L88
            r0 = r0[r1]     // Catch: java.io.EOFException -> L88
            goto L43
        L3f:
            int[] r0 = com.google.android.gms.internal.ads.zzaea.zza     // Catch: java.io.EOFException -> L88
            r0 = r0[r1]     // Catch: java.io.EOFException -> L88
        L43:
            r2 = r0
            r11.zzi = r2     // Catch: java.io.EOFException -> L88
            r11.zzj = r2
            int r0 = r11.zzk
            if (r0 != r4) goto L4f
            r11.zzk = r2
            r0 = r2
        L4f:
            if (r0 != r2) goto L89
            int r0 = r11.zzl
            int r0 = r0 + r5
            r11.zzl = r0
            goto L89
        L57:
            java.lang.String r12 = "WB"
            java.lang.String r3 = "NB"
            if (r5 == r2) goto L5e
            r12 = r3
        L5e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L88
            r2.<init>(r0)     // Catch: java.io.EOFException -> L88
            r2.append(r12)     // Catch: java.io.EOFException -> L88
            java.lang.String r12 = " frame type "
            r2.append(r12)     // Catch: java.io.EOFException -> L88
            r2.append(r1)     // Catch: java.io.EOFException -> L88
            java.lang.String r12 = r2.toString()     // Catch: java.io.EOFException -> L88
            com.google.android.gms.internal.ads.zzbc r12 = com.google.android.gms.internal.ads.zzbc.zza(r12, r7)     // Catch: java.io.EOFException -> L88
            throw r12     // Catch: java.io.EOFException -> L88
        L77:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L88
            r12.<init>(r1)     // Catch: java.io.EOFException -> L88
            r12.append(r2)     // Catch: java.io.EOFException -> L88
            java.lang.String r12 = r12.toString()     // Catch: java.io.EOFException -> L88
            com.google.android.gms.internal.ads.zzbc r12 = com.google.android.gms.internal.ads.zzbc.zza(r12, r7)     // Catch: java.io.EOFException -> L88
            throw r12     // Catch: java.io.EOFException -> L88
        L88:
            return r4
        L89:
            com.google.android.gms.internal.ads.zzadt r0 = r11.zzp
            int r12 = r0.zzf(r12, r2, r5)
            if (r12 != r4) goto L92
            return r4
        L92:
            int r0 = r11.zzj
            int r0 = r0 - r12
            r11.zzj = r0
            if (r0 <= 0) goto L9a
            return r3
        L9a:
            com.google.android.gms.internal.ads.zzadt r4 = r11.zzp
            long r5 = r11.zzh
            r7 = 1
            int r8 = r11.zzi
            r9 = 0
            r10 = 0
            r4.zzt(r5, r7, r8, r9, r10)
            long r0 = r11.zzh
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r4
            r11.zzh = r0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaea.zza(com.google.android.gms.internal.ads.zzaco):int");
    }

    private static boolean zzg(zzaco zzacoVar, byte[] bArr) {
        zzacoVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzacoVar.zzh(bArr2, 0, length);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzh(zzaco zzacoVar) {
        byte[] bArr = zzc;
        if (zzg(zzacoVar, bArr)) {
            this.zzg = false;
            zzacoVar.zzk(bArr.length);
            return true;
        }
        byte[] bArr2 = zzd;
        if (!zzg(zzacoVar, bArr2)) {
            return false;
        }
        this.zzg = true;
        zzacoVar.zzk(bArr2.length);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        zzcw.zzb(this.zzo);
        int i = zzei.zza;
        if (zzacoVar.zzf() == 0 && !zzh(zzacoVar)) {
            throw zzbc.zza("Could not find AMR header.", null);
        }
        if (!this.zzs) {
            this.zzs = true;
            boolean z = this.zzg;
            String str = true != z ? "audio/3gpp" : "audio/amr-wb";
            int i2 = true != z ? 8000 : 16000;
            int i3 = z ? zzb[8] : zza[7];
            zzadt zzadtVar = this.zzp;
            zzz zzzVar = new zzz();
            zzzVar.zzaa(str);
            zzzVar.zzR(i3);
            zzzVar.zzz(1);
            zzzVar.zzab(i2);
            zzadtVar.zzm(zzzVar.zzag());
        }
        int zza2 = zza(zzacoVar);
        if (this.zzq == null) {
            zzadl zzadlVar = new zzadl(-9223372036854775807L, 0L);
            this.zzq = zzadlVar;
            this.zzn.zzO(zzadlVar);
        }
        return zza2 == -1 ? -1 : 0;
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
        this.zzn = zzacqVar;
        zzadt zzw = zzacqVar.zzw(0, 1);
        this.zzo = zzw;
        this.zzp = zzw;
        zzacqVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzh = 0L;
        this.zzi = 0;
        this.zzj = 0;
        this.zzr = j2;
        this.zzm = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        return zzh(zzacoVar);
    }
}
