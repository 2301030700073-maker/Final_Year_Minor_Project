package org.wikipedia.onboarding;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnboardingScreen {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnboardingScreen[] $VALUES;
    public static final OnboardingScreen DATA_PRIVACY;
    public static final OnboardingScreen INTRO;
    public static final OnboardingScreen LANGUAGES;

    static {
        OnboardingScreen onboardingScreen = new OnboardingScreen("INTRO", 0);
        INTRO = onboardingScreen;
        OnboardingScreen onboardingScreen2 = new OnboardingScreen("DATA_PRIVACY", 1);
        DATA_PRIVACY = onboardingScreen2;
        OnboardingScreen onboardingScreen3 = new OnboardingScreen("LANGUAGES", 2);
        LANGUAGES = onboardingScreen3;
        OnboardingScreen[] onboardingScreenArr = {onboardingScreen, onboardingScreen2, onboardingScreen3};
        $VALUES = onboardingScreenArr;
        $ENTRIES = new EnumEntriesList(onboardingScreenArr);
    }

    public static OnboardingScreen valueOf(String str) {
        return (OnboardingScreen) Enum.valueOf(OnboardingScreen.class, str);
    }

    public static OnboardingScreen[] values() {
        return (OnboardingScreen[]) $VALUES.clone();
    }
}
