package org.koin.core.logger;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Level {
    public static final /* synthetic */ Level[] $VALUES;
    public static final Level DEBUG;
    public static final Level ERROR;
    public static final Level INFO;
    public static final Level NONE;
    public static final Level WARNING;

    static {
        Level level = new Level("DEBUG", 0);
        DEBUG = level;
        Level level2 = new Level("INFO", 1);
        INFO = level2;
        Level level3 = new Level("WARNING", 2);
        WARNING = level3;
        Level level4 = new Level("ERROR", 3);
        ERROR = level4;
        Level level5 = new Level("NONE", 4);
        NONE = level5;
        $VALUES = new Level[]{level, level2, level3, level4, level5};
    }

    public static Level valueOf(String str) {
        return (Level) Enum.valueOf(Level.class, str);
    }

    public static Level[] values() {
        return (Level[]) $VALUES.clone();
    }
}
