package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Direction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Direction[] $VALUES;
    public static final Direction AFTER;
    public static final Direction BEFORE;
    public static final Direction ON;

    static {
        Direction direction = new Direction("BEFORE", 0);
        BEFORE = direction;
        Direction direction2 = new Direction("ON", 1);
        ON = direction2;
        Direction direction3 = new Direction("AFTER", 2);
        AFTER = direction3;
        Direction[] directionArr = {direction, direction2, direction3};
        $VALUES = directionArr;
        $ENTRIES = new EnumEntriesList(directionArr);
    }

    public static Direction valueOf(String str) {
        return (Direction) Enum.valueOf(Direction.class, str);
    }

    public static Direction[] values() {
        return (Direction[]) $VALUES.clone();
    }
}
