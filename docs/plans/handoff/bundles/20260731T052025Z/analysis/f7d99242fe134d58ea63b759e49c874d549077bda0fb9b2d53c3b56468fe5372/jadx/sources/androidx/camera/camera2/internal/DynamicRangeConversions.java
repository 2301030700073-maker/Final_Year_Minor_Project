package androidx.camera.camera2.internal;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DynamicRangeConversions {
    public static final LinkedHashMap DR_TO_PROFILE_MAP;
    public static final LinkedHashMap PROFILE_TO_DR_MAP;

    static {
        DynamicRange dynamicRange;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PROFILE_TO_DR_MAP = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DR_TO_PROFILE_MAP = linkedHashMap2;
        DynamicRange dynamicRange2 = DynamicRange.SDR;
        linkedHashMap.put(1L, dynamicRange2);
        linkedHashMap2.put(dynamicRange2, IntOffsetKt.listOf((Object) 1L));
        linkedHashMap.put(2L, DynamicRange.HLG_10_BIT);
        linkedHashMap2.put(linkedHashMap.get(2L), IntOffsetKt.listOf((Object) 2L));
        DynamicRange dynamicRange3 = DynamicRange.HDR10_10_BIT;
        linkedHashMap.put(4L, dynamicRange3);
        linkedHashMap2.put(dynamicRange3, IntOffsetKt.listOf((Object) 4L));
        DynamicRange dynamicRange4 = DynamicRange.HDR10_PLUS_10_BIT;
        linkedHashMap.put(8L, dynamicRange4);
        linkedHashMap2.put(dynamicRange4, IntOffsetKt.listOf((Object) 8L));
        List listOf = IntOffsetKt.listOf((Object[]) new Long[]{64L, 128L, 16L, 32L});
        Iterator it = listOf.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            dynamicRange = DynamicRange.DOLBY_VISION_10_BIT;
            if (!hasNext) {
                break;
            } else {
                PROFILE_TO_DR_MAP.put(Long.valueOf(((Number) it.next()).longValue()), dynamicRange);
            }
        }
        DR_TO_PROFILE_MAP.put(dynamicRange, listOf);
        List listOf2 = IntOffsetKt.listOf((Object[]) new Long[]{1024L, 2048L, 256L, 512L});
        Iterator it2 = listOf2.iterator();
        while (true) {
            boolean hasNext2 = it2.hasNext();
            DynamicRange dynamicRange5 = DynamicRange.DOLBY_VISION_8_BIT;
            if (!hasNext2) {
                DR_TO_PROFILE_MAP.put(dynamicRange5, listOf2);
                return;
            }
            PROFILE_TO_DR_MAP.put(Long.valueOf(((Number) it2.next()).longValue()), dynamicRange5);
        }
    }

    public static Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange, DynamicRangeProfiles dynamicRangeProfiles) {
        dynamicRange.getClass();
        dynamicRangeProfiles.getClass();
        List list = (List) DR_TO_PROFILE_MAP.get(dynamicRange);
        if (list == null) {
            return null;
        }
        Set<Long> supportedProfiles = dynamicRangeProfiles.getSupportedProfiles();
        supportedProfiles.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            if (supportedProfiles.contains(Long.valueOf(longValue))) {
                return Long.valueOf(longValue);
            }
        }
        return null;
    }
}
