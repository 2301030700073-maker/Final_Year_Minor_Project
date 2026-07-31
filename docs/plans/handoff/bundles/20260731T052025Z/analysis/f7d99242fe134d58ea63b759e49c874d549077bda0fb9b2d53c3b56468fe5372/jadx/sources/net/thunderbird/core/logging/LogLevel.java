package net.thunderbird.core.logging;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LogLevel {
    public static final /* synthetic */ LogLevel[] $VALUES;
    public static final LogLevel DEBUG;
    public static final LogLevel ERROR;
    public static final LogLevel INFO;
    public static final LogLevel VERBOSE;
    public static final LogLevel WARN;

    static {
        LogLevel logLevel = new LogLevel("VERBOSE", 0);
        VERBOSE = logLevel;
        LogLevel logLevel2 = new LogLevel("DEBUG", 1);
        DEBUG = logLevel2;
        LogLevel logLevel3 = new LogLevel("INFO", 2);
        INFO = logLevel3;
        LogLevel logLevel4 = new LogLevel("WARN", 3);
        WARN = logLevel4;
        LogLevel logLevel5 = new LogLevel("ERROR", 4);
        ERROR = logLevel5;
        $VALUES = new LogLevel[]{logLevel, logLevel2, logLevel3, logLevel4, logLevel5};
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) $VALUES.clone();
    }
}
