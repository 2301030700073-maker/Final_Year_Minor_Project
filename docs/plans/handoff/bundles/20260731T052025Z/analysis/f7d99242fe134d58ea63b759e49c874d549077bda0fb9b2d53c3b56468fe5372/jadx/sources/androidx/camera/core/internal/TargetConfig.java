package androidx.camera.core.internal;

import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.ReadableConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface TargetConfig extends ReadableConfig {
    public static final AutoValue_Config_Option OPTION_TARGET_NAME = new AutoValue_Config_Option("camerax.core.target.name", String.class, null);
    public static final AutoValue_Config_Option OPTION_TARGET_CLASS = new AutoValue_Config_Option("camerax.core.target.class", Class.class, null);

    String getTargetName();

    String getTargetName(String str);
}
