package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.DynamicRange;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_StreamSpec {
    public static final Range FRAME_RATE_RANGE_UNSPECIFIED = new Range(0, 0);
    public final DynamicRange dynamicRange;
    public final Range expectedFrameRateRange;
    public final Config implementationOptions;
    public final Size originalConfiguredResolution;
    public final Size resolution;
    public final int sessionType;
    public final boolean zslDisabled;

    public AutoValue_StreamSpec(Size size, Size size2, DynamicRange dynamicRange, int i, Range range, Config config, boolean z) {
        this.resolution = size;
        this.originalConfiguredResolution = size2;
        this.dynamicRange = dynamicRange;
        this.sessionType = i;
        this.expectedFrameRateRange = range;
        this.implementationOptions = config;
        this.zslDisabled = z;
    }

    public static TooltipPopup builder(Size size) {
        TooltipPopup tooltipPopup = new TooltipPopup();
        if (size == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null resolution");
            return null;
        }
        tooltipPopup.mContext = size;
        tooltipPopup.mContentView = size;
        tooltipPopup.mLayoutParams = 0;
        Range range = FRAME_RATE_RANGE_UNSPECIFIED;
        if (range == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null expectedFrameRateRange");
            return null;
        }
        tooltipPopup.mTmpDisplayFrame = range;
        tooltipPopup.mMessageView = DynamicRange.SDR;
        tooltipPopup.mTmpAppPos = Boolean.FALSE;
        return tooltipPopup;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_StreamSpec) {
            AutoValue_StreamSpec autoValue_StreamSpec = (AutoValue_StreamSpec) obj;
            if (this.resolution.equals(autoValue_StreamSpec.resolution) && this.originalConfiguredResolution.equals(autoValue_StreamSpec.originalConfiguredResolution) && this.dynamicRange.equals(autoValue_StreamSpec.dynamicRange) && this.sessionType == autoValue_StreamSpec.sessionType && this.expectedFrameRateRange.equals(autoValue_StreamSpec.expectedFrameRateRange)) {
                Config config = autoValue_StreamSpec.implementationOptions;
                Config config2 = this.implementationOptions;
                if (config2 != null ? config2.equals(config) : config == null) {
                    if (this.zslDisabled == autoValue_StreamSpec.zslDisabled) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((((((this.resolution.hashCode() ^ 1000003) * 1000003) ^ this.originalConfiguredResolution.hashCode()) * 1000003) ^ this.dynamicRange.hashCode()) * 1000003) ^ this.sessionType) * 1000003) ^ this.expectedFrameRateRange.hashCode()) * 1000003;
        Config config = this.implementationOptions;
        return (this.zslDisabled ? 1231 : 1237) ^ ((hashCode ^ (config == null ? 0 : config.hashCode())) * 1000003);
    }

    public final TooltipPopup toBuilder() {
        TooltipPopup tooltipPopup = new TooltipPopup();
        tooltipPopup.mContext = this.resolution;
        tooltipPopup.mContentView = this.originalConfiguredResolution;
        tooltipPopup.mMessageView = this.dynamicRange;
        tooltipPopup.mLayoutParams = Integer.valueOf(this.sessionType);
        tooltipPopup.mTmpDisplayFrame = this.expectedFrameRateRange;
        tooltipPopup.mTmpAnchorPos = this.implementationOptions;
        tooltipPopup.mTmpAppPos = Boolean.valueOf(this.zslDisabled);
        return tooltipPopup;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamSpec{resolution=");
        sb.append(this.resolution);
        sb.append(", originalConfiguredResolution=");
        sb.append(this.originalConfiguredResolution);
        sb.append(", dynamicRange=");
        sb.append(this.dynamicRange);
        sb.append(", sessionType=");
        sb.append(this.sessionType);
        sb.append(", expectedFrameRateRange=");
        sb.append(this.expectedFrameRateRange);
        sb.append(", implementationOptions=");
        sb.append(this.implementationOptions);
        sb.append(", zslDisabled=");
        return CameraDevices$CC.m("}", sb, this.zslDisabled);
    }
}
