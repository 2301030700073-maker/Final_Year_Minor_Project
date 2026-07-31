package co.touchlab.kermit;

import java.util.List;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Logger$Companion {
    public static final Logger$Companion Companion;
    public final JvmMutableLoggerConfig config;

    static {
        List listOf = Jsoup.listOf(new LogcatWriter(DefaultFormatter.INSTANCE));
        JvmMutableLoggerConfig jvmMutableLoggerConfig = new JvmMutableLoggerConfig();
        jvmMutableLoggerConfig._minSeverity = BaseLoggerKt.DEFAULT_MIN_SEVERITY;
        jvmMutableLoggerConfig._loggerList = listOf;
        Companion = new Logger$Companion(jvmMutableLoggerConfig);
    }

    public Logger$Companion(JvmMutableLoggerConfig jvmMutableLoggerConfig) {
        this.config = jvmMutableLoggerConfig;
    }

    public final void processLog(Severity severity, Exception exc, String str) {
        for (LogWriter logWriter : this.config._loggerList) {
            logWriter.getClass();
            logWriter.log(severity, str, exc);
        }
    }
}
