package org.wikipedia.widgets;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidgetTypes {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WidgetTypes[] $VALUES;
    public static final WidgetTypes FEATURED_ARTICLE;
    public static final WidgetTypes RANDOM_ARTICLE;
    public static final WidgetTypes READING_CHALLENGE;
    public static final WidgetTypes SEARCH;
    private final String value;

    static {
        WidgetTypes widgetTypes = new WidgetTypes(0, "SEARCH", "search");
        SEARCH = widgetTypes;
        WidgetTypes widgetTypes2 = new WidgetTypes(1, "FEATURED_ARTICLE", "featured_article");
        FEATURED_ARTICLE = widgetTypes2;
        WidgetTypes widgetTypes3 = new WidgetTypes(2, "READING_CHALLENGE", "reading_challenge");
        READING_CHALLENGE = widgetTypes3;
        WidgetTypes widgetTypes4 = new WidgetTypes(3, "RANDOM_ARTICLE", "random_article");
        RANDOM_ARTICLE = widgetTypes4;
        WidgetTypes[] widgetTypesArr = {widgetTypes, widgetTypes2, widgetTypes3, widgetTypes4};
        $VALUES = widgetTypesArr;
        $ENTRIES = new EnumEntriesList(widgetTypesArr);
    }

    public WidgetTypes(int i, String str, String str2) {
        this.value = str2;
    }

    public static WidgetTypes valueOf(String str) {
        return (WidgetTypes) Enum.valueOf(WidgetTypes.class, str);
    }

    public static WidgetTypes[] values() {
        return (WidgetTypes[]) $VALUES.clone();
    }

    public final String getValue() {
        return this.value;
    }
}
