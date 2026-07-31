package net.thunderbird.app.common.core.logging;

import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogLevelProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLogLevelManager implements LogLevelProvider {
    public final LogLevel defaultLevel;
    public final StateFlowImpl logLevel;

    public DefaultLogLevelManager() {
        LogLevel logLevel = LogLevel.INFO;
        this.defaultLevel = logLevel;
        this.logLevel = FlowKt.MutableStateFlow(logLevel);
    }
}
