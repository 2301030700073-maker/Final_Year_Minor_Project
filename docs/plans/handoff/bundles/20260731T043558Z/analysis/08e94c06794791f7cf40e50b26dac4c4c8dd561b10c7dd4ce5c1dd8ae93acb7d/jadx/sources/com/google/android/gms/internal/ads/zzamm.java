package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzamm implements zzamq {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final String zze;
    private final int zzf;
    private final String zzg;
    private String zzh;
    private zzaem zzi;
    private zzaem zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzr;
    private boolean zzs;
    private int zzu;
    private zzaem zzw;
    private long zzx;
    private final zzef zzc = new zzef(new byte[7], 7);
    private final zzeg zzd = new zzeg(Arrays.copyOf(zza, 10));
    private int zzp = -1;
    private int zzq = -1;
    private long zzt = C.TIME_UNSET;
    private long zzv = C.TIME_UNSET;

    public zzamm(boolean z, String str, int i, String str2) {
        this.zzb = z;
        this.zze = str;
        this.zzf = i;
        this.zzg = str2;
        zzi();
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzo = false;
        zzi();
    }

    private final boolean zzh(zzeg zzegVar, byte[] bArr, int i) {
        int min = Math.min(zzegVar.zzd(), i - this.zzl);
        zzegVar.zzm(bArr, this.zzl, min);
        int i2 = this.zzl + min;
        this.zzl = i2;
        return i2 == i;
    }

    private final void zzi() {
        this.zzk = 0;
        this.zzl = 0;
        this.zzm = 256;
    }

    private final void zzj(zzaem zzaemVar, long j, int i, int i2) {
        this.zzk = 4;
        this.zzl = i;
        this.zzw = zzaemVar;
        this.zzx = j;
        this.zzu = i2;
    }

    private final void zzk() {
        this.zzk = 3;
        this.zzl = 0;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzeg zzegVar, byte[] bArr, int i) {
        if (zzegVar.zzd() < i) {
            return false;
        }
        zzegVar.zzm(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zza() {
        this.zzv = C.TIME_UNSET;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzb(zzadd zzaddVar, zzaoe zzaoeVar) {
        zzaoeVar.zza();
        this.zzh = zzaoeVar.zzc();
        zzaem zzu = zzaddVar.zzu(zzaoeVar.zzb(), 1);
        this.zzi = zzu;
        this.zzw = zzu;
        if (!this.zzb) {
            this.zzj = new zzacx();
            return;
        }
        zzaoeVar.zza();
        zzaem zzu2 = zzaddVar.zzu(zzaoeVar.zzb(), 5);
        this.zzj = zzu2;
        zzt zztVar = new zzt();
        zztVar.zza(zzaoeVar.zzc());
        zztVar.zzl(this.zzg);
        zztVar.zzm(MimeTypes.APPLICATION_ID3);
        zzu2.zzu(zztVar.zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzc(long j, int i) {
        this.zzv = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzd(zzeg zzegVar) throws zzat {
        int i;
        byte b;
        char c;
        int i2;
        char c2;
        boolean z;
        int i3;
        this.zzi.getClass();
        String str = zzep.zza;
        while (zzegVar.zzd() > 0) {
            int i4 = this.zzk;
            char c3 = 7;
            int i5 = 2;
            if (i4 == 0) {
                byte[] zzi = zzegVar.zzi();
                int zzg = zzegVar.zzg();
                int zze = zzegVar.zze();
                while (true) {
                    if (zzg >= zze) {
                        zzegVar.zzh(zzg);
                        break;
                    }
                    i = zzg + 1;
                    b = zzi[zzg];
                    int i6 = b & 255;
                    if (this.zzm != 512 || !zzl((byte) -1, (byte) i6)) {
                        c = c3;
                    } else {
                        if (this.zzo) {
                            break;
                        }
                        int i7 = zzg - 1;
                        zzegVar.zzh(zzg);
                        zzef zzefVar = this.zzc;
                        if (zzm(zzegVar, zzefVar.zza, 1)) {
                            zzefVar.zzf(4);
                            int zzj = zzefVar.zzj(1);
                            int i8 = this.zzp;
                            if (i8 == -1 || zzj == i8) {
                                if (this.zzq != -1) {
                                    if (!zzm(zzegVar, zzefVar.zza, 1)) {
                                        break;
                                    }
                                    zzefVar.zzf(i5);
                                    if (zzefVar.zzj(4) == this.zzq) {
                                        zzegVar.zzh(zzg + 1);
                                    }
                                }
                                if (!zzm(zzegVar, zzefVar.zza, 4)) {
                                    break;
                                }
                                zzefVar.zzf(14);
                                int zzj2 = zzefVar.zzj(13);
                                c = 7;
                                if (zzj2 >= 7) {
                                    byte[] zzi2 = zzegVar.zzi();
                                    int zze2 = zzegVar.zze();
                                    int i9 = i7 + zzj2;
                                    if (i9 < zze2) {
                                        byte b2 = zzi2[i9];
                                        if (b2 != -1) {
                                            if (b2 == 73) {
                                                int i10 = i9 + 1;
                                                if (i10 == zze2) {
                                                    break;
                                                }
                                                if (zzi2[i10] == 68) {
                                                    int i11 = i9 + 2;
                                                    if (i11 == zze2) {
                                                        break;
                                                    } else if (zzi2[i11] == 51) {
                                                        break;
                                                    }
                                                }
                                            }
                                        } else {
                                            int i12 = i9 + 1;
                                            if (i12 == zze2) {
                                                break;
                                            }
                                            byte b3 = zzi2[i12];
                                            if (zzl((byte) -1, b3) && ((b3 & 8) >> 3) == zzj) {
                                                break;
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                }
                            }
                        }
                        c = 7;
                    }
                    int i13 = this.zzm;
                    int i14 = i13 | i6;
                    if (i14 == 329) {
                        i2 = 2;
                        c2 = 3;
                        z = false;
                        i3 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                    } else if (i14 == 511) {
                        i2 = 2;
                        c2 = 3;
                        z = false;
                        i3 = 512;
                    } else if (i14 == 836) {
                        i2 = 2;
                        c2 = 3;
                        z = false;
                        i3 = 1024;
                    } else {
                        if (i14 == 1075) {
                            this.zzk = 2;
                            this.zzl = 3;
                            this.zzu = 0;
                            this.zzd.zzh(0);
                            zzegVar.zzh(i);
                            break;
                        }
                        if (i13 != 256) {
                            this.zzm = 256;
                            c3 = c;
                            i5 = 2;
                        } else {
                            i2 = 2;
                            c2 = 3;
                            z = false;
                            zzg = i;
                            c3 = c;
                            i5 = i2;
                        }
                    }
                    this.zzm = i3;
                    zzg = i;
                    c3 = c;
                    i5 = i2;
                }
                this.zzr = (b & 8) >> 3;
                this.zzn = 1 == ((b & 1) ^ 1);
                if (this.zzo) {
                    zzk();
                } else {
                    this.zzk = 1;
                    this.zzl = 0;
                }
                zzegVar.zzh(i);
            } else if (i4 != 1) {
                if (i4 == 2) {
                    zzeg zzegVar2 = this.zzd;
                    if (zzh(zzegVar, zzegVar2.zzi(), 10)) {
                        this.zzj.zzz(zzegVar2, 10);
                        zzegVar2.zzh(6);
                        zzj(this.zzj, 0L, 10, zzegVar2.zzG() + 10);
                    }
                } else if (i4 != 3) {
                    int min = Math.min(zzegVar.zzd(), this.zzu - this.zzl);
                    this.zzw.zzz(zzegVar, min);
                    int i15 = this.zzl + min;
                    this.zzl = i15;
                    if (i15 == this.zzu) {
                        zzgmd.zzh(this.zzv != C.TIME_UNSET);
                        this.zzw.zzx(this.zzv, 1, this.zzu, 0, null);
                        this.zzv += this.zzx;
                        zzi();
                    }
                } else {
                    int i16 = true != this.zzn ? 5 : 7;
                    zzef zzefVar2 = this.zzc;
                    if (zzh(zzegVar, zzefVar2.zza, i16)) {
                        zzefVar2.zzf(0);
                        if (this.zzs) {
                            zzefVar2.zzh(10);
                        } else {
                            int zzj3 = zzefVar2.zzj(2) + 1;
                            if (zzj3 != 2) {
                                StringBuilder sb = new StringBuilder(String.valueOf(zzj3).length() + 50);
                                sb.append("Detected audio object type: ");
                                sb.append(zzj3);
                                sb.append(", but assuming AAC LC.");
                                zzdt.zzc("AdtsReader", sb.toString());
                            }
                            zzefVar2.zzh(5);
                            int zzj4 = zzefVar2.zzj(3);
                            int i17 = this.zzq;
                            int i18 = zzabz.zza;
                            byte[] bArr = {(byte) (((i17 >> 1) & 7) | 16), (byte) (((zzj4 << 3) & 120) | ((i17 << 7) & 128))};
                            zzaby zza2 = zzabz.zza(bArr);
                            zzt zztVar = new zzt();
                            zztVar.zza(this.zzh);
                            zztVar.zzl(this.zzg);
                            zztVar.zzm(MimeTypes.AUDIO_AAC);
                            zztVar.zzj(zza2.zzc);
                            zztVar.zzE(zza2.zzb);
                            zztVar.zzF(zza2.zza);
                            zztVar.zzp(Collections.singletonList(bArr));
                            zztVar.zze(this.zze);
                            zztVar.zzg(this.zzf);
                            zzv zzM = zztVar.zzM();
                            this.zzt = 1024000000 / zzM.zzH;
                            this.zzi.zzu(zzM);
                            this.zzs = true;
                        }
                        zzefVar2.zzh(4);
                        int zzj5 = zzefVar2.zzj(13);
                        zzj(this.zzi, this.zzt, 0, this.zzn ? zzj5 - 9 : zzj5 - 7);
                    }
                }
            } else if (zzegVar.zzd() != 0) {
                zzef zzefVar3 = this.zzc;
                zzefVar3.zza[0] = zzegVar.zzi()[zzegVar.zzg()];
                zzefVar3.zzf(2);
                int zzj6 = zzefVar3.zzj(4);
                int i19 = this.zzq;
                if (i19 == -1 || zzj6 == i19) {
                    if (!this.zzo) {
                        this.zzo = true;
                        this.zzp = this.zzr;
                        this.zzq = zzj6;
                    }
                    zzk();
                } else {
                    zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
    }
}
