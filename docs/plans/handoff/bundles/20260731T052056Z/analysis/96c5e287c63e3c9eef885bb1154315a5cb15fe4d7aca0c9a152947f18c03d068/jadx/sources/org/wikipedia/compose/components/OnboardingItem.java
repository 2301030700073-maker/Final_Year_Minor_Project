package org.wikipedia.compose.components;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnboardingItem {
    public final int icon;
    public final int subTitle;
    public final String subtitleString;
    public final int title;

    public OnboardingItem(int i, int i2, int i3, int i4, String str) {
        i3 = (i4 & 4) != 0 ? 0 : i3;
        str = (i4 & 8) != 0 ? null : str;
        this.icon = i;
        this.title = i2;
        this.subTitle = i3;
        this.subtitleString = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnboardingItem)) {
            return false;
        }
        OnboardingItem onboardingItem = (OnboardingItem) obj;
        return this.icon == onboardingItem.icon && this.title == onboardingItem.title && this.subTitle == onboardingItem.subTitle && Intrinsics.areEqual(this.subtitleString, onboardingItem.subtitleString);
    }

    public final int hashCode() {
        int i = ((((this.icon * 31) + this.title) * 31) + this.subTitle) * 31;
        String str = this.subtitleString;
        return i + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder m = Animation.CC.m(this.icon, this.title, "OnboardingItem(icon=", ", title=", ", subTitle=");
        m.append(this.subTitle);
        m.append(", subtitleString=");
        m.append(this.subtitleString);
        m.append(")");
        return m.toString();
    }
}
