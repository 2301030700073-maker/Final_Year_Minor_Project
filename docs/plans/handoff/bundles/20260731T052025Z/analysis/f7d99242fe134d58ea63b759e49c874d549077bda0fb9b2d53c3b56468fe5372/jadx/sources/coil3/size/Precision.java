package coil3.size;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Precision {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Precision[] $VALUES;
    public static final Precision EXACT = new Precision("EXACT", 0);
    public static final Precision INEXACT = new Precision("INEXACT", 1);

    private static final /* synthetic */ Precision[] $values() {
        return new Precision[]{EXACT, INEXACT};
    }

    static {
        Precision[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private Precision(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Precision valueOf(String str) {
        return (Precision) Enum.valueOf(Precision.class, str);
    }

    public static Precision[] values() {
        return (Precision[]) $VALUES.clone();
    }
}
