package net.thunderbird.feature.notification.api.ui.style;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarDuration {
    public static final /* synthetic */ SnackbarDuration[] $VALUES = {new SnackbarDuration("Short", 0), new SnackbarDuration("Long", 1), new SnackbarDuration("Indefinite", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    SnackbarDuration EF5;

    public static SnackbarDuration valueOf(String str) {
        return (SnackbarDuration) Enum.valueOf(SnackbarDuration.class, str);
    }

    public static SnackbarDuration[] values() {
        return (SnackbarDuration[]) $VALUES.clone();
    }
}
