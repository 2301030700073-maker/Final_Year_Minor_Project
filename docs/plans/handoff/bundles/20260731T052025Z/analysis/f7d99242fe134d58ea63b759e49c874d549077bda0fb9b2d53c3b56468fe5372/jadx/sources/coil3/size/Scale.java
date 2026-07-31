package coil3.size;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Scale {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Scale[] $VALUES;
    public static final Scale FILL = new Scale("FILL", 0);
    public static final Scale FIT = new Scale("FIT", 1);

    private static final /* synthetic */ Scale[] $values() {
        return new Scale[]{FILL, FIT};
    }

    static {
        Scale[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private Scale(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Scale valueOf(String str) {
        return (Scale) Enum.valueOf(Scale.class, str);
    }

    public static Scale[] values() {
        return (Scale[]) $VALUES.clone();
    }
}
