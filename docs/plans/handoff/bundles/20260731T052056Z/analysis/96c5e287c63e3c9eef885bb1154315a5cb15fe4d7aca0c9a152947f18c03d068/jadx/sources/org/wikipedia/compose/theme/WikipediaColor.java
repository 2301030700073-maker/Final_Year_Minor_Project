package org.wikipedia.compose.theme;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikipediaColor {
    public final long additionColor;
    public final long backgroundColor;
    public final long borderColor;
    public final long destructiveColor;
    public final long focusColor;
    public final long highlightColor;
    public final long inactiveColor;
    public final boolean isDarkTheme;
    public final long overlayColor;
    public final long paperColor;
    public final long placeholderColor;
    public final long primaryColor;
    public final long progressiveColor;
    public final long secondaryColor;
    public final long successColor;
    public final long warningColor;

    public WikipediaColor(boolean z, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15) {
        this.isDarkTheme = z;
        this.primaryColor = j;
        this.paperColor = j2;
        this.backgroundColor = j3;
        this.inactiveColor = j4;
        this.placeholderColor = j5;
        this.secondaryColor = j6;
        this.borderColor = j7;
        this.progressiveColor = j8;
        this.successColor = j9;
        this.destructiveColor = j10;
        this.warningColor = j11;
        this.highlightColor = j12;
        this.focusColor = j13;
        this.additionColor = j14;
        this.overlayColor = j15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WikipediaColor)) {
            return false;
        }
        WikipediaColor wikipediaColor = (WikipediaColor) obj;
        if (this.isDarkTheme != wikipediaColor.isDarkTheme) {
            return false;
        }
        long j = wikipediaColor.primaryColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.primaryColor, j) && ULong.m820equalsimpl0(this.paperColor, wikipediaColor.paperColor) && ULong.m820equalsimpl0(this.backgroundColor, wikipediaColor.backgroundColor) && ULong.m820equalsimpl0(this.inactiveColor, wikipediaColor.inactiveColor) && ULong.m820equalsimpl0(this.placeholderColor, wikipediaColor.placeholderColor) && ULong.m820equalsimpl0(this.secondaryColor, wikipediaColor.secondaryColor) && ULong.m820equalsimpl0(this.borderColor, wikipediaColor.borderColor) && ULong.m820equalsimpl0(this.progressiveColor, wikipediaColor.progressiveColor) && ULong.m820equalsimpl0(this.successColor, wikipediaColor.successColor) && ULong.m820equalsimpl0(this.destructiveColor, wikipediaColor.destructiveColor) && ULong.m820equalsimpl0(this.warningColor, wikipediaColor.warningColor) && ULong.m820equalsimpl0(this.highlightColor, wikipediaColor.highlightColor) && ULong.m820equalsimpl0(this.focusColor, wikipediaColor.focusColor) && ULong.m820equalsimpl0(this.additionColor, wikipediaColor.additionColor) && ULong.m820equalsimpl0(this.overlayColor, wikipediaColor.overlayColor);
    }

    public final int hashCode() {
        int i = this.isDarkTheme ? 1231 : 1237;
        int i2 = Color.$r8$clinit;
        return Modifier.CC.m(this.overlayColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(i * 31, 31, this.primaryColor), 31, this.paperColor), 31, this.backgroundColor), 31, this.inactiveColor), 31, this.placeholderColor), 31, this.secondaryColor), 31, this.borderColor), 31, this.progressiveColor), 31, this.successColor), 31, this.destructiveColor), 31, this.warningColor), 31, this.highlightColor), 31, this.focusColor), 31, this.additionColor);
    }

    public final String toString() {
        String m434toStringimpl = Color.m434toStringimpl(this.primaryColor);
        String m434toStringimpl2 = Color.m434toStringimpl(this.paperColor);
        String m434toStringimpl3 = Color.m434toStringimpl(this.backgroundColor);
        String m434toStringimpl4 = Color.m434toStringimpl(this.inactiveColor);
        String m434toStringimpl5 = Color.m434toStringimpl(this.placeholderColor);
        String m434toStringimpl6 = Color.m434toStringimpl(this.secondaryColor);
        String m434toStringimpl7 = Color.m434toStringimpl(this.borderColor);
        String m434toStringimpl8 = Color.m434toStringimpl(this.progressiveColor);
        String m434toStringimpl9 = Color.m434toStringimpl(this.successColor);
        String m434toStringimpl10 = Color.m434toStringimpl(this.destructiveColor);
        String m434toStringimpl11 = Color.m434toStringimpl(this.warningColor);
        String m434toStringimpl12 = Color.m434toStringimpl(this.highlightColor);
        String m434toStringimpl13 = Color.m434toStringimpl(this.focusColor);
        String m434toStringimpl14 = Color.m434toStringimpl(this.additionColor);
        String m434toStringimpl15 = Color.m434toStringimpl(this.overlayColor);
        StringBuilder sb = new StringBuilder("WikipediaColor(isDarkTheme=");
        sb.append(this.isDarkTheme);
        sb.append(", primaryColor=");
        sb.append(m434toStringimpl);
        sb.append(", paperColor=");
        Modifier.CC.m(sb, m434toStringimpl2, ", backgroundColor=", m434toStringimpl3, ", inactiveColor=");
        Modifier.CC.m(sb, m434toStringimpl4, ", placeholderColor=", m434toStringimpl5, ", secondaryColor=");
        Modifier.CC.m(sb, m434toStringimpl6, ", borderColor=", m434toStringimpl7, ", progressiveColor=");
        Modifier.CC.m(sb, m434toStringimpl8, ", successColor=", m434toStringimpl9, ", destructiveColor=");
        Modifier.CC.m(sb, m434toStringimpl10, ", warningColor=", m434toStringimpl11, ", highlightColor=");
        Modifier.CC.m(sb, m434toStringimpl12, ", focusColor=", m434toStringimpl13, ", additionColor=");
        sb.append(m434toStringimpl14);
        sb.append(", overlayColor=");
        sb.append(m434toStringimpl15);
        sb.append(")");
        return sb.toString();
    }
}
