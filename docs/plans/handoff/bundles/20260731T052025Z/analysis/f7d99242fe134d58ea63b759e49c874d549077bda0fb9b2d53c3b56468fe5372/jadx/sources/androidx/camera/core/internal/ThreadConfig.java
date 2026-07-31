package androidx.camera.core.internal;

import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.ReadableConfig;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ThreadConfig extends ReadableConfig {
    public static final AutoValue_Config_Option OPTION_BACKGROUND_EXECUTOR = new AutoValue_Config_Option("camerax.core.thread.backgroundExecutor", Executor.class, null);
}
