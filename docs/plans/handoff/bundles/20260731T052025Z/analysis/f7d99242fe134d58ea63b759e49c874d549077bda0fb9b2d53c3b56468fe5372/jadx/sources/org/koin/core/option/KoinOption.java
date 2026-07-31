package org.koin.core.option;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KoinOption {
    public static final /* synthetic */ KoinOption[] $VALUES;
    public static final KoinOption VIEWMODEL_SCOPE_FACTORY;

    static {
        KoinOption koinOption = new KoinOption("VIEWMODEL_SCOPE_FACTORY", 0);
        VIEWMODEL_SCOPE_FACTORY = koinOption;
        $VALUES = new KoinOption[]{koinOption};
    }

    public static KoinOption valueOf(String str) {
        return (KoinOption) Enum.valueOf(KoinOption.class, str);
    }

    public static KoinOption[] values() {
        return (KoinOption[]) $VALUES.clone();
    }
}
