package coil3.gif;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PixelOpacity {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PixelOpacity[] $VALUES;
    public static final PixelOpacity OPAQUE;
    public static final PixelOpacity TRANSLUCENT;
    public static final PixelOpacity UNCHANGED;

    static {
        PixelOpacity pixelOpacity = new PixelOpacity("UNCHANGED", 0);
        UNCHANGED = pixelOpacity;
        PixelOpacity pixelOpacity2 = new PixelOpacity("TRANSLUCENT", 1);
        TRANSLUCENT = pixelOpacity2;
        PixelOpacity pixelOpacity3 = new PixelOpacity("OPAQUE", 2);
        OPAQUE = pixelOpacity3;
        PixelOpacity[] pixelOpacityArr = {pixelOpacity, pixelOpacity2, pixelOpacity3};
        $VALUES = pixelOpacityArr;
        $ENTRIES = new EnumEntriesList(pixelOpacityArr);
    }

    public static PixelOpacity valueOf(String str) {
        return (PixelOpacity) Enum.valueOf(PixelOpacity.class, str);
    }

    public static PixelOpacity[] values() {
        return (PixelOpacity[]) $VALUES.clone();
    }
}
