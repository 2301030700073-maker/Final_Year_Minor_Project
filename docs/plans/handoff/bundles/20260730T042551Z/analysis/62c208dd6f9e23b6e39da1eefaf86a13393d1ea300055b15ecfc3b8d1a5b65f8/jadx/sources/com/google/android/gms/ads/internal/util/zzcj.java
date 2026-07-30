package com.google.android.gms.ads.internal.util;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcj {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static List f9807do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap f9806do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public static final Object f9805do = new Object();

    /* renamed from: do, reason: not valid java name */
    public static Integer[] m5572do(Range range) {
        return new Integer[]{(Integer) range.getLower(), (Integer) range.getUpper()};
    }

    public static List zza(String str) {
        ArrayList arrayList;
        int maxSupportedInstances;
        Object obj = f9805do;
        synchronized (obj) {
            HashMap hashMap = f9806do;
            if (hashMap.containsKey(str)) {
                return (List) hashMap.get(str);
            }
            try {
                synchronized (obj) {
                    if (f9807do == null) {
                        f9807do = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                    }
                    arrayList = new ArrayList();
                    for (MediaCodecInfo mediaCodecInfo : f9807do) {
                        if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("codecName", mediaCodecInfo.getName());
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            ArrayList arrayList2 = new ArrayList();
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                            }
                            hashMap2.put("profileLevels", arrayList2);
                            MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                            hashMap2.put("bitRatesBps", m5572do(videoCapabilities.getBitrateRange()));
                            hashMap2.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                            hashMap2.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                            hashMap2.put("frameRates", m5572do(videoCapabilities.getSupportedFrameRates()));
                            hashMap2.put("widths", m5572do(videoCapabilities.getSupportedWidths()));
                            hashMap2.put("heights", m5572do(videoCapabilities.getSupportedHeights()));
                            if (Build.VERSION.SDK_INT >= 23) {
                                maxSupportedInstances = capabilitiesForType.getMaxSupportedInstances();
                                hashMap2.put("instancesLimit", Integer.valueOf(maxSupportedInstances));
                            }
                            arrayList.add(hashMap2);
                        }
                    }
                    f9806do.put(str, arrayList);
                }
                return arrayList;
            } catch (LinkageError | RuntimeException e) {
                HashMap hashMap3 = new HashMap();
                hashMap3.put("error", e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap3);
                f9806do.put(str, arrayList3);
                return arrayList3;
            }
        }
    }
}
