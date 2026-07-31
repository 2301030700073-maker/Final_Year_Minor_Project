package app.k9mail.core.ui.compose.common.window;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FoldableState {
    public static final /* synthetic */ FoldableState[] $VALUES;
    public static final FoldableState UNFOLDED;
    public static final FoldableState UNKNOWN;

    /* JADX INFO: Fake field, exist only in values array */
    FoldableState EF0;

    static {
        FoldableState foldableState = new FoldableState("FOLDED", 0);
        FoldableState foldableState2 = new FoldableState("UNFOLDED", 1);
        UNFOLDED = foldableState2;
        FoldableState foldableState3 = new FoldableState("UNKNOWN", 2);
        UNKNOWN = foldableState3;
        $VALUES = new FoldableState[]{foldableState, foldableState2, foldableState3};
    }

    public static FoldableState valueOf(String str) {
        return (FoldableState) Enum.valueOf(FoldableState.class, str);
    }

    public static FoldableState[] values() {
        return (FoldableState[]) $VALUES.clone();
    }
}
