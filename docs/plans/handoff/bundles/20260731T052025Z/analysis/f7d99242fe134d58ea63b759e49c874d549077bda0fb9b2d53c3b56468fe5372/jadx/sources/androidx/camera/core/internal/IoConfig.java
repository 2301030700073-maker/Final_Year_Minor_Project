package androidx.camera.core.internal;

import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.ReadableConfig;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface IoConfig extends ReadableConfig {
    public static final AutoValue_Config_Option OPTION_IO_EXECUTOR = new AutoValue_Config_Option("camerax.core.io.ioExecutor", Executor.class, null);
}
