package org.wikipedia.theme;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;
import org.wikipedia.model.EnumCode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Theme implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Theme[] $VALUES;
    public static final Theme BLACK;
    public static final Companion Companion;
    public static final Theme DARK;
    public static final Theme LIGHT;
    public static final Theme SEPIA;
    private final int marshallingId;
    private final int nameId;
    private final int resourceId;
    private final String tag;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
    }

    static {
        Theme theme = new Theme("LIGHT", 0, 0, "light", 0, R.string.color_theme_light);
        LIGHT = theme;
        Theme theme2 = new Theme("DARK", 1, 1, "dark", R.style.ThemeDark, R.string.color_theme_dark);
        DARK = theme2;
        Theme theme3 = new Theme("BLACK", 2, 2, "black", R.style.ThemeBlack, R.string.color_theme_black);
        BLACK = theme3;
        Theme theme4 = new Theme("SEPIA", 3, 3, "sepia", R.style.ThemeSepia, R.string.color_theme_sepia);
        SEPIA = theme4;
        Theme[] themeArr = {theme, theme2, theme3, theme4};
        $VALUES = themeArr;
        $ENTRIES = new EnumEntriesList(themeArr);
        Companion = new Companion();
    }

    public Theme(String str, int i, int i2, String str2, int i3, int i4) {
        this.marshallingId = i2;
        this.tag = str2;
        this.resourceId = i3;
        this.nameId = i4;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Theme valueOf(String str) {
        return (Theme) Enum.valueOf(Theme.class, str);
    }

    public static Theme[] values() {
        return (Theme[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return this.marshallingId;
    }

    public final int getMarshallingId() {
        return this.marshallingId;
    }

    public final int getNameId() {
        return this.nameId;
    }

    public final int getResourceId() {
        return this.resourceId;
    }

    public final String getTag() {
        return this.tag;
    }

    public final boolean isDark() {
        return this == DARK || this == BLACK;
    }
}
