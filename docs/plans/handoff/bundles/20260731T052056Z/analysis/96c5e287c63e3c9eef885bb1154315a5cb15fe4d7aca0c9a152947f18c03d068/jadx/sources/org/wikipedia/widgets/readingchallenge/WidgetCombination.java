package org.wikipedia.widgets.readingchallenge;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidgetCombination {
    public final long backgroundColor;
    public final long contentColor;
    public final int iconResId;
    public final Color progressColor;
    public final Integer subtitleResId;
    public final Integer titleResId;

    public WidgetCombination(int i, long j, long j2, Color color, Integer num, Integer num2, int i2) {
        color = (i2 & 8) != 0 ? null : color;
        num = (i2 & 16) != 0 ? null : num;
        num2 = (i2 & 32) != 0 ? null : num2;
        this.iconResId = i;
        this.backgroundColor = j;
        this.contentColor = j2;
        this.progressColor = color;
        this.titleResId = num;
        this.subtitleResId = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WidgetCombination)) {
            return false;
        }
        WidgetCombination widgetCombination = (WidgetCombination) obj;
        if (this.iconResId != widgetCombination.iconResId) {
            return false;
        }
        long j = widgetCombination.backgroundColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.backgroundColor, j) && ULong.m820equalsimpl0(this.contentColor, widgetCombination.contentColor) && Intrinsics.areEqual(this.progressColor, widgetCombination.progressColor) && Intrinsics.areEqual(this.titleResId, widgetCombination.titleResId) && Intrinsics.areEqual(this.subtitleResId, widgetCombination.subtitleResId);
    }

    public final int hashCode() {
        int i = this.iconResId * 31;
        int i2 = Color.$r8$clinit;
        int m = Animation.CC.m(Animation.CC.m(i, 31, this.backgroundColor), 31, this.contentColor);
        Color color = this.progressColor;
        int m2 = (m + (color == null ? 0 : Modifier.CC.m(color.value))) * 31;
        Integer num = this.titleResId;
        int hashCode = (m2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.subtitleResId;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "WidgetCombination(iconResId=" + this.iconResId + ", backgroundColor=" + Color.m434toStringimpl(this.backgroundColor) + ", contentColor=" + Color.m434toStringimpl(this.contentColor) + ", progressColor=" + this.progressColor + ", titleResId=" + this.titleResId + ", subtitleResId=" + this.subtitleResId + ")";
    }
}
