package androidx.compose.material3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SheetValue {
    public static final /* synthetic */ SheetValue[] $VALUES;
    public static final SheetValue Expanded;
    public static final SheetValue Hidden;
    public static final SheetValue PartiallyExpanded;

    static {
        SheetValue sheetValue = new SheetValue("Hidden", 0);
        Hidden = sheetValue;
        SheetValue sheetValue2 = new SheetValue("Expanded", 1);
        Expanded = sheetValue2;
        SheetValue sheetValue3 = new SheetValue("PartiallyExpanded", 2);
        PartiallyExpanded = sheetValue3;
        $VALUES = new SheetValue[]{sheetValue, sheetValue2, sheetValue3};
    }

    public static SheetValue valueOf(String str) {
        return (SheetValue) Enum.valueOf(SheetValue.class, str);
    }

    public static SheetValue[] values() {
        return (SheetValue[]) $VALUES.clone();
    }
}
