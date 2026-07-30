package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.graphics.Color;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ContextMenuUi.android.kt */
/* loaded from: classes.dex */
public final class ContextMenuColors {
    private final long backgroundColor;
    private final long disabledIconColor;
    private final long disabledTextColor;
    private final long iconColor;
    private final long textColor;

    public /* synthetic */ ContextMenuColors(long j, long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5);
    }

    private ContextMenuColors(long j, long j2, long j3, long j4, long j5) {
        this.backgroundColor = j;
        this.textColor = j2;
        this.iconColor = j3;
        this.disabledTextColor = j4;
        this.disabledIconColor = j5;
    }

    /* renamed from: getBackgroundColor-0d7_KjU, reason: not valid java name */
    public final long m148getBackgroundColor0d7_KjU() {
        return this.backgroundColor;
    }

    /* renamed from: getTextColor-0d7_KjU, reason: not valid java name */
    public final long m152getTextColor0d7_KjU() {
        return this.textColor;
    }

    /* renamed from: getIconColor-0d7_KjU, reason: not valid java name */
    public final long m151getIconColor0d7_KjU() {
        return this.iconColor;
    }

    /* renamed from: getDisabledTextColor-0d7_KjU, reason: not valid java name */
    public final long m150getDisabledTextColor0d7_KjU() {
        return this.disabledTextColor;
    }

    /* renamed from: getDisabledIconColor-0d7_KjU, reason: not valid java name */
    public final long m149getDisabledIconColor0d7_KjU() {
        return this.disabledIconColor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextMenuColors)) {
            return false;
        }
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
        return Color.m1304equalsimpl0(this.backgroundColor, contextMenuColors.backgroundColor) && Color.m1304equalsimpl0(this.textColor, contextMenuColors.textColor) && Color.m1304equalsimpl0(this.iconColor, contextMenuColors.iconColor) && Color.m1304equalsimpl0(this.disabledTextColor, contextMenuColors.disabledTextColor) && Color.m1304equalsimpl0(this.disabledIconColor, contextMenuColors.disabledIconColor);
    }

    public int hashCode() {
        return (((((((Color.m1310hashCodeimpl(this.backgroundColor) * 31) + Color.m1310hashCodeimpl(this.textColor)) * 31) + Color.m1310hashCodeimpl(this.iconColor)) * 31) + Color.m1310hashCodeimpl(this.disabledTextColor)) * 31) + Color.m1310hashCodeimpl(this.disabledIconColor);
    }

    public String toString() {
        return "ContextMenuColors(backgroundColor=" + ((Object) Color.m1311toStringimpl(this.backgroundColor)) + ", textColor=" + ((Object) Color.m1311toStringimpl(this.textColor)) + ", iconColor=" + ((Object) Color.m1311toStringimpl(this.iconColor)) + ", disabledTextColor=" + ((Object) Color.m1311toStringimpl(this.disabledTextColor)) + ", disabledIconColor=" + ((Object) Color.m1311toStringimpl(this.disabledIconColor)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
