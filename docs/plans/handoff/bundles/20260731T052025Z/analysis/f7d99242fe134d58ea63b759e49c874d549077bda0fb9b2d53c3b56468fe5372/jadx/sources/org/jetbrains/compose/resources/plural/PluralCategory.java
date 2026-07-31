package org.jetbrains.compose.resources.plural;

import androidx.collection.internal.Lock;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PluralCategory {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ PluralCategory[] $VALUES;
    public static final Lock Companion;

    static {
        PluralCategory[] pluralCategoryArr = {new PluralCategory("ZERO", 0), new PluralCategory("ONE", 1), new PluralCategory("TWO", 2), new PluralCategory("FEW", 3), new PluralCategory("MANY", 4), new PluralCategory("OTHER", 5)};
        $VALUES = pluralCategoryArr;
        $ENTRIES = new EnumEntriesList(pluralCategoryArr);
        Companion = new Lock();
    }

    public static PluralCategory valueOf(String str) {
        return (PluralCategory) Enum.valueOf(PluralCategory.class, str);
    }

    public static PluralCategory[] values() {
        return (PluralCategory[]) $VALUES.clone();
    }
}
