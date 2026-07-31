package coil3.gif;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PixelOpacity {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PixelOpacity[] $VALUES;
    public static final PixelOpacity UNCHANGED = new PixelOpacity("UNCHANGED", 0);
    public static final PixelOpacity TRANSLUCENT = new PixelOpacity("TRANSLUCENT", 1);
    public static final PixelOpacity OPAQUE = new PixelOpacity("OPAQUE", 2);

    private static final /* synthetic */ PixelOpacity[] $values() {
        return new PixelOpacity[]{UNCHANGED, TRANSLUCENT, OPAQUE};
    }

    static {
        PixelOpacity[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private PixelOpacity(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static PixelOpacity valueOf(String str) {
        return (PixelOpacity) Enum.valueOf(PixelOpacity.class, str);
    }

    public static PixelOpacity[] values() {
        return (PixelOpacity[]) $VALUES.clone();
    }
}
