package coil3.size;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Scale {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Scale[] $VALUES;
    public static final Scale FILL;
    public static final Scale FIT;

    static {
        Scale scale = new Scale("FILL", 0);
        FILL = scale;
        Scale scale2 = new Scale("FIT", 1);
        FIT = scale2;
        Scale[] scaleArr = {scale, scale2};
        $VALUES = scaleArr;
        $ENTRIES = new EnumEntriesList(scaleArr);
    }

    public static Scale valueOf(String str) {
        return (Scale) Enum.valueOf(Scale.class, str);
    }

    public static Scale[] values() {
        return (Scale[]) $VALUES.clone();
    }
}
