package org.wikipedia.feed.personalization;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersonalizationPage {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PersonalizationPage[] $VALUES;
    public static final PersonalizationPage CURIOSITY;
    public static final PersonalizationPage HOME_PREFERENCE;
    public static final PersonalizationPage INTERESTS;

    static {
        PersonalizationPage personalizationPage = new PersonalizationPage("CURIOSITY", 0);
        CURIOSITY = personalizationPage;
        PersonalizationPage personalizationPage2 = new PersonalizationPage("INTERESTS", 1);
        INTERESTS = personalizationPage2;
        PersonalizationPage personalizationPage3 = new PersonalizationPage("HOME_PREFERENCE", 2);
        HOME_PREFERENCE = personalizationPage3;
        PersonalizationPage[] personalizationPageArr = {personalizationPage, personalizationPage2, personalizationPage3};
        $VALUES = personalizationPageArr;
        $ENTRIES = new EnumEntriesList(personalizationPageArr);
    }

    public static PersonalizationPage valueOf(String str) {
        return (PersonalizationPage) Enum.valueOf(PersonalizationPage.class, str);
    }

    public static PersonalizationPage[] values() {
        return (PersonalizationPage[]) $VALUES.clone();
    }
}
