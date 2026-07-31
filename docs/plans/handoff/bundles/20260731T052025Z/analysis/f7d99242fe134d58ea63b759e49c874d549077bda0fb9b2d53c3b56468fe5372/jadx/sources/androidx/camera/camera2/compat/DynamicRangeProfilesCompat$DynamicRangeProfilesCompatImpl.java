package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl {
    Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange);

    Set getSupportedDynamicRanges();

    DynamicRangeProfiles unwrap();
}
