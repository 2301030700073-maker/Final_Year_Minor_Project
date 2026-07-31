package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhvm extends zzhvn {
    public static final /* synthetic */ int zza = 0;
    private final ByteBuffer zzg;
    private final long zzh;
    private long zzi;
    private long zzj;
    private final long zzk;
    private int zzl;
    private int zzm;
    private int zzn;

    /* synthetic */ zzhvm(ByteBuffer byteBuffer, boolean z, byte[] bArr) {
        super(null);
        this.zzn = Integer.MAX_VALUE;
        this.zzg = byteBuffer.duplicate();
        long zzs = zzhzj.zzs(byteBuffer);
        this.zzh = zzs;
        this.zzi = byteBuffer.limit() + zzs;
        long position = zzs + byteBuffer.position();
        this.zzj = position;
        this.zzk = position;
    }

    private final void zzN() {
        long j = this.zzi + this.zzl;
        this.zzi = j;
        int i = (int) (j - this.zzk);
        int i2 = this.zzn;
        if (i <= i2) {
            this.zzl = 0;
            return;
        }
        int i3 = i - i2;
        this.zzl = i3;
        this.zzi = j - i3;
    }

    private final int zzO() {
        return (int) (this.zzi - this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final void zzA(int i) {
        this.zzn = i;
        zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final boolean zzB() throws IOException {
        return this.zzj == this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzC() {
        return (int) (this.zzj - this.zzk);
    }

    public final byte zzD() throws IOException {
        long j = this.zzj;
        if (j == this.zzi) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzj = 1 + j;
        return zzhzj.zzr(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zza() throws IOException {
        if (zzB()) {
            this.zzm = 0;
            return 0;
        }
        int zzu = zzu();
        this.zzm = zzu;
        if ((zzu >>> 3) != 0) {
            return zzu;
        }
        throw new zzhxd("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final void zzb(int i) throws zzhxd {
        if (this.zzm != i) {
            throw new zzhxd("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final double zzd() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final float zze() throws IOException {
        return Float.intBitsToFloat(zzx());
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final long zzf() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final long zzg() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzh() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final long zzi() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final boolean zzk() throws IOException {
        return zzv() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final String zzl() throws IOException {
        int zzu = zzu();
        if (zzu <= 0 || zzu > zzO()) {
            if (zzu == 0) {
                return "";
            }
            if (zzu < 0) {
                throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = new byte[zzu];
        long j = zzu;
        zzhzj.zzq(this.zzj, bArr, 0L, j);
        String str = new String(bArr, zzhxb.zza);
        this.zzj += j;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final String zzm() throws IOException {
        int zzu = zzu();
        if (zzu > 0 && zzu <= zzO()) {
            String zze = zzhzo.zze(this.zzg, (int) (this.zzj - this.zzh), zzu);
            this.zzj += zzu;
            return zze;
        }
        if (zzu == 0) {
            return "";
        }
        if (zzu <= 0) {
            throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final zzhvi zzn() throws IOException {
        int zzu = zzu();
        if (zzu <= 0 || zzu > zzO()) {
            if (zzu == 0) {
                return zzhvi.zzb;
            }
            if (zzu < 0) {
                throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = new byte[zzu];
        long j = zzu;
        zzhzj.zzq(this.zzj, bArr, 0L, j);
        this.zzj += j;
        zzhvi zzhviVar = zzhvi.zzb;
        return new zzhvg(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzo() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzp() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzq() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final long zzr() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzs() throws IOException {
        return zzK(zzu());
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final long zzt() throws IOException {
        return zzL(zzv());
    }

    final long zzw() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((zzD() & 128) == 0) {
                return j;
            }
        }
        throw new zzhxd("CodedInputStream encountered a malformed varint.");
    }

    public final int zzx() throws IOException {
        long j = this.zzj;
        if (this.zzi - j < 4) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzj = 4 + j;
        int zzr = zzhzj.zzr(j) & 255;
        int zzr2 = zzhzj.zzr(1 + j) & 255;
        int zzr3 = zzhzj.zzr(2 + j) & 255;
        return ((zzhzj.zzr(j + 3) & 255) << 24) | (zzr2 << 8) | zzr | (zzr3 << 16);
    }

    public final long zzy() throws IOException {
        long j = this.zzj;
        if (this.zzi - j < 8) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzj = 8 + j;
        long zzr = zzhzj.zzr(j);
        long zzr2 = zzhzj.zzr(1 + j);
        long zzr3 = zzhzj.zzr(2 + j);
        long zzr4 = zzhzj.zzr(3 + j);
        long zzr5 = zzhzj.zzr(4 + j);
        return ((zzhzj.zzr(j + 7) & 255) << 56) | (zzr & 255) | ((zzr2 & 255) << 8) | ((zzr3 & 255) << 16) | ((zzr4 & 255) << 24) | ((zzr5 & 255) << 32) | ((zzhzj.zzr(5 + j) & 255) << 40) | ((zzhzj.zzr(6 + j) & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final int zzz(int i) throws zzhxd {
        if (i < 0) {
            throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zzC = i + zzC();
        int i2 = this.zzn;
        if (zzC > i2) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzn = zzC;
        zzN();
        return i2;
    }

    public final void zzE(int i) throws IOException {
        if (i >= 0 && i <= zzO()) {
            this.zzj += i;
        } else {
            if (i >= 0) {
                throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhvn
    public final boolean zzc(int i) throws IOException {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (zzO() < 10) {
                while (i3 < 10) {
                    if (zzD() < 0) {
                        i3++;
                    }
                }
                throw new zzhxd("CodedInputStream encountered a malformed varint.");
            }
            while (i3 < 10) {
                long j = this.zzj;
                this.zzj = 1 + j;
                if (zzhzj.zzr(j) < 0) {
                    i3++;
                }
            }
            throw new zzhxd("CodedInputStream encountered a malformed varint.");
            return true;
        }
        if (i2 == 1) {
            zzE(8);
            return true;
        }
        if (i2 == 2) {
            zzE(zzu());
            return true;
        }
        if (i2 == 3) {
            zzJ();
            zzb(((i >>> 3) << 3) | 4);
            return true;
        }
        if (i2 == 4) {
            zzI();
            return false;
        }
        if (i2 != 5) {
            throw new zzhxc("Protocol message tag had invalid wire type.");
        }
        zzE(4);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
    
        if (com.google.android.gms.internal.ads.zzhzj.zzr(r3) >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzu() throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.zzj
            long r2 = r9.zzi
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 != 0) goto La
            goto L92
        La:
            r2 = 1
            long r2 = r2 + r0
            byte r4 = com.google.android.gms.internal.ads.zzhzj.zzr(r0)
            if (r4 < 0) goto L16
            r9.zzj = r2
            return r4
        L16:
            long r5 = r9.zzi
            long r5 = r5 - r2
            r7 = 9
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 < 0) goto L92
            r5 = 2
            long r5 = r5 + r0
            byte r2 = com.google.android.gms.internal.ads.zzhzj.zzr(r2)
            int r2 = r2 << 7
            r2 = r2 ^ r4
            if (r2 >= 0) goto L2e
            r0 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L8f
        L2e:
            r3 = 3
            long r3 = r3 + r0
            byte r5 = com.google.android.gms.internal.ads.zzhzj.zzr(r5)
            int r5 = r5 << 14
            r2 = r2 ^ r5
            if (r2 < 0) goto L3e
            r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
        L3c:
            r5 = r3
            goto L8f
        L3e:
            r5 = 4
            long r5 = r5 + r0
            byte r3 = com.google.android.gms.internal.ads.zzhzj.zzr(r3)
            int r3 = r3 << 21
            r2 = r2 ^ r3
            if (r2 >= 0) goto L4f
            r0 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L8f
        L4f:
            r3 = 5
            long r3 = r3 + r0
            byte r5 = com.google.android.gms.internal.ads.zzhzj.zzr(r5)
            int r6 = r5 << 28
            r2 = r2 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r2 = r2 ^ r6
            if (r5 >= 0) goto L8d
            r5 = 6
            long r5 = r5 + r0
            byte r3 = com.google.android.gms.internal.ads.zzhzj.zzr(r3)
            if (r3 >= 0) goto L8b
            r3 = 7
            long r3 = r3 + r0
            byte r5 = com.google.android.gms.internal.ads.zzhzj.zzr(r5)
            if (r5 >= 0) goto L8d
            r5 = 8
            long r5 = r5 + r0
            byte r3 = com.google.android.gms.internal.ads.zzhzj.zzr(r3)
            if (r3 >= 0) goto L8b
            long r3 = r0 + r7
            byte r5 = com.google.android.gms.internal.ads.zzhzj.zzr(r5)
            if (r5 >= 0) goto L8d
            r5 = 10
            long r5 = r5 + r0
            byte r0 = com.google.android.gms.internal.ads.zzhzj.zzr(r3)
            if (r0 < 0) goto L92
        L8b:
            r0 = r2
            goto L8f
        L8d:
            r0 = r2
            goto L3c
        L8f:
            r9.zzj = r5
            return r0
        L92:
            long r0 = r9.zzw()
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhvm.zzu():int");
    }

    public final long zzv() throws IOException {
        long j;
        long j2;
        int i;
        long j3 = this.zzj;
        if (this.zzi != j3) {
            long j4 = 1 + j3;
            byte zzr = zzhzj.zzr(j3);
            if (zzr >= 0) {
                this.zzj = j4;
                return zzr;
            }
            if (this.zzi - j4 >= 9) {
                long j5 = 2 + j3;
                int zzr2 = (zzhzj.zzr(j4) << 7) ^ zzr;
                if (zzr2 >= 0) {
                    long j6 = 3 + j3;
                    int zzr3 = zzr2 ^ (zzhzj.zzr(j5) << Ascii.SO);
                    if (zzr3 >= 0) {
                        j = zzr3 ^ 16256;
                    } else {
                        j5 = 4 + j3;
                        int zzr4 = zzr3 ^ (zzhzj.zzr(j6) << Ascii.NAK);
                        if (zzr4 < 0) {
                            i = (-2080896) ^ zzr4;
                        } else {
                            j6 = 5 + j3;
                            long zzr5 = (zzhzj.zzr(j5) << 28) ^ zzr4;
                            if (zzr5 < 0) {
                                long j7 = 6 + j3;
                                long zzr6 = (zzhzj.zzr(j6) << 35) ^ zzr5;
                                if (zzr6 >= 0) {
                                    j5 = j3 + 7;
                                    long zzr7 = zzr6 ^ (zzhzj.zzr(j7) << 42);
                                    if (zzr7 >= 0) {
                                        j = 4363953127296L ^ zzr7;
                                    } else {
                                        j7 = 8 + j3;
                                        zzr6 = zzr7 ^ (zzhzj.zzr(j5) << 49);
                                        if (zzr6 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            j5 = j3 + 9;
                                            long zzr8 = (zzr6 ^ (zzhzj.zzr(j7) << 56)) ^ 71499008037633920L;
                                            if (zzr8 < 0) {
                                                long j8 = j3 + 10;
                                                if (zzhzj.zzr(j5) >= 0) {
                                                    j5 = j8;
                                                }
                                            }
                                            j = zzr8;
                                        }
                                    }
                                    this.zzj = j5;
                                    return j;
                                }
                                j2 = -34093383808L;
                                j = j2 ^ zzr6;
                                j5 = j7;
                                this.zzj = j5;
                                return j;
                            }
                            j = 266354560 ^ zzr5;
                        }
                    }
                    j5 = j6;
                    this.zzj = j5;
                    return j;
                }
                i = zzr2 ^ (-128);
                j = i;
                this.zzj = j5;
                return j;
            }
        }
        return zzw();
    }
}
