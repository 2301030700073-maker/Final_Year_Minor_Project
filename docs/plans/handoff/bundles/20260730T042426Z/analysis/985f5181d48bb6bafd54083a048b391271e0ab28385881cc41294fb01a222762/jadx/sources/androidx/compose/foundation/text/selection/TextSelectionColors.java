package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextSelectionColors.kt */
/* loaded from: classes.dex */
public final class TextSelectionColors {
    private final long backgroundColor;
    private final long handleColor;

    public /* synthetic */ TextSelectionColors(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    private TextSelectionColors(long j, long j2) {
        this.handleColor = j;
        this.backgroundColor = j2;
    }

    /* renamed from: getHandleColor-0d7_KjU, reason: not valid java name */
    public final long m582getHandleColor0d7_KjU() {
        return this.handleColor;
    }

    /* renamed from: getBackgroundColor-0d7_KjU, reason: not valid java name */
    public final long m581getBackgroundColor0d7_KjU() {
        return this.backgroundColor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        return Color.m1304equalsimpl0(this.handleColor, textSelectionColors.handleColor) && Color.m1304equalsimpl0(this.backgroundColor, textSelectionColors.backgroundColor);
    }

    public int hashCode() {
        return (Color.m1310hashCodeimpl(this.handleColor) * 31) + Color.m1310hashCodeimpl(this.backgroundColor);
    }

    public String toString() {
        return "SelectionColors(selectionHandleColor=" + ((Object) Color.m1311toStringimpl(this.handleColor)) + ", selectionBackgroundColor=" + ((Object) Color.m1311toStringimpl(this.backgroundColor)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
