package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.avi.AviExtractor;
import java.nio.ByteOrder;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzafc implements zzaev {
    public final zzgpe zza;
    private final int zzb;

    private zzafc(int i, zzgpe zzgpeVar) {
        this.zzb = i;
        this.zza = zzgpeVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzafc zzb(int i, zzeg zzegVar) {
        zzaev zzafdVar;
        String str;
        zzgpb zzgpbVar = new zzgpb();
        int zze = zzegVar.zze();
        int i2 = -2;
        while (zzegVar.zzd() > 8) {
            int zzC = zzegVar.zzC();
            int zzg = zzegVar.zzg() + zzegVar.zzC();
            zzegVar.zzf(zzg);
            if (zzC != 1414744396) {
                zzafd zzafdVar2 = null;
                switch (zzC) {
                    case AviExtractor.FOURCC_strf /* 1718776947 */:
                        if (i2 == 2) {
                            zzegVar.zzk(4);
                            int zzC2 = zzegVar.zzC();
                            int zzC3 = zzegVar.zzC();
                            zzegVar.zzk(4);
                            int zzC4 = zzegVar.zzC();
                            switch (zzC4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = MimeTypes.VIDEO_MP4V;
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = MimeTypes.VIDEO_H264;
                                    break;
                                case 842289229:
                                    str = MimeTypes.VIDEO_MP42;
                                    break;
                                case 859066445:
                                    str = MimeTypes.VIDEO_MP43;
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = MimeTypes.VIDEO_MJPEG;
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str == null) {
                                StringBuilder sb = new StringBuilder(String.valueOf(zzC4).length() + 44);
                                sb.append("Ignoring track with unsupported compression ");
                                sb.append(zzC4);
                                zzdt.zzc("StreamFormatChunk", sb.toString());
                            } else {
                                zzt zztVar = new zzt();
                                zztVar.zzt(zzC2);
                                zztVar.zzu(zzC3);
                                zztVar.zzm(str);
                                zzafdVar2 = new zzafd(zztVar.zzM());
                            }
                        } else if (i2 == 1) {
                            int zzu = zzegVar.zzu();
                            String str2 = zzu != 1 ? zzu != 85 ? zzu != 255 ? zzu != 8192 ? zzu != 8193 ? null : MimeTypes.AUDIO_DTS : MimeTypes.AUDIO_AC3 : MimeTypes.AUDIO_AAC : MimeTypes.AUDIO_MPEG : MimeTypes.AUDIO_RAW;
                            if (str2 != null) {
                                int zzu2 = zzegVar.zzu();
                                int zzC5 = zzegVar.zzC();
                                zzegVar.zzk(6);
                                int zzz = zzep.zzz(zzegVar.zzu(), ByteOrder.LITTLE_ENDIAN);
                                int zzu3 = zzegVar.zzd() > 0 ? zzegVar.zzu() : 0;
                                zzt zztVar2 = new zzt();
                                zztVar2.zzm(str2);
                                zztVar2.zzE(zzu2);
                                zztVar2.zzF(zzC5);
                                if (str2.equals(MimeTypes.AUDIO_RAW) && zzz != 0) {
                                    zztVar2.zzG(zzz);
                                }
                                if (str2.equals(MimeTypes.AUDIO_AAC) && zzu3 > 0) {
                                    byte[] bArr = new byte[zzu3];
                                    zzegVar.zzm(bArr, 0, zzu3);
                                    zztVar2.zzp(zzgpe.zzj(bArr));
                                }
                                zzafdVar = new zzafd(zztVar2.zzM());
                                break;
                            } else {
                                StringBuilder sb2 = new StringBuilder(String.valueOf(zzu).length() + 43);
                                sb2.append("Ignoring track with unsupported format tag ");
                                sb2.append(zzu);
                                zzdt.zzc("StreamFormatChunk", sb2.toString());
                            }
                        } else {
                            zzdt.zzc("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzep.zzQ(i2)));
                        }
                        zzafdVar = zzafdVar2;
                        break;
                    case AviExtractor.FOURCC_avih /* 1751742049 */:
                        zzafdVar = zzaez.zzb(zzegVar);
                        break;
                    case AviExtractor.FOURCC_strh /* 1752331379 */:
                        zzafdVar = zzafa.zzb(zzegVar);
                        break;
                    case AviExtractor.FOURCC_strn /* 1852994675 */:
                        zzafdVar = zzafe.zzb(zzegVar);
                        break;
                    default:
                        zzafdVar = zzafdVar2;
                        break;
                }
            } else {
                zzafdVar = zzb(zzegVar.zzC(), zzegVar);
            }
            if (zzafdVar != null) {
                if (zzafdVar.zza() == 1752331379) {
                    i2 = ((zzafa) zzafdVar).zzc();
                }
                zzgpbVar.zzf(zzafdVar);
            }
            zzegVar.zzh(zzg);
            zzegVar.zzf(zze);
        }
        return new zzafc(i, zzgpbVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final int zza() {
        return this.zzb;
    }

    public final zzaev zzc(Class cls) {
        zzgpe zzgpeVar = this.zza;
        int size = zzgpeVar.size();
        int i = 0;
        while (i < size) {
            zzaev zzaevVar = (zzaev) zzgpeVar.get(i);
            i++;
            if (zzaevVar.getClass() == cls) {
                return zzaevVar;
            }
        }
        return null;
    }
}
