package app.k9mail.core.ui.compose.designsystem.template;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScaffoldFabPosition {
    public static final /* synthetic */ ScaffoldFabPosition[] $VALUES;
    public static final ScaffoldFabPosition End;

    /* JADX INFO: Fake field, exist only in values array */
    ScaffoldFabPosition EF0;

    static {
        ScaffoldFabPosition scaffoldFabPosition = new ScaffoldFabPosition("Start", 0);
        ScaffoldFabPosition scaffoldFabPosition2 = new ScaffoldFabPosition("Center", 1);
        ScaffoldFabPosition scaffoldFabPosition3 = new ScaffoldFabPosition("End", 2);
        End = scaffoldFabPosition3;
        $VALUES = new ScaffoldFabPosition[]{scaffoldFabPosition, scaffoldFabPosition2, scaffoldFabPosition3, new ScaffoldFabPosition("EndOverlay", 3)};
    }

    public static ScaffoldFabPosition valueOf(String str) {
        return (ScaffoldFabPosition) Enum.valueOf(ScaffoldFabPosition.class, str);
    }

    public static ScaffoldFabPosition[] values() {
        return (ScaffoldFabPosition[]) $VALUES.clone();
    }
}
