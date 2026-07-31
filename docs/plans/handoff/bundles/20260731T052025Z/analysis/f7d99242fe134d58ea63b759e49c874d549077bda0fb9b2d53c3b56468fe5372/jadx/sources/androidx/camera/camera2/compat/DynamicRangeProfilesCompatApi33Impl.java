package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import android.util.Log;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.core.DynamicRange;
import androidx.datastore.preferences.protobuf.Utf8;
import j$.util.DesugarCollections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptySet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DynamicRangeProfilesCompatApi33Impl implements DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl {
    public final DynamicRangeProfiles dynamicRangeProfiles;

    public DynamicRangeProfilesCompatApi33Impl(DynamicRangeProfiles dynamicRangeProfiles) {
        this.dynamicRangeProfiles = dynamicRangeProfiles;
    }

    public static Set profileSetToDynamicRangeSet(Set set) {
        if (set.isEmpty()) {
            return EmptySet.INSTANCE;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            DynamicRange dynamicRange = (DynamicRange) DynamicRangeConversions.PROFILE_TO_DR_MAP.get(Long.valueOf(longValue));
            if (dynamicRange == null && Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "Dynamic range profile cannot be converted to a DynamicRange object: " + longValue);
            }
            if (dynamicRange != null) {
                linkedHashSet.add(dynamicRange);
            }
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(linkedHashSet);
        unmodifiableSet.getClass();
        return unmodifiableSet;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        LinkedHashMap linkedHashMap = DynamicRangeConversions.PROFILE_TO_DR_MAP;
        Long dynamicRangeToFirstSupportedProfile = DynamicRangeConversions.dynamicRangeToFirstSupportedProfile(dynamicRange, this.dynamicRangeProfiles);
        if (dynamicRangeToFirstSupportedProfile == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3(dynamicRange, "DynamicRange is not supported: ");
            return null;
        }
        Set<Long> profileCaptureRequestConstraints = this.dynamicRangeProfiles.getProfileCaptureRequestConstraints(dynamicRangeToFirstSupportedProfile.longValue());
        profileCaptureRequestConstraints.getClass();
        return profileSetToDynamicRangeSet(profileCaptureRequestConstraints);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final Set getSupportedDynamicRanges() {
        Set<Long> supportedProfiles = this.dynamicRangeProfiles.getSupportedProfiles();
        supportedProfiles.getClass();
        return profileSetToDynamicRangeSet(supportedProfiles);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final DynamicRangeProfiles unwrap() {
        return this.dynamicRangeProfiles;
    }
}
