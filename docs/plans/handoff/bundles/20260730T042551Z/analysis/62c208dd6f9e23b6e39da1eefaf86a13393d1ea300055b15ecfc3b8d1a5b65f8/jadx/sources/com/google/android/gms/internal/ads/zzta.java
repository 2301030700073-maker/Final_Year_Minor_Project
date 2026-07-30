package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class zzta {
    public static final /* synthetic */ int zza = 0;
    private static final HashMap zzb = new HashMap();

    public static zzsg zza() {
        List zzd = zzd("audio/raw", false, false);
        if (zzd.isEmpty()) {
            return null;
        }
        return (zzsg) zzd.get(0);
    }

    public static String zzb(zzab zzabVar) {
        Pair zza2;
        if ("audio/eac3-joc".equals(zzabVar.zzo)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(zzabVar.zzo) && (zza2 = zzcy.zza(zzabVar)) != null) {
            int intValue = ((Integer) zza2.first).intValue();
            if (intValue == 16 || intValue == 256) {
                return "video/hevc";
            }
            if (intValue == 512) {
                return "video/avc";
            }
            if (intValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(zzabVar.zzo)) {
            return "video/hevc";
        }
        return null;
    }

    public static List zzc(zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) {
        String zzb2 = zzb(zzabVar);
        return zzb2 == null ? zzfxn.zzn() : zzspVar.zza(zzb2, z, z2);
    }

    public static synchronized List zzd(String str, boolean z, boolean z2) {
        synchronized (zzta.class) {
            zzst zzstVar = new zzst(str, z, z2);
            HashMap hashMap = zzb;
            List list = (List) hashMap.get(zzstVar);
            if (list != null) {
                return list;
            }
            ArrayList zzg = zzg(zzstVar, new zzsx(z, z2));
            if (z && zzg.isEmpty() && zzei.zza <= 23) {
                zzg = zzg(zzstVar, new zzsw(null));
                if (!zzg.isEmpty()) {
                    zzdo.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzsg) zzg.get(0)).zza);
                }
            }
            if ("audio/raw".equals(str)) {
                if (zzei.zza < 26 && zzei.zzb.equals("R9") && zzg.size() == 1 && ((zzsg) zzg.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    zzg.add(zzsg.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                }
                zzh(zzg, new zzsy() { // from class: com.google.android.gms.internal.ads.zzsr
                    @Override // com.google.android.gms.internal.ads.zzsy
                    public final int zza(Object obj) {
                        int i = zzta.zza;
                        String str2 = ((zzsg) obj).zza;
                        if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                            return 1;
                        }
                        return (zzei.zza >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                    }
                });
            }
            if (zzei.zza < 32 && zzg.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsg) zzg.get(0)).zza)) {
                zzg.add((zzsg) zzg.remove(0));
            }
            zzfxn zzl = zzfxn.zzl(zzg);
            hashMap.put(zzstVar, zzl);
            return zzl;
        }
    }

    public static List zze(zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) {
        List zza2 = zzspVar.zza(zzabVar.zzo, z, z2);
        List zzc = zzc(zzspVar, zzabVar, z, z2);
        zzfxk zzfxkVar = new zzfxk();
        zzfxkVar.zzh(zza2);
        zzfxkVar.zzh(zzc);
        return zzfxkVar.zzi();
    }

    public static List zzf(List list, final zzab zzabVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zzsy() { // from class: com.google.android.gms.internal.ads.zzss
            @Override // com.google.android.gms.internal.ads.zzsy
            public final int zza(Object obj) {
                int i = zzta.zza;
                return ((zzsg) obj).zzd(zzab.this) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:64|65|(1:67)(2:128|(1:130)(1:131))|68|(1:70)(2:120|(1:127)(1:126))|(4:(2:114|115)|94|(8:97|98|99|100|101|102|103|105)|11)|74|75|76|77|11) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01be, code lost:
    
        if (r1.zzb == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a5, code lost:
    
        if ("SCV31".equals(r10) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01dc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01dd, code lost:
    
        r1 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
    
        if (r9 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0191 A[Catch: Exception -> 0x021c, TryCatch #2 {Exception -> 0x021c, blocks: (B:57:0x0145, B:61:0x015c, B:65:0x0170, B:67:0x0176, B:68:0x0184, B:70:0x018c, B:72:0x01b6, B:120:0x0191, B:122:0x01a1, B:124:0x01a9, B:128:0x017b), top: B:56:0x0145 }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x017b A[Catch: Exception -> 0x021c, TryCatch #2 {Exception -> 0x021c, blocks: (B:57:0x0145, B:61:0x015c, B:65:0x0170, B:67:0x0176, B:68:0x0184, B:70:0x018c, B:72:0x01b6, B:120:0x0191, B:122:0x01a1, B:124:0x01a9, B:128:0x017b), top: B:56:0x0145 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0176 A[Catch: Exception -> 0x021c, TryCatch #2 {Exception -> 0x021c, blocks: (B:57:0x0145, B:61:0x015c, B:65:0x0170, B:67:0x0176, B:68:0x0184, B:70:0x018c, B:72:0x01b6, B:120:0x0191, B:122:0x01a1, B:124:0x01a9, B:128:0x017b), top: B:56:0x0145 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018c A[Catch: Exception -> 0x021c, TryCatch #2 {Exception -> 0x021c, blocks: (B:57:0x0145, B:61:0x015c, B:65:0x0170, B:67:0x0176, B:68:0x0184, B:70:0x018c, B:72:0x01b6, B:120:0x0191, B:122:0x01a1, B:124:0x01a9, B:128:0x017b), top: B:56:0x0145 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022b A[Catch: Exception -> 0x0279, TRY_ENTER, TryCatch #4 {Exception -> 0x0279, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:12:0x0033, B:16:0x0041, B:20:0x004b, B:22:0x0053, B:24:0x005b, B:26:0x0065, B:28:0x006f, B:30:0x0077, B:32:0x007f, B:34:0x0087, B:36:0x008f, B:38:0x0097, B:40:0x009f, B:44:0x00ab, B:46:0x00b3, B:48:0x00bb, B:50:0x00c3, B:80:0x0223, B:83:0x022b, B:85:0x0231, B:88:0x024b, B:89:0x026c, B:52:0x00cd, B:140:0x00d0, B:142:0x00d8, B:145:0x00e3, B:147:0x00eb, B:151:0x00f6, B:153:0x00fe, B:156:0x010b, B:158:0x0113, B:161:0x011e, B:163:0x0126, B:166:0x0131, B:168:0x0139), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x024b A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzg(com.google.android.gms.internal.ads.zzst r23, com.google.android.gms.internal.ads.zzsv r24) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzta.zzg(com.google.android.gms.internal.ads.zzst, com.google.android.gms.internal.ads.zzsv):java.util.ArrayList");
    }

    private static void zzh(List list, final zzsy zzsyVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzsq
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zzta.zza;
                zzsy zzsyVar2 = zzsy.this;
                return zzsyVar2.zza(obj2) - zzsyVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (zzei.zza >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        }
        if (zzbb.zzg(str)) {
            return true;
        }
        String zza2 = zzftt.zza(mediaCodecInfo.getName());
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
}
