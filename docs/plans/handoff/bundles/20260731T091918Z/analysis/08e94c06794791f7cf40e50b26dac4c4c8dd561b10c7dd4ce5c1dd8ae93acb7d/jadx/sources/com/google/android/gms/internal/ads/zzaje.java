package com.google.android.gms.internal.ads;

import androidx.media3.extractor.mp4.Atom;
import androidx.media3.extractor.mp4.Sniffer;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaje {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Atom.TYPE_avc1, Atom.TYPE_hvc1, Atom.TYPE_hev1, Atom.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static zzaeh zza(zzadb zzadbVar) throws IOException {
        return zzc(zzadbVar, true, false);
    }

    public static zzaeh zzb(zzadb zzadbVar, boolean z) throws IOException {
        return zzc(zzadbVar, false, z);
    }

    private static zzaeh zzc(zzadb zzadbVar, boolean z, boolean z2) throws IOException {
        zzeg zzegVar;
        int i;
        long j;
        zzeg zzegVar2;
        int i2;
        boolean z3;
        int[] iArr;
        long zzo = zzadbVar.zzo();
        long j2 = -1;
        long j3 = 4096;
        if (zzo != -1 && zzo <= 4096) {
            j3 = zzo;
        }
        zzeg zzegVar3 = new zzeg(64);
        int i3 = (int) j3;
        int i4 = 0;
        int i5 = 0;
        boolean z4 = false;
        while (i5 < i3) {
            zzegVar3.zza(8);
            if (!zzadbVar.zzh(zzegVar3.zzi(), i4, 8, true)) {
                break;
            }
            long zzz = zzegVar3.zzz();
            int zzB = zzegVar3.zzB();
            if (zzz == 1) {
                zzadbVar.zzi(zzegVar3.zzi(), 8, 8);
                i = 16;
                zzegVar3.zzf(16);
                zzz = zzegVar3.zzD();
                zzegVar = zzegVar3;
            } else {
                if (zzz == 0) {
                    long zzo2 = zzadbVar.zzo();
                    if (zzo2 != j2) {
                        zzz = (zzo2 - zzadbVar.zzm()) + 8;
                    }
                }
                zzegVar = zzegVar3;
                i = 8;
            }
            long j4 = zzz;
            long j5 = i;
            if (j4 < j5) {
                if (zzB == 1718773093) {
                    if (i == 8) {
                        zzB = 1718773093;
                        j4 = 8;
                    } else {
                        zzB = 1718773093;
                    }
                }
                return new zzahy(zzB, j4, i);
            }
            i5 += i;
            if (zzB == 1836019574) {
                i3 += (int) j4;
                if (zzo != -1 && i3 > zzo) {
                    i3 = (int) zzo;
                }
                zzegVar3 = zzegVar;
                j2 = -1;
                i4 = 0;
            } else {
                if (zzB == 1953653099 || zzB == 1835297121 || zzB == 1835626086) {
                    j = zzo;
                    zzegVar2 = zzegVar;
                    i2 = 0;
                } else {
                    if (zzB == 1836019558 || zzB == 1836475768) {
                        i4 = 1;
                        break;
                    }
                    z4 |= !(zzB != 1835295092);
                    if (zzB == 1937007212) {
                        if (j4 > 1000000) {
                            i4 = 0;
                            break;
                        }
                        zzB = 1937007212;
                    }
                    j = zzo;
                    if ((i5 + j4) - j5 >= i3) {
                        i4 = 0;
                        break;
                    }
                    int i6 = (int) (j4 - j5);
                    i5 += i6;
                    if (zzB != 1718909296) {
                        zzegVar2 = zzegVar;
                        i2 = 0;
                        if (i6 != 0) {
                            zzadbVar.zzk(i6);
                        }
                    } else {
                        if (i6 < 8) {
                            return new zzahy(Atom.TYPE_ftyp, i6, 8);
                        }
                        zzegVar2 = zzegVar;
                        zzegVar2.zza(i6);
                        i2 = 0;
                        zzadbVar.zzi(zzegVar2.zzi(), 0, i6);
                        int zzB2 = zzegVar2.zzB();
                        boolean zzd = zzd(zzB2, z2) | z4;
                        zzegVar2.zzk(4);
                        int zzd2 = zzegVar2.zzd() / 4;
                        if (!zzd && zzd2 > 0) {
                            iArr = new int[zzd2];
                            int i7 = 0;
                            while (true) {
                                if (i7 >= zzd2) {
                                    z3 = zzd;
                                    break;
                                }
                                int zzB3 = zzegVar2.zzB();
                                iArr[i7] = zzB3;
                                if (zzd(zzB3, z2)) {
                                    z3 = true;
                                    break;
                                }
                                i7++;
                            }
                        } else {
                            z3 = zzd;
                            iArr = null;
                        }
                        if (!z3) {
                            return new zzajj(zzB2, iArr);
                        }
                        z4 = z3;
                    }
                }
                zzegVar3 = zzegVar2;
                i4 = i2;
                zzo = j;
                j2 = -1;
            }
        }
        if (!z4) {
            return zzaja.zza;
        }
        if (z != i4) {
            return i4 != 0 ? zzais.zza : zzais.zzb;
        }
        return null;
    }

    private static boolean zzd(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        int[] iArr = zza;
        for (int i2 = 0; i2 < 29; i2++) {
            if (iArr[i2] == i) {
                return true;
            }
        }
        return false;
    }
}
