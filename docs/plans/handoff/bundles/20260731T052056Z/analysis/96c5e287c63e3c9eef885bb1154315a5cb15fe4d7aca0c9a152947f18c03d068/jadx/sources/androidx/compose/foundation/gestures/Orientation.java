package androidx.compose.foundation.gestures;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Orientation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Orientation[] $VALUES;
    public static final Orientation Horizontal;
    public static final Orientation Vertical;

    static {
        Orientation orientation = new Orientation("Vertical", 0);
        Vertical = orientation;
        Orientation orientation2 = new Orientation("Horizontal", 1);
        Horizontal = orientation2;
        Orientation[] orientationArr = {orientation, orientation2};
        $VALUES = orientationArr;
        $ENTRIES = new EnumEntriesList(orientationArr);
    }

    public static Orientation valueOf(String str) {
        return (Orientation) Enum.valueOf(Orientation.class, str);
    }

    public static Orientation[] values() {
        return (Orientation[]) $VALUES.clone();
    }
}
