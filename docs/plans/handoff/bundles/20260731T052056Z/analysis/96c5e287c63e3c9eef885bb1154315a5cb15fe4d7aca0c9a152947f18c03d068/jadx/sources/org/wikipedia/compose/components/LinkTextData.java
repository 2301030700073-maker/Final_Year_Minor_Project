package org.wikipedia.compose.components;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkTextData {
    public final String asset;
    public final String text;
    public final String url;

    public LinkTextData(int i, String str, String str2, String str3) {
        str2 = (i & 2) != 0 ? null : str2;
        str3 = (i & 4) != 0 ? null : str3;
        this.text = str;
        this.url = str2;
        this.asset = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkTextData)) {
            return false;
        }
        LinkTextData linkTextData = (LinkTextData) obj;
        return this.text.equals(linkTextData.text) && Intrinsics.areEqual(this.url, linkTextData.url) && Intrinsics.areEqual(this.asset, linkTextData.asset);
    }

    public final int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        String str = this.url;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.asset;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return Animation.CC.m(Modifier.CC.m352m("LinkTextData(text=", this.text, ", url=", this.url, ", asset="), this.asset, ")");
    }
}
