package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Collections;
import java.util.List;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_SessionConfig_OutputConfig {
    public final DynamicRange dynamicRange;
    public final int mirrorMode;
    public final List sharedSurfaces;
    public final DeferrableSurface surface;
    public final int surfaceGroupId;

    public AutoValue_SessionConfig_OutputConfig(DeferrableSurface deferrableSurface, List list, int i, int i2, DynamicRange dynamicRange) {
        this.surface = deferrableSurface;
        this.sharedSurfaces = list;
        this.mirrorMode = i;
        this.surfaceGroupId = i2;
        this.dynamicRange = dynamicRange;
    }

    public static LocalStore.AnonymousClass7 builder(DeferrableSurface deferrableSurface) {
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(3);
        if (deferrableSurface == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null surface");
            return null;
        }
        anonymousClass7.val$queryString = deferrableSurface;
        List list = Collections.EMPTY_LIST;
        if (list == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null sharedSurfaces");
            return null;
        }
        anonymousClass7.val$placeHolders = list;
        anonymousClass7.val$folder = -1;
        anonymousClass7.val$messages = -1;
        anonymousClass7.this$0 = DynamicRange.SDR;
        return anonymousClass7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_SessionConfig_OutputConfig)) {
            return false;
        }
        AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig = (AutoValue_SessionConfig_OutputConfig) obj;
        return this.surface.equals(autoValue_SessionConfig_OutputConfig.surface) && this.sharedSurfaces.equals(autoValue_SessionConfig_OutputConfig.sharedSurfaces) && this.mirrorMode == autoValue_SessionConfig_OutputConfig.mirrorMode && this.surfaceGroupId == autoValue_SessionConfig_OutputConfig.surfaceGroupId && this.dynamicRange.equals(autoValue_SessionConfig_OutputConfig.dynamicRange);
    }

    public final int hashCode() {
        return this.dynamicRange.hashCode() ^ ((((((((this.surface.hashCode() ^ 1000003) * 1000003) ^ this.sharedSurfaces.hashCode()) * (-721379959)) ^ this.mirrorMode) * 1000003) ^ this.surfaceGroupId) * 1000003);
    }

    public final String toString() {
        return "OutputConfig{surface=" + this.surface + ", sharedSurfaces=" + this.sharedSurfaces + ", physicalCameraId=null, mirrorMode=" + this.mirrorMode + ", surfaceGroupId=" + this.surfaceGroupId + ", dynamicRange=" + this.dynamicRange + "}";
    }
}
