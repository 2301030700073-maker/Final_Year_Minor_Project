package org.koin.core.option;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
