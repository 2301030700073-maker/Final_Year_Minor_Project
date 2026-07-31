package org.jetbrains.compose.resources.plural;

import kotlin.enums.EnumEntriesList;
import okio.Path;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PluralCategory {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ PluralCategory[] $VALUES;
    public static final Path.Companion Companion;

    static {
        PluralCategory[] pluralCategoryArr = {new PluralCategory("ZERO", 0), new PluralCategory("ONE", 1), new PluralCategory("TWO", 2), new PluralCategory("FEW", 3), new PluralCategory("MANY", 4), new PluralCategory("OTHER", 5)};
        $VALUES = pluralCategoryArr;
        $ENTRIES = new EnumEntriesList(pluralCategoryArr);
        Companion = new Path.Companion(9);
    }

    public static PluralCategory valueOf(String str) {
        return (PluralCategory) Enum.valueOf(PluralCategory.class, str);
    }

    public static PluralCategory[] values() {
        return (PluralCategory[]) $VALUES.clone();
    }
}
