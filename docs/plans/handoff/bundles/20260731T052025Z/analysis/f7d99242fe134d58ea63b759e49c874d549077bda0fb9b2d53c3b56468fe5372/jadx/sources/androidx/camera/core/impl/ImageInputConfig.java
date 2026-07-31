package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ImageInputConfig extends ReadableConfig {
    public static final AutoValue_Config_Option OPTION_INPUT_DYNAMIC_RANGE;
    public static final AutoValue_Config_Option OPTION_INPUT_FORMAT;
    public static final AutoValue_Config_Option OPTION_SECONDARY_INPUT_FORMAT;

    static {
        Class cls = Integer.TYPE;
        OPTION_INPUT_FORMAT = new AutoValue_Config_Option("camerax.core.imageInput.inputFormat", cls, null);
        OPTION_SECONDARY_INPUT_FORMAT = new AutoValue_Config_Option("camerax.core.imageInput.secondaryInputFormat", cls, null);
        OPTION_INPUT_DYNAMIC_RANGE = new AutoValue_Config_Option("camerax.core.imageInput.inputDynamicRange", DynamicRange.class, null);
    }

    DynamicRange getDynamicRange();

    int getInputFormat();

    boolean hasDynamicRange();
}
