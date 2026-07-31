package androidx.compose.animation.core;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RepeatMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RepeatMode[] $VALUES;
    public static final RepeatMode Restart;
    public static final RepeatMode Reverse;

    static {
        RepeatMode repeatMode = new RepeatMode("Restart", 0);
        Restart = repeatMode;
        RepeatMode repeatMode2 = new RepeatMode("Reverse", 1);
        Reverse = repeatMode2;
        RepeatMode[] repeatModeArr = {repeatMode, repeatMode2};
        $VALUES = repeatModeArr;
        $ENTRIES = new EnumEntriesList(repeatModeArr);
    }

    public static RepeatMode valueOf(String str) {
        return (RepeatMode) Enum.valueOf(RepeatMode.class, str);
    }

    public static RepeatMode[] values() {
        return (RepeatMode[]) $VALUES.clone();
    }
}
