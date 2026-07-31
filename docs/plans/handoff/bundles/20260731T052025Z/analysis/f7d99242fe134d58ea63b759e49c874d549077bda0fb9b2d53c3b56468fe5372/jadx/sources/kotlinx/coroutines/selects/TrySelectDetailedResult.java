package kotlinx.coroutines.selects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrySelectDetailedResult {
    public static final /* synthetic */ TrySelectDetailedResult[] $VALUES;
    public static final TrySelectDetailedResult ALREADY_SELECTED;
    public static final TrySelectDetailedResult CANCELLED;
    public static final TrySelectDetailedResult REREGISTER;
    public static final TrySelectDetailedResult SUCCESSFUL;

    static {
        TrySelectDetailedResult trySelectDetailedResult = new TrySelectDetailedResult("SUCCESSFUL", 0);
        SUCCESSFUL = trySelectDetailedResult;
        TrySelectDetailedResult trySelectDetailedResult2 = new TrySelectDetailedResult("REREGISTER", 1);
        REREGISTER = trySelectDetailedResult2;
        TrySelectDetailedResult trySelectDetailedResult3 = new TrySelectDetailedResult("CANCELLED", 2);
        CANCELLED = trySelectDetailedResult3;
        TrySelectDetailedResult trySelectDetailedResult4 = new TrySelectDetailedResult("ALREADY_SELECTED", 3);
        ALREADY_SELECTED = trySelectDetailedResult4;
        $VALUES = new TrySelectDetailedResult[]{trySelectDetailedResult, trySelectDetailedResult2, trySelectDetailedResult3, trySelectDetailedResult4};
    }

    public static TrySelectDetailedResult valueOf(String str) {
        return (TrySelectDetailedResult) Enum.valueOf(TrySelectDetailedResult.class, str);
    }

    public static TrySelectDetailedResult[] values() {
        return (TrySelectDetailedResult[]) $VALUES.clone();
    }
}
