package org.wikipedia.feed;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CardVariation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardVariation[] $VALUES;
    public static final CardVariation VARIATION_IMAGE_WITH_DESCRIPTION;
    public static final CardVariation VARIATION_IMAGE_WITH_EXTRACT;
    public static final CardVariation VARIATION_TEXT_ONLY;

    static {
        CardVariation cardVariation = new CardVariation("VARIATION_IMAGE_WITH_EXTRACT", 0);
        VARIATION_IMAGE_WITH_EXTRACT = cardVariation;
        CardVariation cardVariation2 = new CardVariation("VARIATION_IMAGE_WITH_DESCRIPTION", 1);
        VARIATION_IMAGE_WITH_DESCRIPTION = cardVariation2;
        CardVariation cardVariation3 = new CardVariation("VARIATION_TEXT_ONLY", 2);
        VARIATION_TEXT_ONLY = cardVariation3;
        CardVariation[] cardVariationArr = {cardVariation, cardVariation2, cardVariation3};
        $VALUES = cardVariationArr;
        $ENTRIES = new EnumEntriesList(cardVariationArr);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static CardVariation valueOf(String str) {
        return (CardVariation) Enum.valueOf(CardVariation.class, str);
    }

    public static CardVariation[] values() {
        return (CardVariation[]) $VALUES.clone();
    }
}
