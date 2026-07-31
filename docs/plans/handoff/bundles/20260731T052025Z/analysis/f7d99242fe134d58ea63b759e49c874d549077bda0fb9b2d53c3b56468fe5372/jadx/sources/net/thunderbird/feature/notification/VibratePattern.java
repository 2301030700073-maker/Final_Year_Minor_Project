package net.thunderbird.feature.notification;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.jcraft.jzlib.Adler32;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VibratePattern {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ VibratePattern[] $VALUES;
    public static final Adler32 Companion;
    public static final VibratePattern Default;
    public static final VibratePattern Pattern1;
    public static final VibratePattern Pattern2;
    public static final VibratePattern Pattern3;
    public static final VibratePattern Pattern4;
    public static final VibratePattern Pattern5;
    public final long[] vibrationPattern;

    static {
        VibratePattern vibratePattern = new VibratePattern("Default", 0, new long[]{300, 200});
        Default = vibratePattern;
        VibratePattern vibratePattern2 = new VibratePattern("Pattern1", 1, new long[]{100, 200});
        Pattern1 = vibratePattern2;
        VibratePattern vibratePattern3 = new VibratePattern("Pattern2", 2, new long[]{100, 500});
        Pattern2 = vibratePattern3;
        VibratePattern vibratePattern4 = new VibratePattern("Pattern3", 3, new long[]{200, 200});
        Pattern3 = vibratePattern4;
        VibratePattern vibratePattern5 = new VibratePattern("Pattern4", 4, new long[]{200, 500});
        Pattern4 = vibratePattern5;
        VibratePattern vibratePattern6 = new VibratePattern("Pattern5", 5, new long[]{500, 500});
        Pattern5 = vibratePattern6;
        VibratePattern[] vibratePatternArr = {vibratePattern, vibratePattern2, vibratePattern3, vibratePattern4, vibratePattern5, vibratePattern6};
        $VALUES = vibratePatternArr;
        $ENTRIES = new EnumEntriesList(vibratePatternArr);
        Companion = new Adler32(21);
    }

    public VibratePattern(String str, int i, long[] jArr) {
        this.vibrationPattern = jArr;
    }

    public static VibratePattern valueOf(String str) {
        return (VibratePattern) Enum.valueOf(VibratePattern.class, str);
    }

    public static VibratePattern[] values() {
        return (VibratePattern[]) $VALUES.clone();
    }

    public final int serialize() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return 0;
                    }
                }
            }
        }
        return i;
    }
}
