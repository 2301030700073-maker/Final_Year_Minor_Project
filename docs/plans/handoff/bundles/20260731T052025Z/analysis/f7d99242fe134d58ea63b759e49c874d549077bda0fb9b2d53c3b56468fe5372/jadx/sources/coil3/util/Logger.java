package coil3.util;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Logger {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Level {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Level[] $VALUES;
        public static final Level Verbose = new Level("Verbose", 0);
        public static final Level Debug = new Level("Debug", 1);
        public static final Level Info = new Level("Info", 2);
        public static final Level Warn = new Level("Warn", 3);
        public static final Level Error = new Level("Error", 4);

        private static final /* synthetic */ Level[] $values() {
            return new Level[]{Verbose, Debug, Info, Warn, Error};
        }

        static {
            Level[] $values = $values();
            $VALUES = $values;
            $ENTRIES = Okio.enumEntries($values);
        }

        private Level(String str, int i) {
        }

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) $VALUES.clone();
        }
    }

    Level getMinLevel();

    void log(String str, Level level, String str2, Throwable th);

    void setMinLevel(Level level);
}
