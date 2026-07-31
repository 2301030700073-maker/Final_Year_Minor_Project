package androidx.compose.ui.graphics;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Path$Direction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Path$Direction[] $VALUES;
    public static final Path$Direction Clockwise;
    public static final Path$Direction CounterClockwise;

    static {
        Path$Direction path$Direction = new Path$Direction("CounterClockwise", 0);
        CounterClockwise = path$Direction;
        Path$Direction path$Direction2 = new Path$Direction("Clockwise", 1);
        Clockwise = path$Direction2;
        Path$Direction[] path$DirectionArr = {path$Direction, path$Direction2};
        $VALUES = path$DirectionArr;
        $ENTRIES = new EnumEntriesList(path$DirectionArr);
    }

    public static Path$Direction valueOf(String str) {
        return (Path$Direction) Enum.valueOf(Path$Direction.class, str);
    }

    public static Path$Direction[] values() {
        return (Path$Direction[]) $VALUES.clone();
    }
}
