package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zztq {
    public static final /* synthetic */ int zza = 0;
    private static final HashMap zzb = new HashMap();

    public static zzsy zza() throws zzti {
        List zzb2 = zzb(MimeTypes.AUDIO_RAW, false, false);
        if (zzb2.isEmpty()) {
            return null;
        }
        return (zzsy) zzb2.get(0);
    }

    public static synchronized List zzb(String str, boolean z, boolean z2) throws zzti {
        synchronized (zztq.class) {
            zzth zzthVar = new zzth(str, z, z2);
            HashMap hashMap = zzb;
            List list = (List) hashMap.get(zzthVar);
            if (list != null) {
                return list;
            }
            ArrayList zzh = zzh(zzthVar, new zztl(z, z2, str.equals("video/mv-hevc")));
            if (z) {
                zzh.isEmpty();
            }
            if (MimeTypes.AUDIO_RAW.equals(str)) {
                if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && zzh.size() == 1 && ((zzsy) zzh.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    zzh.add(zzsy.zza("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
                }
                zzj(zzh, zztm.zza);
            }
            if (Build.VERSION.SDK_INT < 32 && zzh.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsy) zzh.get(0)).zza)) {
                zzh.add((zzsy) zzh.remove(0));
            }
            zzgpe zzq = zzgpe.zzq(zzh);
            hashMap.put(zzthVar, zzq);
            return zzq;
        }
    }

    @RequiresNonNull({"#2.sampleMimeType"})
    public static List zzc(zztg zztgVar, zzv zzvVar, boolean z, boolean z2) throws zzti {
        List zza2 = zztgVar.zza(zzvVar.zzo, z, z2);
        List zzd = zzd(zztgVar, zzvVar, z, z2);
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        zzgpbVar.zzh(zza2);
        zzgpbVar.zzh(zzd);
        return zzgpbVar.zzi();
    }

    public static List zzd(zztg zztgVar, zzv zzvVar, boolean z, boolean z2) throws zzti {
        String zzg = zzg(zzvVar);
        return zzg == null ? zzgpe.zzi() : zztgVar.zza(zzg, z, z2);
    }

    public static List zze(List list, final zzv zzvVar) {
        ArrayList arrayList = new ArrayList(list);
        zzj(arrayList, new zztp() { // from class: com.google.android.gms.internal.ads.zzto
            @Override // com.google.android.gms.internal.ads.zztp
            public final /* synthetic */ int zza(Object obj) {
                int i = zztq.zza;
                return ((zzsy) obj).zzd(zzv.this) ? 1 : 0;
            }
        });
        return arrayList;
    }

    public static MediaCodecInfo.CodecProfileLevel zzf(int i, int i2) {
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = i;
        codecProfileLevel.level = i2;
        return codecProfileLevel;
    }

    public static String zzg(zzv zzvVar) {
        Pair zzd;
        String str = zzvVar.zzo;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(str) && (zzd = zzdd.zzd(zzvVar)) != null) {
            int intValue = ((Integer) zzd.first).intValue();
            if (intValue == 16 || intValue == 256) {
                return MimeTypes.VIDEO_H265;
            }
            if (intValue == 512) {
                return MimeTypes.VIDEO_H264;
            }
            if (intValue == 1024) {
                return MimeTypes.VIDEO_AV1;
            }
        }
        if ("video/mv-hevc".equals(str)) {
            return MimeTypes.VIDEO_H265;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        r7 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a3, code lost:
    
        r9 = new java.lang.StringBuilder(java.lang.String.valueOf(r1).length() + 7);
        r9.append(r1);
        r9.append(".secure");
        r8.add(com.google.android.gms.internal.ads.zzsy.zza(r9.toString(), r26, r7, r13, r0, r21, r2, false, true));
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0128 A[Catch: Exception -> 0x01d2, TryCatch #3 {Exception -> 0x01d2, blocks: (B:28:0x00f2, B:32:0x010e, B:38:0x0122, B:40:0x0128, B:41:0x0138, B:43:0x0144, B:70:0x0149, B:72:0x0159, B:74:0x0161, B:78:0x012d), top: B:27:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0144 A[Catch: Exception -> 0x01d2, TryCatch #3 {Exception -> 0x01d2, blocks: (B:28:0x00f2, B:32:0x010e, B:38:0x0122, B:40:0x0128, B:41:0x0138, B:43:0x0144, B:70:0x0149, B:72:0x0159, B:74:0x0161, B:78:0x012d), top: B:27:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0149 A[Catch: Exception -> 0x01d2, TryCatch #3 {Exception -> 0x01d2, blocks: (B:28:0x00f2, B:32:0x010e, B:38:0x0122, B:40:0x0128, B:41:0x0138, B:43:0x0144, B:70:0x0149, B:72:0x0159, B:74:0x0161, B:78:0x012d), top: B:27:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012d A[Catch: Exception -> 0x01d2, TryCatch #3 {Exception -> 0x01d2, blocks: (B:28:0x00f2, B:32:0x010e, B:38:0x0122, B:40:0x0128, B:41:0x0138, B:43:0x0144, B:70:0x0149, B:72:0x0159, B:74:0x0161, B:78:0x012d), top: B:27:0x00f2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzh(com.google.android.gms.internal.ads.zzth r27, com.google.android.gms.internal.ads.zztj r28) throws com.google.android.gms.internal.ads.zzti {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztq.zzh(com.google.android.gms.internal.ads.zzth, com.google.android.gms.internal.ads.zztj):java.util.ArrayList");
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzas.zza(str)) {
            return true;
        }
        String zza2 = zzglm.zza(mediaCodecInfo.getName());
        if (zza2.startsWith("arc.")) {
            return false;
        }
        if (zza2.startsWith("omx.google.") || zza2.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((zza2.startsWith("omx.sec.") && zza2.contains(".sw.")) || zza2.equals("omx.qcom.video.decoder.hevcswvdec") || zza2.startsWith("c2.android.") || zza2.startsWith("c2.google.")) {
            return true;
        }
        return (zza2.startsWith("omx.") || zza2.startsWith("c2.")) ? false : true;
    }

    private static void zzj(List list, final zztp zztpVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zztn
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(Object obj, Object obj2) {
                int i = zztq.zza;
                zztp zztpVar2 = zztp.this;
                return zztpVar2.zza(obj2) - zztpVar2.zza(obj);
            }
        });
    }
}
