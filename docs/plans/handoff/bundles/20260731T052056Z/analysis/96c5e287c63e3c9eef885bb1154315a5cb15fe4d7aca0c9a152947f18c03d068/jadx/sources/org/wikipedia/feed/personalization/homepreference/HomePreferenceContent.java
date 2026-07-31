package org.wikipedia.feed.personalization.homepreference;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomePreferenceContent {
    public final String description;
    public final String imageUrl;
    public final String tag;
    public final String title;

    public HomePreferenceContent(String str, String str2, String str3, String str4) {
        this.title = str;
        this.description = str2;
        this.imageUrl = str3;
        this.tag = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HomePreferenceContent)) {
            return false;
        }
        HomePreferenceContent homePreferenceContent = (HomePreferenceContent) obj;
        return Intrinsics.areEqual(this.title, homePreferenceContent.title) && Intrinsics.areEqual(this.description, homePreferenceContent.description) && Intrinsics.areEqual(this.imageUrl, homePreferenceContent.imageUrl) && Intrinsics.areEqual(this.tag, homePreferenceContent.tag);
    }

    public final int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.imageUrl;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.tag;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m352m = Modifier.CC.m352m("HomePreferenceContent(title=", this.title, ", description=", this.description, ", imageUrl=");
        m352m.append(this.imageUrl);
        m352m.append(", tag=");
        m352m.append(this.tag);
        m352m.append(")");
        return m352m.toString();
    }
}
