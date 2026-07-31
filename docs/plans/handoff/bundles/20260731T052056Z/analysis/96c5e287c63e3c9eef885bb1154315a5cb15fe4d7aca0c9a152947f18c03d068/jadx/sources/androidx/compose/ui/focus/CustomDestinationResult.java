package androidx.compose.ui.focus;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomDestinationResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CustomDestinationResult[] $VALUES;
    public static final CustomDestinationResult Cancelled;
    public static final CustomDestinationResult None;
    public static final CustomDestinationResult RedirectCancelled;
    public static final CustomDestinationResult Redirected;

    static {
        CustomDestinationResult customDestinationResult = new CustomDestinationResult("None", 0);
        None = customDestinationResult;
        CustomDestinationResult customDestinationResult2 = new CustomDestinationResult("Cancelled", 1);
        Cancelled = customDestinationResult2;
        CustomDestinationResult customDestinationResult3 = new CustomDestinationResult("Redirected", 2);
        Redirected = customDestinationResult3;
        CustomDestinationResult customDestinationResult4 = new CustomDestinationResult("RedirectCancelled", 3);
        RedirectCancelled = customDestinationResult4;
        CustomDestinationResult[] customDestinationResultArr = {customDestinationResult, customDestinationResult2, customDestinationResult3, customDestinationResult4};
        $VALUES = customDestinationResultArr;
        $ENTRIES = new EnumEntriesList(customDestinationResultArr);
    }

    public static CustomDestinationResult valueOf(String str) {
        return (CustomDestinationResult) Enum.valueOf(CustomDestinationResult.class, str);
    }

    public static CustomDestinationResult[] values() {
        return (CustomDestinationResult[]) $VALUES.clone();
    }
}
