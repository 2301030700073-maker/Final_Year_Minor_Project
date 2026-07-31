package com.fsck.k9.ui.settings.general;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarState {
    public static final /* synthetic */ SnackbarState[] $VALUES;
    public static final SnackbarState ExportLogFailure;
    public static final SnackbarState ExportLogSuccess;
    public static final SnackbarState Hidden;

    static {
        SnackbarState snackbarState = new SnackbarState("Hidden", 0);
        Hidden = snackbarState;
        SnackbarState snackbarState2 = new SnackbarState("ExportLogSuccess", 1);
        ExportLogSuccess = snackbarState2;
        SnackbarState snackbarState3 = new SnackbarState("ExportLogFailure", 2);
        ExportLogFailure = snackbarState3;
        $VALUES = new SnackbarState[]{snackbarState, snackbarState2, snackbarState3};
    }

    public static SnackbarState valueOf(String str) {
        return (SnackbarState) Enum.valueOf(SnackbarState.class, str);
    }

    public static SnackbarState[] values() {
        return (SnackbarState[]) $VALUES.clone();
    }
}
