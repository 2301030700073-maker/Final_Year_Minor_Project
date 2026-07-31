package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.ts.PsExtractor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzajy extends zzajw {
    private zzajx zza;
    private int zzb;
    private boolean zzc;
    private zzaer zzd;
    private zzaep zze;

    zzajy() {
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final long zzb(zzeg zzegVar) {
        if ((zzegVar.zzi()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzegVar.zzi()[0];
        zzajx zzajxVar = this.zza;
        zzajxVar.getClass();
        int i = !zzajxVar.zzd[(b >> 1) & (255 >>> (8 - zzajxVar.zze))].zza ? zzajxVar.zza.zze : zzajxVar.zza.zzf;
        int i2 = this.zzc ? (this.zzb + i) / 4 : 0;
        if (zzegVar.zzj() < zzegVar.zze() + 4) {
            byte[] copyOf = Arrays.copyOf(zzegVar.zzi(), zzegVar.zze() + 4);
            zzegVar.zzb(copyOf, copyOf.length);
        } else {
            zzegVar.zzf(zzegVar.zze() + 4);
        }
        long j = i2;
        byte[] zzi = zzegVar.zzi();
        zzi[zzegVar.zze() - 4] = (byte) (j & 255);
        zzi[zzegVar.zze() - 3] = (byte) ((j >>> 8) & 255);
        zzi[zzegVar.zze() - 2] = (byte) ((j >>> 16) & 255);
        zzi[zzegVar.zze() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final void zzj(long j) {
        super.zzj(j);
        this.zzc = j != 0;
        zzaer zzaerVar = this.zzd;
        this.zzb = zzaerVar != null ? zzaerVar.zze : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzeg zzegVar, long j, zzaju zzajuVar) throws IOException {
        zzajx zzajxVar;
        int i;
        int i2;
        int i3;
        int i4;
        zzaer zzaerVar;
        long j2;
        if (this.zza != null) {
            zzajuVar.zza.getClass();
            return false;
        }
        zzaer zzaerVar2 = this.zzd;
        int i5 = 4;
        if (zzaerVar2 == null) {
            zzaes.zzd(1, zzegVar, false);
            int zzI = zzegVar.zzI();
            int zzs = zzegVar.zzs();
            int zzI2 = zzegVar.zzI();
            int zzC = zzegVar.zzC();
            int i6 = zzC <= 0 ? -1 : zzC;
            int zzC2 = zzegVar.zzC();
            int i7 = zzC2 <= 0 ? -1 : zzC2;
            int zzC3 = zzegVar.zzC();
            int i8 = zzC3 <= 0 ? -1 : zzC3;
            int zzs2 = zzegVar.zzs();
            this.zzd = new zzaer(zzI, zzs, zzI2, i6, i7, i8, (int) Math.pow(2.0d, zzs2 & 15), (int) Math.pow(2.0d, (zzs2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), 1 == (zzegVar.zzs() & 1), Arrays.copyOf(zzegVar.zzi(), zzegVar.zze()));
        } else {
            zzaep zzaepVar = this.zze;
            if (zzaepVar == null) {
                this.zze = zzaes.zzb(zzegVar, true, true);
            } else {
                byte[] bArr = new byte[zzegVar.zze()];
                System.arraycopy(zzegVar.zzi(), 0, bArr, 0, zzegVar.zze());
                int i9 = zzaerVar2.zza;
                int i10 = 5;
                zzaes.zzd(5, zzegVar, false);
                int zzs3 = zzegVar.zzs() + 1;
                zzaeo zzaeoVar = new zzaeo(zzegVar.zzi());
                zzaeoVar.zzc(zzegVar.zzg() * 8);
                int i11 = 0;
                while (true) {
                    int i12 = 2;
                    int i13 = 16;
                    if (i11 >= zzs3) {
                        zzaer zzaerVar3 = zzaerVar2;
                        int i14 = 6;
                        int zzb = zzaeoVar.zzb(6) + 1;
                        for (int i15 = 0; i15 < zzb; i15++) {
                            if (zzaeoVar.zzb(16) != 0) {
                                throw zzat.zzb("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i16 = 1;
                        int zzb2 = zzaeoVar.zzb(6) + 1;
                        int i17 = 0;
                        while (true) {
                            int i18 = 3;
                            if (i17 < zzb2) {
                                int zzb3 = zzaeoVar.zzb(i13);
                                if (zzb3 == 0) {
                                    i3 = zzb2;
                                    int i19 = 8;
                                    zzaeoVar.zzc(8);
                                    zzaeoVar.zzc(16);
                                    zzaeoVar.zzc(16);
                                    zzaeoVar.zzc(6);
                                    zzaeoVar.zzc(8);
                                    int zzb4 = zzaeoVar.zzb(4) + 1;
                                    int i20 = 0;
                                    while (i20 < zzb4) {
                                        zzaeoVar.zzc(i19);
                                        i20++;
                                        i19 = 8;
                                    }
                                } else {
                                    if (zzb3 != i16) {
                                        StringBuilder sb = new StringBuilder(String.valueOf(zzb3).length() + 41);
                                        sb.append("floor type greater than 1 not decodable: ");
                                        sb.append(zzb3);
                                        throw zzat.zzb(sb.toString(), null);
                                    }
                                    int zzb5 = zzaeoVar.zzb(i10);
                                    int[] iArr = new int[zzb5];
                                    int i21 = -1;
                                    for (int i22 = 0; i22 < zzb5; i22++) {
                                        int zzb6 = zzaeoVar.zzb(4);
                                        iArr[i22] = zzb6;
                                        if (zzb6 > i21) {
                                            i21 = zzb6;
                                        }
                                    }
                                    int i23 = i21 + 1;
                                    int[] iArr2 = new int[i23];
                                    int i24 = 0;
                                    while (i24 < i23) {
                                        iArr2[i24] = zzaeoVar.zzb(i18) + 1;
                                        int zzb7 = zzaeoVar.zzb(i12);
                                        if (zzb7 > 0) {
                                            i4 = 8;
                                            zzaeoVar.zzc(8);
                                        } else {
                                            i4 = 8;
                                        }
                                        int i25 = zzb2;
                                        int i26 = 0;
                                        for (int i27 = 1; i26 < (i27 << zzb7); i27 = 1) {
                                            zzaeoVar.zzc(i4);
                                            i26++;
                                            i4 = 8;
                                        }
                                        i24++;
                                        zzb2 = i25;
                                        i12 = 2;
                                        i18 = 3;
                                    }
                                    i3 = zzb2;
                                    zzaeoVar.zzc(i12);
                                    int zzb8 = zzaeoVar.zzb(4);
                                    int i28 = 0;
                                    int i29 = 0;
                                    for (int i30 = 0; i30 < zzb5; i30++) {
                                        i28 += iArr2[iArr[i30]];
                                        while (i29 < i28) {
                                            zzaeoVar.zzc(zzb8);
                                            i29++;
                                        }
                                    }
                                }
                                i17++;
                                zzb2 = i3;
                                i14 = 6;
                                i12 = 2;
                                i13 = 16;
                                i16 = 1;
                                i10 = 5;
                            } else {
                                int i31 = 1;
                                int zzb9 = zzaeoVar.zzb(i14) + 1;
                                int i32 = 0;
                                while (i32 < zzb9) {
                                    if (zzaeoVar.zzb(16) > 2) {
                                        throw zzat.zzb("residueType greater than 2 is not decodable", null);
                                    }
                                    zzaeoVar.zzc(24);
                                    zzaeoVar.zzc(24);
                                    zzaeoVar.zzc(24);
                                    int zzb10 = zzaeoVar.zzb(i14) + i31;
                                    int i33 = 8;
                                    zzaeoVar.zzc(8);
                                    int[] iArr3 = new int[zzb10];
                                    for (int i34 = 0; i34 < zzb10; i34++) {
                                        iArr3[i34] = ((zzaeoVar.zza() ? zzaeoVar.zzb(5) : 0) * 8) + zzaeoVar.zzb(3);
                                    }
                                    int i35 = 0;
                                    while (i35 < zzb10) {
                                        int i36 = 0;
                                        while (i36 < i33) {
                                            if ((iArr3[i35] & (1 << i36)) != 0) {
                                                zzaeoVar.zzc(i33);
                                            }
                                            i36++;
                                            i33 = 8;
                                        }
                                        i35++;
                                        i33 = 8;
                                    }
                                    i32++;
                                    i14 = 6;
                                    i31 = 1;
                                }
                                int zzb11 = zzaeoVar.zzb(i14) + 1;
                                for (int i37 = 0; i37 < zzb11; i37++) {
                                    int zzb12 = zzaeoVar.zzb(16);
                                    if (zzb12 != 0) {
                                        StringBuilder sb2 = new StringBuilder(String.valueOf(zzb12).length() + 41);
                                        sb2.append("mapping type other than 0 not supported: ");
                                        sb2.append(zzb12);
                                        zzdt.zze("VorbisUtil", sb2.toString());
                                    } else {
                                        if (zzaeoVar.zza()) {
                                            i = 1;
                                            i2 = zzaeoVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            i2 = 1;
                                        }
                                        if (zzaeoVar.zza()) {
                                            int zzb13 = zzaeoVar.zzb(8) + i;
                                            for (int i38 = 0; i38 < zzb13; i38++) {
                                                int i39 = i9 - 1;
                                                zzaeoVar.zzc(zzaes.zza(i39));
                                                zzaeoVar.zzc(zzaes.zza(i39));
                                            }
                                        }
                                        if (zzaeoVar.zzb(2) != 0) {
                                            throw zzat.zzb("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (i2 > 1) {
                                            for (int i40 = 0; i40 < i9; i40++) {
                                                zzaeoVar.zzc(4);
                                            }
                                        }
                                        for (int i41 = 0; i41 < i2; i41++) {
                                            zzaeoVar.zzc(8);
                                            zzaeoVar.zzc(8);
                                            zzaeoVar.zzc(8);
                                        }
                                    }
                                }
                                int zzb14 = zzaeoVar.zzb(6);
                                int i42 = zzb14 + 1;
                                zzaeq[] zzaeqVarArr = new zzaeq[i42];
                                for (int i43 = 0; i43 < i42; i43++) {
                                    zzaeqVarArr[i43] = new zzaeq(zzaeoVar.zza(), zzaeoVar.zzb(16), zzaeoVar.zzb(16), zzaeoVar.zzb(8));
                                }
                                if (!zzaeoVar.zza()) {
                                    throw zzat.zzb("framing bit after modes not set as expected", null);
                                }
                                zzajxVar = new zzajx(zzaerVar3, zzaepVar, bArr, zzaeqVarArr, zzaes.zza(zzb14));
                            }
                        }
                    } else {
                        if (zzaeoVar.zzb(24) != 5653314) {
                            int zzd = zzaeoVar.zzd();
                            StringBuilder sb3 = new StringBuilder(String.valueOf(zzd).length() + 55);
                            sb3.append("expected code book to start with [0x56, 0x43, 0x42] at ");
                            sb3.append(zzd);
                            throw zzat.zzb(sb3.toString(), null);
                        }
                        int zzb15 = zzaeoVar.zzb(16);
                        int zzb16 = zzaeoVar.zzb(24);
                        if (zzaeoVar.zza()) {
                            zzaeoVar.zzc(5);
                            for (int i44 = 0; i44 < zzb16; i44 += zzaeoVar.zzb(zzaes.zza(zzb16 - i44))) {
                            }
                        } else {
                            boolean zza = zzaeoVar.zza();
                            for (int i45 = 0; i45 < zzb16; i45++) {
                                if (!zza) {
                                    zzaeoVar.zzc(5);
                                } else if (zzaeoVar.zza()) {
                                    zzaeoVar.zzc(5);
                                }
                            }
                        }
                        int zzb17 = zzaeoVar.zzb(i5);
                        if (zzb17 > 2) {
                            StringBuilder sb4 = new StringBuilder(String.valueOf(zzb17).length() + 42);
                            sb4.append("lookup type greater than 2 not decodable: ");
                            sb4.append(zzb17);
                            throw zzat.zzb(sb4.toString(), null);
                        }
                        if (zzb17 == 1) {
                            i12 = zzb17;
                        } else if (zzb17 != 2) {
                            zzaerVar = zzaerVar2;
                            i11++;
                            zzaerVar2 = zzaerVar;
                            i5 = 4;
                        }
                        zzaeoVar.zzc(32);
                        zzaeoVar.zzc(32);
                        int zzb18 = zzaeoVar.zzb(i5) + 1;
                        zzaeoVar.zzc(1);
                        if (i12 != 1) {
                            zzaerVar = zzaerVar2;
                            j2 = zzb15 * zzb16;
                        } else if (zzb15 != 0) {
                            zzaerVar = zzaerVar2;
                            j2 = (long) Math.floor(Math.pow(zzb16, 1.0d / zzb15));
                        } else {
                            zzaerVar = zzaerVar2;
                            j2 = 0;
                        }
                        zzaeoVar.zzc((int) (j2 * zzb18));
                        i11++;
                        zzaerVar2 = zzaerVar;
                        i5 = 4;
                    }
                }
            }
        }
        zzajxVar = null;
        this.zza = zzajxVar;
        if (zzajxVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzaer zzaerVar4 = zzajxVar.zza;
        arrayList.add(zzaerVar4.zzg);
        arrayList.add(zzajxVar.zzc);
        zzap zzc = zzaes.zzc(zzgpe.zzr(zzajxVar.zzb.zza));
        zzt zztVar = new zzt();
        zztVar.zzl(MimeTypes.AUDIO_OGG);
        zztVar.zzm(MimeTypes.AUDIO_VORBIS);
        zztVar.zzh(zzaerVar4.zzd);
        zztVar.zzi(zzaerVar4.zzc);
        zztVar.zzE(zzaerVar4.zza);
        zztVar.zzF(zzaerVar4.zzb);
        zztVar.zzp(arrayList);
        zztVar.zzk(zzc);
        zzajuVar.zza = zztVar.zzM();
        return true;
    }
}
