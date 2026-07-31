package coil3.util;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Logger$Level {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Logger$Level[] $VALUES;
    public static final Logger$Level Debug;
    public static final Logger$Level Error;
    public static final Logger$Level Info;
    public static final Logger$Level Verbose;
    public static final Logger$Level Warn;

    static {
        Logger$Level logger$Level = new Logger$Level("Verbose", 0);
        Verbose = logger$Level;
        Logger$Level logger$Level2 = new Logger$Level("Debug", 1);
        Debug = logger$Level2;
        Logger$Level logger$Level3 = new Logger$Level("Info", 2);
        Info = logger$Level3;
        Logger$Level logger$Level4 = new Logger$Level("Warn", 3);
        Warn = logger$Level4;
        Logger$Level logger$Level5 = new Logger$Level("Error", 4);
        Error = logger$Level5;
        Logger$Level[] logger$LevelArr = {logger$Level, logger$Level2, logger$Level3, logger$Level4, logger$Level5};
        $VALUES = logger$LevelArr;
        $ENTRIES = new EnumEntriesList(logger$LevelArr);
    }

    public static Logger$Level valueOf(String str) {
        return (Logger$Level) Enum.valueOf(Logger$Level.class, str);
    }

    public static Logger$Level[] values() {
        return (Logger$Level[]) $VALUES.clone();
    }
}
