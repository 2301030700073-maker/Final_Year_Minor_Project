package androidx.compose.material3;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnackbarResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SnackbarResult[] $VALUES;
    public static final SnackbarResult ActionPerformed;
    public static final SnackbarResult Dismissed;

    static {
        SnackbarResult snackbarResult = new SnackbarResult("Dismissed", 0);
        Dismissed = snackbarResult;
        SnackbarResult snackbarResult2 = new SnackbarResult("ActionPerformed", 1);
        ActionPerformed = snackbarResult2;
        SnackbarResult[] snackbarResultArr = {snackbarResult, snackbarResult2};
        $VALUES = snackbarResultArr;
        $ENTRIES = new EnumEntriesList(snackbarResultArr);
    }

    public static SnackbarResult valueOf(String str) {
        return (SnackbarResult) Enum.valueOf(SnackbarResult.class, str);
    }

    public static SnackbarResult[] values() {
        return (SnackbarResult[]) $VALUES.clone();
    }
}
