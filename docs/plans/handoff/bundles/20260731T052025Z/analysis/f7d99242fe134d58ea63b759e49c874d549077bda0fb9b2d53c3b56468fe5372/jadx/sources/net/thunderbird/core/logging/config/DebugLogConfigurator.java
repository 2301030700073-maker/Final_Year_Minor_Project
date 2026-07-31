package net.thunderbird.core.logging.config;

import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.file.FileLogSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DebugLogConfigurator {
    public final PlatformInitializer platformInitializer;
    public final CompositeLogSink syncDebugCompositeSink;
    public final FileLogSink syncDebugFileLogSink;

    public DebugLogConfigurator(CompositeLogSink compositeLogSink, FileLogSink fileLogSink, PlatformInitializer platformInitializer) {
        this.syncDebugCompositeSink = compositeLogSink;
        this.syncDebugFileLogSink = fileLogSink;
        this.platformInitializer = platformInitializer;
    }
}
