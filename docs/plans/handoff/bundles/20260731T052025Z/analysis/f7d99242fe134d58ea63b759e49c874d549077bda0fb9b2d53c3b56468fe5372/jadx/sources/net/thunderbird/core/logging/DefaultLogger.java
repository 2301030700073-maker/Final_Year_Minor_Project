package net.thunderbird.core.logging;

import kotlin.jvm.functions.Function0;
import kotlin.time.Clock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLogger implements Logger {
    public final Clock clock = Clock.System.INSTANCE;
    public final LogSink sink;

    public DefaultLogger(LogSink logSink) {
        this.sink = logSink;
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void debug(String str, Throwable th, Function0 function0) {
        log(LogLevel.DEBUG, str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void error(String str, Throwable th, Function0 function0) {
        log(LogLevel.ERROR, str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void info(String str, Throwable th, Function0 function0) {
        log(LogLevel.INFO, str, th, function0);
    }

    public final void log(LogLevel logLevel, String str, Throwable th, Function0 function0) {
        LogSink logSink = this.sink;
        if (logSink.canLog(logLevel)) {
            logSink.log(new LogEvent(logLevel, str, (String) function0.invoke(), th, this.clock.now().toEpochMilliseconds()));
        }
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void verbose(String str, Throwable th, Function0 function0) {
        log(LogLevel.VERBOSE, str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void warn(String str, Throwable th, Function0 function0) {
        log(LogLevel.WARN, str, th, function0);
    }
}
