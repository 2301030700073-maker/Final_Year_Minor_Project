package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzahm implements zzacn {
    private static final byte[] zza = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzb;
    private static final byte[] zzc;
    private static final byte[] zzd;
    private static final UUID zze;
    private static final Map zzf;
    private long zzA;
    private zzahk zzB;
    private boolean zzC;
    private int zzD;
    private long zzE;
    private boolean zzF;
    private long zzG;
    private long zzH;
    private long zzI;
    private zzdp zzJ;
    private zzdp zzK;
    private boolean zzL;
    private boolean zzM;
    private int zzN;
    private long zzO;
    private long zzP;
    private int zzQ;
    private int zzR;
    private int[] zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private int zzW;
    private boolean zzX;
    private long zzY;
    private int zzZ;
    private int zzaa;
    private int zzab;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private int zzaf;
    private byte zzag;
    private boolean zzah;
    private zzacq zzai;
    private final zzahh zzaj;
    private final zzaho zzg;
    private final SparseArray zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final zzakd zzk;
    private final zzdy zzl;
    private final zzdy zzm;
    private final zzdy zzn;
    private final zzdy zzo;
    private final zzdy zzp;
    private final zzdy zzq;
    private final zzdy zzr;
    private final zzdy zzs;
    private final zzdy zzt;
    private final zzdy zzu;
    private ByteBuffer zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    static {
        int i = zzei.zza;
        zzb = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        zzc = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        zzd = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        zze = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        zzf = DesugarCollections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public zzahm() {
        this(new zzahh(), 2, zzakd.zza);
    }

    private final int zzp(zzaco zzacoVar, zzahk zzahkVar, int i, boolean z) {
        int i2;
        if ("S_TEXT/UTF8".equals(zzahkVar.zzb)) {
            zzx(zzacoVar, zza, i);
            int i3 = this.zzaa;
            zzw();
            return i3;
        }
        if ("S_TEXT/ASS".equals(zzahkVar.zzb)) {
            zzx(zzacoVar, zzc, i);
            int i4 = this.zzaa;
            zzw();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(zzahkVar.zzb)) {
            zzx(zzacoVar, zzd, i);
            int i5 = this.zzaa;
            zzw();
            return i5;
        }
        zzadt zzadtVar = zzahkVar.zzW;
        if (!this.zzac) {
            if (zzahkVar.zzg) {
                this.zzV &= -1073741825;
                if (!this.zzad) {
                    zzacoVar.zzi(this.zzn.zzN(), 0, 1);
                    this.zzZ++;
                    if ((this.zzn.zzN()[0] & 128) == 128) {
                        throw zzbc.zza("Extension bit is set in signal byte", null);
                    }
                    this.zzag = this.zzn.zzN()[0];
                    this.zzad = true;
                }
                byte b = this.zzag;
                if ((b & 1) == 1) {
                    int i6 = b & 2;
                    this.zzV |= 1073741824;
                    if (!this.zzah) {
                        zzacoVar.zzi(this.zzs.zzN(), 0, 8);
                        this.zzZ += 8;
                        this.zzah = true;
                        this.zzn.zzN()[0] = (byte) ((i6 != 2 ? 0 : 128) | 8);
                        this.zzn.zzL(0);
                        zzadtVar.zzs(this.zzn, 1, 1);
                        this.zzaa++;
                        this.zzs.zzL(0);
                        zzadtVar.zzs(this.zzs, 8, 1);
                        this.zzaa += 8;
                    }
                    if (i6 == 2) {
                        if (!this.zzae) {
                            zzacoVar.zzi(this.zzn.zzN(), 0, 1);
                            this.zzZ++;
                            this.zzn.zzL(0);
                            this.zzaf = this.zzn.zzm();
                            this.zzae = true;
                        }
                        int i7 = this.zzaf * 4;
                        this.zzn.zzI(i7);
                        zzacoVar.zzi(this.zzn.zzN(), 0, i7);
                        this.zzZ += i7;
                        int i8 = (this.zzaf >> 1) + 1;
                        int i9 = (i8 * 6) + 2;
                        ByteBuffer byteBuffer = this.zzv;
                        if (byteBuffer == null || byteBuffer.capacity() < i9) {
                            this.zzv = ByteBuffer.allocate(i9);
                        }
                        this.zzv.position(0);
                        this.zzv.putShort((short) i8);
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            i2 = this.zzaf;
                            if (i10 >= i2) {
                                break;
                            }
                            int zzp = this.zzn.zzp();
                            int i12 = zzp - i11;
                            if (i10 % 2 == 0) {
                                this.zzv.putShort((short) i12);
                            } else {
                                this.zzv.putInt(i12);
                            }
                            i10++;
                            i11 = zzp;
                        }
                        int i13 = (i - this.zzZ) - i11;
                        if ((i2 & 1) == 1) {
                            this.zzv.putInt(i13);
                        } else {
                            this.zzv.putShort((short) i13);
                            this.zzv.putInt(0);
                        }
                        this.zzt.zzJ(this.zzv.array(), i9);
                        zzadtVar.zzs(this.zzt, i9, 1);
                        this.zzaa += i9;
                    }
                }
            } else {
                byte[] bArr = zzahkVar.zzh;
                if (bArr != null) {
                    this.zzq.zzJ(bArr, bArr.length);
                }
            }
            if (!"A_OPUS".equals(zzahkVar.zzb) ? zzahkVar.zzf > 0 : z) {
                this.zzV |= 268435456;
                this.zzu.zzI(0);
                int zze2 = (this.zzq.zze() + i) - this.zzZ;
                this.zzn.zzI(4);
                this.zzn.zzN()[0] = (byte) ((zze2 >> 24) & 255);
                this.zzn.zzN()[1] = (byte) ((zze2 >> 16) & 255);
                this.zzn.zzN()[2] = (byte) ((zze2 >> 8) & 255);
                this.zzn.zzN()[3] = (byte) (zze2 & 255);
                zzadtVar.zzs(this.zzn, 4, 2);
                this.zzaa += 4;
            }
            this.zzac = true;
        }
        int zze3 = this.zzq.zze() + i;
        if (!"V_MPEG4/ISO/AVC".equals(zzahkVar.zzb) && !"V_MPEGH/ISO/HEVC".equals(zzahkVar.zzb)) {
            if (zzahkVar.zzT != null) {
                zzcw.zzf(this.zzq.zze() == 0);
                zzahkVar.zzT.zzd(zzacoVar);
            }
            while (true) {
                int i14 = this.zzZ;
                if (i14 >= zze3) {
                    break;
                }
                int zzq = zzq(zzacoVar, zzadtVar, zze3 - i14);
                this.zzZ += zzq;
                this.zzaa += zzq;
            }
        } else {
            byte[] zzN = this.zzm.zzN();
            zzN[0] = 0;
            zzN[1] = 0;
            zzN[2] = 0;
            int i15 = zzahkVar.zzX;
            int i16 = 4 - i15;
            while (this.zzZ < zze3) {
                int i17 = this.zzab;
                if (i17 == 0) {
                    int min = Math.min(i15, this.zzq.zzb());
                    zzacoVar.zzi(zzN, i16 + min, i15 - min);
                    if (min > 0) {
                        this.zzq.zzH(zzN, i16, min);
                    }
                    this.zzZ += i15;
                    this.zzm.zzL(0);
                    this.zzab = this.zzm.zzp();
                    this.zzl.zzL(0);
                    zzadtVar.zzr(this.zzl, 4);
                    this.zzaa += 4;
                } else {
                    int zzq2 = zzq(zzacoVar, zzadtVar, i17);
                    this.zzZ += zzq2;
                    this.zzaa += zzq2;
                    this.zzab -= zzq2;
                }
            }
        }
        if ("A_VORBIS".equals(zzahkVar.zzb)) {
            this.zzo.zzL(0);
            zzadtVar.zzr(this.zzo, 4);
            this.zzaa += 4;
        }
        int i18 = this.zzaa;
        zzw();
        return i18;
    }

    private final int zzq(zzaco zzacoVar, zzadt zzadtVar, int i) {
        int zzb2 = this.zzq.zzb();
        if (zzb2 <= 0) {
            return zzadtVar.zzf(zzacoVar, i, false);
        }
        int min = Math.min(i, zzb2);
        zzadtVar.zzr(this.zzq, min);
        return min;
    }

    private final long zzr(long j) {
        long j2 = this.zzy;
        if (j2 != -9223372036854775807L) {
            return zzei.zzu(j, j2, 1000L, RoundingMode.DOWN);
        }
        throw zzbc.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private final void zzs(int i) {
        if (this.zzJ == null || this.zzK == null) {
            throw zzbc.zza("Element " + i + " must be in a Cues", null);
        }
    }

    private final void zzt(int i) {
        if (this.zzB != null) {
            return;
        }
        throw zzbc.zza("Element " + i + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e0 A[EDGE_INSN: B:50:0x00e0->B:49:0x00e0 BREAK  A[LOOP:0: B:42:0x00c5->B:46:0x00dd], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzu(com.google.android.gms.internal.ads.zzahk r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahm.zzu(com.google.android.gms.internal.ads.zzahk, long, int, int, int):void");
    }

    private final void zzv(zzaco zzacoVar, int i) {
        if (this.zzn.zze() >= i) {
            return;
        }
        if (this.zzn.zzc() < i) {
            zzdy zzdyVar = this.zzn;
            int zzc2 = zzdyVar.zzc();
            zzdyVar.zzF(Math.max(zzc2 + zzc2, i));
        }
        zzdy zzdyVar2 = this.zzn;
        zzacoVar.zzi(zzdyVar2.zzN(), zzdyVar2.zze(), i - zzdyVar2.zze());
        this.zzn.zzK(i);
    }

    private final void zzw() {
        this.zzZ = 0;
        this.zzaa = 0;
        this.zzab = 0;
        this.zzac = false;
        this.zzad = false;
        this.zzae = false;
        this.zzaf = 0;
        this.zzag = (byte) 0;
        this.zzah = false;
        this.zzq.zzI(0);
    }

    private final void zzx(zzaco zzacoVar, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = length + i;
        if (this.zzr.zzc() < i2) {
            zzdy zzdyVar = this.zzr;
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzdyVar.zzJ(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.zzr.zzN(), 0, length);
        }
        zzacoVar.zzi(this.zzr.zzN(), length, i);
        this.zzr.zzL(0);
        this.zzr.zzK(i2);
    }

    private static byte[] zzy(long j, String str, long j2) {
        zzcw.zzd(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / 1000000);
        String format = String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2)));
        int i4 = zzei.zza;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    private static int[] zzz(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        this.zzM = false;
        while (!this.zzM) {
            if (!this.zzaj.zzc(zzacoVar)) {
                for (int i = 0; i < this.zzh.size(); i++) {
                    zzahk zzahkVar = (zzahk) this.zzh.valueAt(i);
                    zzahkVar.zzW.getClass();
                    zzadu zzaduVar = zzahkVar.zzT;
                    if (zzaduVar != null) {
                        zzaduVar.zza(zzahkVar.zzW, zzahkVar.zzi);
                    }
                }
                return -1;
            }
            long zzf2 = zzacoVar.zzf();
            if (this.zzF) {
                this.zzH = zzf2;
                zzadjVar.zza = this.zzG;
                this.zzF = false;
                return 1;
            }
            if (this.zzC) {
                long j = this.zzH;
                if (j != -1) {
                    zzadjVar.zza = j;
                    this.zzH = -1L;
                    return 1;
                }
            }
        }
        return 0;
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
        if (this.zzj) {
            zzacqVar = new zzakg(zzacqVar, this.zzk);
        }
        this.zzai = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzI = -9223372036854775807L;
        this.zzN = 0;
        this.zzaj.zzb();
        this.zzg.zze();
        zzw();
        for (int i = 0; i < this.zzh.size(); i++) {
            zzadu zzaduVar = ((zzahk) this.zzh.valueAt(i)).zzT;
            if (zzaduVar != null) {
                zzaduVar.zzb();
            }
        }
    }

    public final void zzh(int i, int i2, zzaco zzacoVar) {
        long j;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = i;
        int i10 = 1;
        int i11 = 0;
        if (i9 != 161 && i9 != 163) {
            if (i9 == 165) {
                if (this.zzN != 2) {
                    return;
                }
                zzahk zzahkVar = (zzahk) this.zzh.get(this.zzT);
                if (this.zzW != 4 || !"V_VP9".equals(zzahkVar.zzb)) {
                    zzacoVar.zzk(i2);
                    return;
                } else {
                    this.zzu.zzI(i2);
                    zzacoVar.zzi(this.zzu.zzN(), 0, i2);
                    return;
                }
            }
            if (i9 == 16877) {
                zzt(i);
                zzahk zzahkVar2 = this.zzB;
                i7 = zzahkVar2.zzY;
                if (i7 != 1685485123) {
                    i8 = zzahkVar2.zzY;
                    if (i8 != 1685480259) {
                        zzacoVar.zzk(i2);
                        return;
                    }
                }
                byte[] bArr = new byte[i2];
                zzahkVar2.zzN = bArr;
                zzacoVar.zzi(bArr, 0, i2);
                return;
            }
            if (i9 == 16981) {
                zzt(i);
                byte[] bArr2 = new byte[i2];
                this.zzB.zzh = bArr2;
                zzacoVar.zzi(bArr2, 0, i2);
                return;
            }
            if (i9 == 18402) {
                byte[] bArr3 = new byte[i2];
                zzacoVar.zzi(bArr3, 0, i2);
                zzt(i);
                this.zzB.zzi = new zzads(1, bArr3, 0, 0);
                return;
            }
            if (i9 == 21419) {
                Arrays.fill(this.zzp.zzN(), (byte) 0);
                zzacoVar.zzi(this.zzp.zzN(), 4 - i2, i2);
                this.zzp.zzL(0);
                this.zzD = (int) this.zzp.zzu();
                return;
            }
            if (i9 == 25506) {
                zzt(i);
                byte[] bArr4 = new byte[i2];
                this.zzB.zzj = bArr4;
                zzacoVar.zzi(bArr4, 0, i2);
                return;
            }
            if (i9 != 30322) {
                throw zzbc.zza("Unexpected id: " + i9, null);
            }
            zzt(i);
            byte[] bArr5 = new byte[i2];
            this.zzB.zzv = bArr5;
            zzacoVar.zzi(bArr5, 0, i2);
            return;
        }
        int i12 = 8;
        if (this.zzN == 0) {
            this.zzT = (int) this.zzg.zzd(zzacoVar, false, true, 8);
            this.zzU = this.zzg.zza();
            this.zzP = -9223372036854775807L;
            this.zzN = 1;
            this.zzn.zzI(0);
        }
        zzahk zzahkVar3 = (zzahk) this.zzh.get(this.zzT);
        if (zzahkVar3 == null) {
            zzacoVar.zzk(i2 - this.zzU);
            this.zzN = 0;
            return;
        }
        zzahkVar3.zzW.getClass();
        if (this.zzN == 1) {
            zzv(zzacoVar, 3);
            int i13 = (this.zzn.zzN()[2] & 6) >> 1;
            if (i13 == 0) {
                this.zzR = 1;
                int[] zzz = zzz(this.zzS, 1);
                this.zzS = zzz;
                zzz[0] = (i2 - this.zzU) - 3;
            } else {
                zzv(zzacoVar, 4);
                int i14 = (this.zzn.zzN()[3] & 255) + 1;
                this.zzR = i14;
                int[] zzz2 = zzz(this.zzS, i14);
                this.zzS = zzz2;
                if (i13 == 2) {
                    int i15 = (i2 - this.zzU) - 4;
                    int i16 = this.zzR;
                    Arrays.fill(zzz2, 0, i16, i15 / i16);
                } else {
                    if (i13 != 1) {
                        if (i13 != 3) {
                            throw zzbc.zza("Unexpected lacing value: 2", null);
                        }
                        int i17 = 0;
                        int i18 = 4;
                        int i19 = 0;
                        while (true) {
                            int i20 = this.zzR - 1;
                            if (i17 >= i20) {
                                this.zzS[i20] = ((i2 - this.zzU) - i18) - i19;
                                break;
                            }
                            this.zzS[i17] = i11;
                            i18++;
                            zzv(zzacoVar, i18);
                            int i21 = i18 - 1;
                            if (this.zzn.zzN()[i21] == 0) {
                                throw zzbc.zza("No valid varint length mask found", null);
                            }
                            int i22 = 0;
                            while (true) {
                                if (i22 >= i12) {
                                    j = 0;
                                    break;
                                }
                                int i23 = i10 << (7 - i22);
                                if ((this.zzn.zzN()[i21] & i23) != 0) {
                                    i18 += i22;
                                    zzv(zzacoVar, i18);
                                    j = (~i23) & this.zzn.zzN()[i21] & 255;
                                    int i24 = i21 + 1;
                                    while (i24 < i18) {
                                        j = (j << i12) | (this.zzn.zzN()[i24] & 255);
                                        i24++;
                                        i12 = 8;
                                    }
                                    if (i17 > 0) {
                                        j -= (1 << ((i22 * 7) + 6)) - 1;
                                    }
                                } else {
                                    i22++;
                                    i10 = 1;
                                    i12 = 8;
                                }
                            }
                            if (j < -2147483648L || j > 2147483647L) {
                                break;
                            }
                            int[] iArr = this.zzS;
                            int i25 = (int) j;
                            if (i17 != 0) {
                                i25 += iArr[i17 - 1];
                            }
                            iArr[i17] = i25;
                            i19 += i25;
                            i17++;
                            i10 = 1;
                            i11 = 0;
                            i12 = 8;
                        }
                        throw zzbc.zza("EBML lacing sample size out of range.", null);
                    }
                    int i26 = 0;
                    int i27 = 0;
                    int i28 = 4;
                    while (true) {
                        i3 = this.zzR - 1;
                        if (i26 >= i3) {
                            break;
                        }
                        this.zzS[i26] = 0;
                        do {
                            i28++;
                            zzv(zzacoVar, i28);
                            i4 = this.zzn.zzN()[i28 - 1] & 255;
                            int[] iArr2 = this.zzS;
                            i5 = iArr2[i26] + i4;
                            iArr2[i26] = i5;
                        } while (i4 == 255);
                        i27 += i5;
                        i26++;
                    }
                    this.zzS[i3] = ((i2 - this.zzU) - i28) - i27;
                }
            }
            this.zzO = this.zzI + zzr((this.zzn.zzN()[0] << 8) | (this.zzn.zzN()[1] & 255));
            if (zzahkVar3.zzd != 2) {
                if (i9 == 163) {
                    if ((this.zzn.zzN()[2] & 128) == 128) {
                        i9 = 163;
                    } else {
                        i9 = 163;
                    }
                }
                i6 = 0;
                this.zzV = i6;
                this.zzN = 2;
                this.zzQ = 0;
            }
            i6 = 1;
            this.zzV = i6;
            this.zzN = 2;
            this.zzQ = 0;
        }
        if (i9 == 163) {
            while (true) {
                int i29 = this.zzQ;
                if (i29 >= this.zzR) {
                    this.zzN = 0;
                    return;
                }
                zzu(zzahkVar3, ((this.zzQ * zzahkVar3.zze) / 1000) + this.zzO, this.zzV, zzp(zzacoVar, zzahkVar3, this.zzS[i29], false), 0);
                this.zzQ++;
            }
        } else {
            while (true) {
                int i30 = this.zzQ;
                if (i30 >= this.zzR) {
                    return;
                }
                int[] iArr3 = this.zzS;
                iArr3[i30] = zzp(zzacoVar, zzahkVar3, iArr3[i30], true);
                this.zzQ++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        return new zzahn().zza(zzacoVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e6, code lost:
    
        if (r5.equals("V_MPEGH/ISO/HEVC") != false) goto L188;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(int r22) {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahm.zzj(int):void");
    }

    public final void zzk(int i, double d) {
        if (i == 181) {
            zzt(i);
            this.zzB.zzQ = (int) d;
            return;
        }
        if (i == 17545) {
            this.zzz = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                zzt(i);
                this.zzB.zzD = (float) d;
                break;
            case 21970:
                zzt(i);
                this.zzB.zzE = (float) d;
                break;
            case 21971:
                zzt(i);
                this.zzB.zzF = (float) d;
                break;
            case 21972:
                zzt(i);
                this.zzB.zzG = (float) d;
                break;
            case 21973:
                zzt(i);
                this.zzB.zzH = (float) d;
                break;
            case 21974:
                zzt(i);
                this.zzB.zzI = (float) d;
                break;
            case 21975:
                zzt(i);
                this.zzB.zzJ = (float) d;
                break;
            case 21976:
                zzt(i);
                this.zzB.zzK = (float) d;
                break;
            case 21977:
                zzt(i);
                this.zzB.zzL = (float) d;
                break;
            case 21978:
                zzt(i);
                this.zzB.zzM = (float) d;
                break;
            default:
                switch (i) {
                    case 30323:
                        zzt(i);
                        this.zzB.zzs = (float) d;
                        break;
                    case 30324:
                        zzt(i);
                        this.zzB.zzt = (float) d;
                        break;
                    case 30325:
                        zzt(i);
                        this.zzB.zzu = (float) d;
                        break;
                }
        }
    }

    public final void zzl(int i, long j) {
        boolean z;
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw zzbc.zza("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw zzbc.zza("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                zzt(i);
                this.zzB.zzd = (int) j;
                return;
            case 136:
                z = j == 1;
                zzt(i);
                this.zzB.zzV = z;
                return;
            case 155:
                this.zzP = zzr(j);
                return;
            case 159:
                zzt(i);
                this.zzB.zzO = (int) j;
                return;
            case 176:
                zzt(i);
                this.zzB.zzl = (int) j;
                return;
            case 179:
                zzs(i);
                this.zzJ.zzc(zzr(j));
                return;
            case 186:
                zzt(i);
                this.zzB.zzm = (int) j;
                return;
            case 215:
                zzt(i);
                this.zzB.zzc = (int) j;
                return;
            case 231:
                this.zzI = zzr(j);
                return;
            case 238:
                this.zzW = (int) j;
                return;
            case 241:
                if (this.zzL) {
                    return;
                }
                zzs(i);
                this.zzK.zzc(j);
                this.zzL = true;
                return;
            case 251:
                this.zzX = true;
                return;
            case 16871:
                zzt(i);
                this.zzB.zzY = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw zzbc.zza("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw zzbc.zza("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw zzbc.zza("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw zzbc.zza("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw zzbc.zza("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.zzE = j + this.zzx;
                return;
            case 21432:
                int i2 = (int) j;
                zzt(i);
                if (i2 == 0) {
                    this.zzB.zzw = 0;
                    return;
                }
                if (i2 == 1) {
                    this.zzB.zzw = 2;
                    return;
                } else if (i2 == 3) {
                    this.zzB.zzw = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.zzB.zzw = 3;
                    return;
                }
            case 21680:
                zzt(i);
                this.zzB.zzo = (int) j;
                return;
            case 21682:
                zzt(i);
                this.zzB.zzq = (int) j;
                return;
            case 21690:
                zzt(i);
                this.zzB.zzp = (int) j;
                return;
            case 21930:
                z = j == 1;
                zzt(i);
                this.zzB.zzU = z;
                return;
            case 21938:
                zzt(i);
                zzahk zzahkVar = this.zzB;
                zzahkVar.zzx = true;
                zzahkVar.zzn = (int) j;
                return;
            case 21998:
                zzt(i);
                this.zzB.zzf = (int) j;
                return;
            case 22186:
                zzt(i);
                this.zzB.zzR = j;
                return;
            case 22203:
                zzt(i);
                this.zzB.zzS = j;
                return;
            case 25188:
                zzt(i);
                this.zzB.zzP = (int) j;
                return;
            case 30114:
                this.zzY = j;
                return;
            case 30321:
                int i3 = (int) j;
                zzt(i);
                if (i3 == 0) {
                    this.zzB.zzr = 0;
                    return;
                }
                if (i3 == 1) {
                    this.zzB.zzr = 1;
                    return;
                } else if (i3 == 2) {
                    this.zzB.zzr = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.zzB.zzr = 3;
                    return;
                }
            case 2352003:
                zzt(i);
                this.zzB.zze = (int) j;
                return;
            case 2807729:
                this.zzy = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i4 = (int) j;
                        zzt(i);
                        if (i4 == 1) {
                            this.zzB.zzA = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.zzB.zzA = 1;
                            return;
                        }
                    case 21946:
                        zzt(i);
                        int zzb2 = zzk.zzb((int) j);
                        if (zzb2 != -1) {
                            this.zzB.zzz = zzb2;
                            return;
                        }
                        return;
                    case 21947:
                        zzt(i);
                        this.zzB.zzx = true;
                        int zza2 = zzk.zza((int) j);
                        if (zza2 != -1) {
                            this.zzB.zzy = zza2;
                            return;
                        }
                        return;
                    case 21948:
                        zzt(i);
                        this.zzB.zzB = (int) j;
                        return;
                    case 21949:
                        zzt(i);
                        this.zzB.zzC = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public final void zzm(int i, long j, long j2) {
        zzcw.zzb(this.zzai);
        if (i == 160) {
            this.zzX = false;
            this.zzY = 0L;
            return;
        }
        if (i == 174) {
            this.zzB = new zzahk();
            return;
        }
        if (i == 187) {
            this.zzL = false;
            return;
        }
        if (i == 19899) {
            this.zzD = -1;
            this.zzE = -1L;
            return;
        }
        if (i == 20533) {
            zzt(i);
            this.zzB.zzg = true;
            return;
        }
        if (i == 21968) {
            zzt(i);
            this.zzB.zzx = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.zzx;
            if (j3 != -1 && j3 != j) {
                throw zzbc.zza("Multiple Segment elements not supported", null);
            }
            this.zzx = j;
            this.zzw = j2;
            return;
        }
        if (i == 475249515) {
            this.zzJ = new zzdp(32);
            this.zzK = new zzdp(32);
        } else if (i == 524531317 && !this.zzC) {
            if (this.zzi && this.zzG != -1) {
                this.zzF = true;
            } else {
                this.zzai.zzO(new zzadl(this.zzA, 0L));
                this.zzC = true;
            }
        }
    }

    public final void zzn(int i, String str) {
        if (i == 134) {
            zzt(i);
            this.zzB.zzb = str;
            return;
        }
        if (i == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            throw zzbc.zza("DocType " + str + " not supported", null);
        }
        if (i == 21358) {
            zzt(i);
            this.zzB.zza = str;
        } else {
            if (i != 2274716) {
                return;
            }
            zzt(i);
            this.zzB.zzZ = str;
        }
    }

    public zzahm(zzahh zzahhVar, int i, zzakd zzakdVar) {
        this.zzx = -1L;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzG = -1L;
        this.zzH = -1L;
        this.zzI = -9223372036854775807L;
        this.zzaj = zzahhVar;
        zzahhVar.zza(new zzahj(this, null));
        this.zzk = zzakdVar;
        this.zzi = 1 == ((i & 1) ^ 1);
        this.zzj = (i & 2) == 0;
        this.zzg = new zzaho();
        this.zzh = new SparseArray();
        this.zzn = new zzdy(4);
        this.zzo = new zzdy(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzp = new zzdy(4);
        this.zzl = new zzdy(zzfk.zza);
        this.zzm = new zzdy(4);
        this.zzq = new zzdy();
        this.zzr = new zzdy();
        this.zzs = new zzdy(8);
        this.zzt = new zzdy();
        this.zzu = new zzdy();
        this.zzS = new int[1];
    }

    public zzahm(zzakd zzakdVar, int i) {
        this(new zzahh(), 0, zzakdVar);
    }
}
