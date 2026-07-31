package coil3.util;

import coil3.util.Logger;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoggingKt {
    public static final void log(Logger logger, String str, Throwable th, Function0 function0) {
        Logger.Level minLevel = logger.getMinLevel();
        Logger.Level level = Logger.Level.Error;
        if (minLevel.compareTo(level) <= 0) {
            logger.log(str, level, (String) function0.invoke(), th);
        }
    }

    public static final void log(Logger logger, String str, Throwable th) {
        Logger.Level minLevel = logger.getMinLevel();
        Logger.Level level = Logger.Level.Error;
        if (minLevel.compareTo(level) <= 0) {
            logger.log(str, level, null, th);
        }
    }

    public static final void log(Logger logger, String str, Logger.Level level, Function0 function0) {
        if (logger.getMinLevel().compareTo(level) <= 0) {
            logger.log(str, level, (String) function0.invoke(), null);
        }
    }
}
