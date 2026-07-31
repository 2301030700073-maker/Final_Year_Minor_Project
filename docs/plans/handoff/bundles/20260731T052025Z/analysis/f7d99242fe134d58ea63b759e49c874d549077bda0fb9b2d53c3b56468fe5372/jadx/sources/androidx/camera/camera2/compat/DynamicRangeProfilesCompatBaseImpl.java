package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.DynamicRange;
import androidx.room.util.RelationUtil;
import java.util.Set;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DynamicRangeProfilesCompatBaseImpl implements DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl {
    public static final BiometricPrompt COMPAT_INSTANCE = new BiometricPrompt(11, new DynamicRangeProfilesCompatBaseImpl());
    public static final Set SDR_ONLY = Validate.setOf(DynamicRange.SDR);

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        RelationUtil.checkArgument("DynamicRange is not supported: " + dynamicRange, DynamicRange.SDR.equals(dynamicRange));
        return SDR_ONLY;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final Set getSupportedDynamicRanges() {
        return SDR_ONLY;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl
    public final DynamicRangeProfiles unwrap() {
        return null;
    }
}
