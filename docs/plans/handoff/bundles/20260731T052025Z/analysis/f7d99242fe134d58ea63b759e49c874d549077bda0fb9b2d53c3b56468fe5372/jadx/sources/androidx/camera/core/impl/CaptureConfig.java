package androidx.camera.core.impl;

import android.util.Range;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CaptureConfig {
    public static final AutoValue_Config_Option OPTION_RESOLVED_FRAME_RATE;
    public final List mCameraCaptureCallbacks;
    public final OptionsBundle mImplementationOptions;
    public final ArrayList mSurfaces;
    public final TagBundle mTagBundle;
    public final int mTemplateType;

    static {
        new AutoValue_Config_Option("camerax.core.captureConfig.rotation", Integer.TYPE, null);
        new AutoValue_Config_Option("camerax.core.captureConfig.jpegQuality", Integer.class, null);
        OPTION_RESOLVED_FRAME_RATE = new AutoValue_Config_Option("camerax.core.captureConfig.resolvedFrameRate", Range.class, null);
    }

    public CaptureConfig(ArrayList arrayList, OptionsBundle optionsBundle, int i, ArrayList arrayList2, TagBundle tagBundle) {
        this.mSurfaces = arrayList;
        this.mImplementationOptions = optionsBundle;
        this.mTemplateType = i;
        this.mCameraCaptureCallbacks = DesugarCollections.unmodifiableList(arrayList2);
        this.mTagBundle = tagBundle;
    }

    public final Range getExpectedFrameRateRange() {
        Range range = (Range) this.mImplementationOptions.retrieveOption(OPTION_RESOLVED_FRAME_RATE, AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        Objects.requireNonNull(range);
        return range;
    }
}
