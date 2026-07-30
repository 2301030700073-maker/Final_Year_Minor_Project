package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class zzgwn extends zzgwp {
    private final ByteBuffer zze;
    private final long zzf;
    private long zzg;
    private long zzh;
    private final long zzi;
    private int zzj;
    private int zzk;
    private int zzl;

    public /* synthetic */ zzgwn(ByteBuffer byteBuffer, boolean z, zzgwo zzgwoVar) {
        super(null);
        this.zzl = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zze = byteBuffer;
        long zze = zzhao.zze(byteBuffer);
        this.zzf = zze;
        this.zzg = byteBuffer.limit() + zze;
        long position = zze + byteBuffer.position();
        this.zzh = position;
        this.zzi = position;
    }

    private final int zzC() {
        return (int) (this.zzg - this.zzh);
    }

    private final void zzI() {
        long j = this.zzg + this.zzj;
        this.zzg = j;
        int i = (int) (j - this.zzi);
        int i2 = this.zzl;
        if (i <= i2) {
            this.zzj = 0;
            return;
        }
        int i3 = i - i2;
        this.zzj = i3;
        this.zzg = j - i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final boolean zzA() {
        return this.zzh == this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final boolean zzB() {
        return zzq() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final double zza() {
        return Double.longBitsToDouble(zzp());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final float zzb() {
        return Float.intBitsToFloat(zzh());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzc() {
        return (int) (this.zzh - this.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzd(int i) {
        if (i < 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zzc = i + zzc();
        int i2 = this.zzl;
        if (zzc > i2) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzl = zzc;
        zzI();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zze() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzf() {
        return zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzg() {
        return zzi();
    }

    public final int zzh() {
        long j = this.zzh;
        if (this.zzg - j < 4) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzh = 4 + j;
        int zza = zzhao.zza(j) & 255;
        int zza2 = zzhao.zza(1 + j) & 255;
        int zza3 = zzhao.zza(2 + j) & 255;
        return ((zzhao.zza(j + 3) & 255) << 24) | (zza2 << 8) | zza | (zza3 << 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        if (com.google.android.gms.internal.ads.zzhao.zza(r4) >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzi() {
        /*
            r10 = this;
            long r0 = r10.zzh
            long r2 = r10.zzg
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L87
        La:
            r2 = 1
            long r4 = r0 + r2
            byte r0 = com.google.android.gms.internal.ads.zzhao.zza(r0)
            if (r0 < 0) goto L17
            r10.zzh = r4
            return r0
        L17:
            long r6 = r10.zzg
            long r6 = r6 - r4
            r8 = 9
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L87
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L2e
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L84
        L2e:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L3d
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L3b:
            r6 = r4
            goto L84
        L3d:
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L4d
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L84
        L4d:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            int r6 = r1 << 28
            r0 = r0 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r6
            if (r1 >= 0) goto L3b
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 >= 0) goto L84
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            if (r1 >= 0) goto L3b
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 >= 0) goto L84
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            if (r1 >= 0) goto L3b
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 < 0) goto L87
        L84:
            r10.zzh = r6
            return r0
        L87:
            long r0 = r10.zzr()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgwn.zzi():int");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzj() {
        return zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzk() {
        return zzgwp.zzD(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzl() {
        if (zzA()) {
            this.zzk = 0;
            return 0;
        }
        int zzi = zzi();
        this.zzk = zzi;
        if ((zzi >>> 3) != 0) {
            return zzi;
        }
        throw new zzgyg("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzm() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzn() {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzo() {
        return zzq();
    }

    public final long zzp() {
        long j = this.zzh;
        if (this.zzg - j < 8) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzh = 8 + j;
        long zza = zzhao.zza(j);
        long zza2 = zzhao.zza(1 + j);
        long zza3 = zzhao.zza(2 + j);
        long zza4 = zzhao.zza(3 + j);
        long zza5 = zzhao.zza(4 + j);
        return ((zzhao.zza(j + 7) & 255) << 56) | (zza & 255) | ((zza2 & 255) << 8) | ((zza3 & 255) << 16) | ((zza4 & 255) << 24) | ((zza5 & 255) << 32) | ((zzhao.zza(5 + j) & 255) << 40) | ((zzhao.zza(6 + j) & 255) << 48);
    }

    public final long zzq() {
        long zza;
        long j;
        long j2;
        int i;
        long j3 = this.zzh;
        if (this.zzg != j3) {
            long j4 = j3 + 1;
            byte zza2 = zzhao.zza(j3);
            if (zza2 >= 0) {
                this.zzh = j4;
                return zza2;
            }
            if (this.zzg - j4 >= 9) {
                long j5 = j4 + 1;
                int zza3 = zza2 ^ (zzhao.zza(j4) << 7);
                if (zza3 >= 0) {
                    long j6 = j5 + 1;
                    int zza4 = zza3 ^ (zzhao.zza(j5) << 14);
                    if (zza4 >= 0) {
                        zza = zza4 ^ 16256;
                    } else {
                        j5 = j6 + 1;
                        int zza5 = zza4 ^ (zzhao.zza(j6) << 21);
                        if (zza5 < 0) {
                            i = zza5 ^ (-2080896);
                        } else {
                            j6 = j5 + 1;
                            long zza6 = zza5 ^ (zzhao.zza(j5) << 28);
                            if (zza6 < 0) {
                                long j7 = j6 + 1;
                                long zza7 = zza6 ^ (zzhao.zza(j6) << 35);
                                if (zza7 < 0) {
                                    j = -34093383808L;
                                } else {
                                    j6 = j7 + 1;
                                    zza6 = zza7 ^ (zzhao.zza(j7) << 42);
                                    if (zza6 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        j7 = j6 + 1;
                                        zza7 = zza6 ^ (zzhao.zza(j6) << 49);
                                        if (zza7 < 0) {
                                            j = -558586000294016L;
                                        } else {
                                            j6 = j7 + 1;
                                            zza = (zza7 ^ (zzhao.zza(j7) << 56)) ^ 71499008037633920L;
                                            if (zza < 0) {
                                                long j8 = 1 + j6;
                                                if (zzhao.zza(j6) >= 0) {
                                                    j5 = j8;
                                                    this.zzh = j5;
                                                    return zza;
                                                }
                                            }
                                        }
                                    }
                                }
                                zza = zza7 ^ j;
                                j5 = j7;
                                this.zzh = j5;
                                return zza;
                            }
                            j2 = 266354560;
                            zza = zza6 ^ j2;
                        }
                    }
                    j5 = j6;
                    this.zzh = j5;
                    return zza;
                }
                i = zza3 ^ (-128);
                zza = i;
                this.zzh = j5;
                return zza;
            }
        }
        return zzr();
    }

    public final long zzr() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            long j2 = this.zzh;
            if (j2 == this.zzg) {
                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.zzh = 1 + j2;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((zzhao.zza(j2) & 128) == 0) {
                return j;
            }
        }
        throw new zzgyg("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzs() {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzt() {
        return zzgwp.zzF(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzu() {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final zzgwj zzv() {
        int zzi = zzi();
        if (zzi <= 0 || zzi > zzC()) {
            if (zzi == 0) {
                return zzgwj.zzb;
            }
            if (zzi < 0) {
                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = new byte[zzi];
        long j = zzi;
        zzhao.zzo(this.zzh, bArr, 0L, j);
        this.zzh += j;
        return new zzgwg(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final String zzw() {
        int zzi = zzi();
        if (zzi <= 0 || zzi > zzC()) {
            if (zzi == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (zzi < 0) {
                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = new byte[zzi];
        long j = zzi;
        zzhao.zzo(this.zzh, bArr, 0L, j);
        String str = new String(bArr, zzgye.zza);
        this.zzh += j;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final String zzx() {
        int zzi = zzi();
        if (zzi > 0 && zzi <= zzC()) {
            String zzg = zzhat.zzg(this.zze, (int) (this.zzh - this.zzf), zzi);
            this.zzh += zzi;
            return zzg;
        }
        if (zzi == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (zzi <= 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final void zzy(int i) {
        if (this.zzk != i) {
            throw new zzgyg("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final void zzz(int i) {
        this.zzl = i;
        zzI();
    }
}
