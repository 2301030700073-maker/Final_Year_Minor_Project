package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaeu implements zzada {
    private static final int[] zza;
    private static final int[] zzb;
    private static final byte[] zzc;
    private static final byte[] zzd;
    private final byte[] zze;
    private final zzaem zzf;
    private boolean zzg;
    private long zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private zzadd zzn;
    private zzaem zzo;
    private zzaem zzp;
    private zzaed zzq;
    private long zzr;
    private boolean zzs;

    static {
        int i = zzaet.zza;
        zza = new int[]{13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
        zzb = new int[]{18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        String str = zzep.zza;
        zzc = "#!AMR\n".getBytes(StandardCharsets.UTF_8);
        zzd = "#!AMR-WB\n".getBytes(StandardCharsets.UTF_8);
    }

    public zzaeu() {
        throw null;
    }

    public zzaeu(int i) {
        this.zze = new byte[1];
        this.zzk = -1;
        zzacx zzacxVar = new zzacx();
        this.zzf = zzacxVar;
        this.zzp = zzacxVar;
    }

    private final boolean zzg(zzadb zzadbVar) throws IOException {
        byte[] bArr = zzc;
        if (zzh(zzadbVar, bArr)) {
            this.zzg = false;
            zzadbVar.zzf(bArr.length);
            return true;
        }
        byte[] bArr2 = zzd;
        if (!zzh(zzadbVar, bArr2)) {
            return false;
        }
        this.zzg = true;
        zzadbVar.zzf(bArr2.length);
        return true;
    }

    private static boolean zzh(zzadb zzadbVar, byte[] bArr) throws IOException {
        zzadbVar.zzl();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzadbVar.zzi(bArr2, 0, length);
        return Arrays.equals(bArr2, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003a A[Catch: EOFException -> 0x00a4, TryCatch #0 {EOFException -> 0x00a4, blocks: (B:13:0x0007, B:15:0x0018, B:23:0x003a, B:24:0x0043, B:30:0x003f, B:40:0x005d, B:41:0x0085, B:42:0x0086, B:43:0x00a3), top: B:12:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003f A[Catch: EOFException -> 0x00a4, TryCatch #0 {EOFException -> 0x00a4, blocks: (B:13:0x0007, B:15:0x0018, B:23:0x003a, B:24:0x0043, B:30:0x003f, B:40:0x005d, B:41:0x0085, B:42:0x0086, B:43:0x00a3), top: B:12:0x0007 }] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzi(com.google.android.gms.internal.ads.zzadb r10) throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.zzj
            r1 = 0
            r2 = -1
            r3 = 1
            if (r0 != 0) goto La5
            java.lang.String r0 = "Invalid padding bits for frame header "
            r10.zzl()     // Catch: java.io.EOFException -> La4
            byte[] r4 = r9.zze     // Catch: java.io.EOFException -> La4
            r10.zzi(r4, r1, r3)     // Catch: java.io.EOFException -> La4
            r4 = r4[r1]     // Catch: java.io.EOFException -> La4
            r5 = r4 & 131(0x83, float:1.84E-43)
            r6 = 0
            if (r5 > 0) goto L86
            int r0 = r4 >> 3
            java.lang.String r4 = "Illegal AMR "
            java.lang.String r5 = " frame type "
            boolean r7 = r9.zzg     // Catch: java.io.EOFException -> La4
            r0 = r0 & 15
            if (r7 == 0) goto L2d
            r8 = 10
            if (r0 < r8) goto L38
            r8 = 13
            if (r0 <= r8) goto L2d
            goto L38
        L2d:
            if (r7 != 0) goto L56
            r8 = 12
            if (r0 < r8) goto L38
            r8 = 14
            if (r0 > r8) goto L38
            goto L56
        L38:
            if (r7 == 0) goto L3f
            int[] r4 = com.google.android.gms.internal.ads.zzaeu.zzb     // Catch: java.io.EOFException -> La4
            r0 = r4[r0]     // Catch: java.io.EOFException -> La4
            goto L43
        L3f:
            int[] r4 = com.google.android.gms.internal.ads.zzaeu.zza     // Catch: java.io.EOFException -> La4
            r0 = r4[r0]     // Catch: java.io.EOFException -> La4
        L43:
            r9.zzi = r0     // Catch: java.io.EOFException -> La4
            r9.zzj = r0
            int r4 = r9.zzk
            if (r4 != r2) goto L4e
            r9.zzk = r0
            r4 = r0
        L4e:
            if (r4 != r0) goto La5
            int r4 = r9.zzl
            int r4 = r4 + r3
            r9.zzl = r4
            goto La5
        L56:
            java.lang.String r10 = "WB"
            java.lang.String r1 = "NB"
            if (r3 == r7) goto L5d
            r10 = r1
        L5d:
            int r1 = r10.length()     // Catch: java.io.EOFException -> La4
            int r1 = r1 + 24
            java.lang.String r3 = java.lang.String.valueOf(r0)     // Catch: java.io.EOFException -> La4
            int r3 = r3.length()     // Catch: java.io.EOFException -> La4
            int r1 = r1 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> La4
            r3.<init>(r1)     // Catch: java.io.EOFException -> La4
            r3.append(r4)     // Catch: java.io.EOFException -> La4
            r3.append(r10)     // Catch: java.io.EOFException -> La4
            r3.append(r5)     // Catch: java.io.EOFException -> La4
            r3.append(r0)     // Catch: java.io.EOFException -> La4
            java.lang.String r10 = r3.toString()     // Catch: java.io.EOFException -> La4
            com.google.android.gms.internal.ads.zzat r10 = com.google.android.gms.internal.ads.zzat.zzb(r10, r6)     // Catch: java.io.EOFException -> La4
            throw r10     // Catch: java.io.EOFException -> La4
        L86:
            java.lang.String r10 = java.lang.String.valueOf(r4)     // Catch: java.io.EOFException -> La4
            int r10 = r10.length()     // Catch: java.io.EOFException -> La4
            int r10 = r10 + 38
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> La4
            r1.<init>(r10)     // Catch: java.io.EOFException -> La4
            r1.append(r0)     // Catch: java.io.EOFException -> La4
            r1.append(r4)     // Catch: java.io.EOFException -> La4
            java.lang.String r10 = r1.toString()     // Catch: java.io.EOFException -> La4
            com.google.android.gms.internal.ads.zzat r10 = com.google.android.gms.internal.ads.zzat.zzb(r10, r6)     // Catch: java.io.EOFException -> La4
            throw r10     // Catch: java.io.EOFException -> La4
        La4:
            return r2
        La5:
            com.google.android.gms.internal.ads.zzaem r4 = r9.zzp
            int r10 = r4.zzy(r10, r0, r3)
            if (r10 != r2) goto Lae
            return r2
        Lae:
            int r0 = r9.zzj
            int r0 = r0 - r10
            r9.zzj = r0
            if (r0 <= 0) goto Lb6
            return r1
        Lb6:
            com.google.android.gms.internal.ads.zzaem r2 = r9.zzp
            long r3 = r9.zzh
            int r6 = r9.zzi
            r7 = 0
            r8 = 0
            r5 = 1
            r2.zzx(r3, r5, r6, r7, r8)
            long r2 = r9.zzh
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r2 = r2 + r4
            r9.zzh = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeu.zzi(com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        return zzg(zzadbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zzn = zzaddVar;
        zzaem zzu = zzaddVar.zzu(0, 1);
        this.zzo = zzu;
        this.zzp = zzu;
        zzaddVar.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        this.zzo.getClass();
        String str = zzep.zza;
        if (zzadbVar.zzn() == 0 && !zzg(zzadbVar)) {
            throw zzat.zzb("Could not find AMR header.", null);
        }
        if (!this.zzs) {
            this.zzs = true;
            boolean z = this.zzg;
            String str2 = MimeTypes.AUDIO_AMR_WB;
            String str3 = true != z ? MimeTypes.AUDIO_AMR : MimeTypes.AUDIO_AMR_WB;
            if (true != z) {
                str2 = MimeTypes.AUDIO_AMR_NB;
            }
            int i = true != z ? 8000 : AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            int i2 = z ? zzb[8] : zza[7];
            zzaem zzaemVar = this.zzo;
            zzt zztVar = new zzt();
            zztVar.zzl(str3);
            zztVar.zzm(str2);
            zztVar.zzn(i2);
            zztVar.zzE(1);
            zztVar.zzF(i);
            zzaemVar.zzu(zztVar.zzM());
        }
        int zzi = zzi(zzadbVar);
        if (this.zzq == null) {
            zzaec zzaecVar = new zzaec(C.TIME_UNSET, 0L);
            this.zzq = zzaecVar;
            this.zzn.zzw(zzaecVar);
        }
        return zzi == -1 ? -1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        this.zzh = 0L;
        this.zzi = 0;
        this.zzj = 0;
        this.zzr = j2;
        this.zzm = 0L;
    }
}
