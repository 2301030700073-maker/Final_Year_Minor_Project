package org.wikipedia.language.addlanguages;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LanguageListItem {
    public final String canonicalName;
    public final String code;
    public final String headerText;
    public final String localizedName;

    public LanguageListItem(int i, String str, String str2, String str3, String str4) {
        str2 = (i & 2) != 0 ? "" : str2;
        str3 = (i & 4) != 0 ? "" : str3;
        str4 = (i & 8) != 0 ? "" : str4;
        str.getClass();
        this.code = str;
        this.localizedName = str2;
        this.canonicalName = str3;
        this.headerText = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LanguageListItem)) {
            return false;
        }
        LanguageListItem languageListItem = (LanguageListItem) obj;
        return Intrinsics.areEqual(this.code, languageListItem.code) && this.localizedName.equals(languageListItem.localizedName) && this.canonicalName.equals(languageListItem.canonicalName) && this.headerText.equals(languageListItem.headerText);
    }

    public final int hashCode() {
        return this.headerText.hashCode() + Animation.CC.m(Animation.CC.m(this.code.hashCode() * 31, 31, this.localizedName), 31, this.canonicalName);
    }

    public final String toString() {
        StringBuilder m352m = Modifier.CC.m352m("LanguageListItem(code=", this.code, ", localizedName=", this.localizedName, ", canonicalName=");
        m352m.append(this.canonicalName);
        m352m.append(", headerText=");
        m352m.append(this.headerText);
        m352m.append(")");
        return m352m.toString();
    }
}
