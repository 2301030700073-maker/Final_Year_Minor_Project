package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzafy {
    private static final String[] zza = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] zzb = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] zzc = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0088, code lost:
    
        r7 = -9223372036854775807L;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzafx zza(java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafy.zza(java.lang.String):com.google.android.gms.internal.ads.zzafx");
    }

    public static boolean zzb(String str) {
        if (str == null) {
            return false;
        }
        String[] strArr = zza;
        for (int i = 0; i < 4; i++) {
            String str2 = strArr[i];
            String.valueOf(str2);
            if (str.contains(String.valueOf(str2).concat("=\"1\""))) {
                return true;
            }
        }
        return false;
    }

    private static zzgpe zzc(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        do {
            String concat = str.concat(":Item");
            xmlPullParser.next();
            if (zzeq.zzb(xmlPullParser, concat)) {
                String concat2 = str2.concat(":Mime");
                String concat3 = str2.concat(":Semantic");
                String concat4 = str2.concat(":Length");
                String concat5 = str2.concat(":Padding");
                String zzc2 = zzeq.zzc(xmlPullParser, concat2);
                String zzc3 = zzeq.zzc(xmlPullParser, concat3);
                String zzc4 = zzeq.zzc(xmlPullParser, concat4);
                String zzc5 = zzeq.zzc(xmlPullParser, concat5);
                if (zzc2 == null || zzc3 == null) {
                    return zzgpe.zzi();
                }
                zzgpbVar.zzf(new zzafw(zzc2, zzc3, zzc4 != null ? Long.parseLong(zzc4) : 0L, zzc5 != null ? Long.parseLong(zzc5) : 0L));
            }
        } while (!zzeq.zza(xmlPullParser, str.concat(":Directory")));
        return zzgpbVar.zzi();
    }
}
