package org.wikipedia.language;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LangLinksItem {
    public final String articleName;
    public final String canonicalName;
    public final String headerText;
    public final String languageCode;
    public final String localizedName;
    public final PageTitle pageTitle;
    public final String subtitle;

    public LangLinksItem(PageTitle pageTitle, String str, String str2, String str3, String str4, String str5, int i) {
        pageTitle = (i & 1) != 0 ? null : pageTitle;
        str = (i & 2) != 0 ? "" : str;
        str2 = (i & 4) != 0 ? "" : str2;
        str3 = (i & 8) != 0 ? "" : str3;
        str4 = (i & 16) != 0 ? null : str4;
        str5 = (i & 64) != 0 ? "" : str5;
        str2.getClass();
        str3.getClass();
        this.pageTitle = pageTitle;
        this.articleName = str;
        this.languageCode = str2;
        this.localizedName = str3;
        this.canonicalName = str4;
        this.subtitle = "";
        this.headerText = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LangLinksItem)) {
            return false;
        }
        LangLinksItem langLinksItem = (LangLinksItem) obj;
        return Intrinsics.areEqual(this.pageTitle, langLinksItem.pageTitle) && this.articleName.equals(langLinksItem.articleName) && this.languageCode.equals(langLinksItem.languageCode) && this.localizedName.equals(langLinksItem.localizedName) && Intrinsics.areEqual(this.canonicalName, langLinksItem.canonicalName) && this.subtitle.equals(langLinksItem.subtitle) && this.headerText.equals(langLinksItem.headerText);
    }

    public final int hashCode() {
        PageTitle pageTitle = this.pageTitle;
        int m = Animation.CC.m(Animation.CC.m(Animation.CC.m((pageTitle == null ? 0 : pageTitle.hashCode()) * 31, 31, this.articleName), 31, this.languageCode), 31, this.localizedName);
        String str = this.canonicalName;
        return this.headerText.hashCode() + Animation.CC.m((m + (str != null ? str.hashCode() : 0)) * 31, 31, this.subtitle);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LangLinksItem(pageTitle=");
        sb.append(this.pageTitle);
        sb.append(", articleName=");
        sb.append(this.articleName);
        sb.append(", languageCode=");
        Modifier.CC.m(sb, this.languageCode, ", localizedName=", this.localizedName, ", canonicalName=");
        Modifier.CC.m(sb, this.canonicalName, ", subtitle=", this.subtitle, ", headerText=");
        return Animation.CC.m(sb, this.headerText, ")");
    }
}
