package com.google.android.gms.internal.ads;

import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
final class zzafh {
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
    public static com.google.android.gms.internal.ads.zzafd zza(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafh.zza(java.lang.String):com.google.android.gms.internal.ads.zzafd");
    }

    private static zzfxn zzb(XmlPullParser xmlPullParser, String str, String str2) {
        zzfxk zzfxkVar = new zzfxk();
        do {
            String concat = str.concat(":Item");
            xmlPullParser.next();
            if (zzej.zzc(xmlPullParser, concat)) {
                String concat2 = str2.concat(":Mime");
                String concat3 = str2.concat(":Semantic");
                String concat4 = str2.concat(":Length");
                String concat5 = str2.concat(":Padding");
                String zza2 = zzej.zza(xmlPullParser, concat2);
                String zza3 = zzej.zza(xmlPullParser, concat3);
                String zza4 = zzej.zza(xmlPullParser, concat4);
                String zza5 = zzej.zza(xmlPullParser, concat5);
                if (zza2 == null || zza3 == null) {
                    return zzfxn.zzn();
                }
                zzfxkVar.zzf(new zzafc(zza2, zza3, zza4 != null ? Long.parseLong(zza4) : 0L, zza5 != null ? Long.parseLong(zza5) : 0L));
            }
        } while (!zzej.zzb(xmlPullParser, str.concat(":Directory")));
        return zzfxkVar.zzi();
    }
}
