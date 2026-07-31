package org.wikipedia.categories.db;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Category {
    public final int count;
    public final String lang;
    public final int month;
    public final String title;
    public final int year;

    public Category(int i, int i2, int i3, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.year = i;
        this.month = i2;
        this.title = str;
        this.lang = str2;
        this.count = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Category)) {
            return false;
        }
        Category category = (Category) obj;
        return this.year == category.year && this.month == category.month && Intrinsics.areEqual(this.title, category.title) && Intrinsics.areEqual(this.lang, category.lang) && this.count == category.count;
    }

    public final int hashCode() {
        return Animation.CC.m(Animation.CC.m(((this.year * 31) + this.month) * 31, 31, this.title), 31, this.lang) + this.count;
    }

    public final String toString() {
        StringBuilder m = Animation.CC.m(this.year, this.month, "Category(year=", ", month=", ", title=");
        Modifier.CC.m(m, this.title, ", lang=", this.lang, ", count=");
        return Modifier.CC.m(m, this.count, ")");
    }
}
