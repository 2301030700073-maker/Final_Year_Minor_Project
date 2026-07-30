package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Card.kt */
/* loaded from: classes.dex */
public final class CardColors {
    private final long containerColor;
    private final long contentColor;
    private final long disabledContainerColor;
    private final long disabledContentColor;

    public /* synthetic */ CardColors(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    private CardColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    /* renamed from: containerColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m621containerColorvNxB06k$material3_release(boolean z) {
        return z ? this.containerColor : this.disabledContainerColor;
    }

    /* renamed from: contentColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m622contentColorvNxB06k$material3_release(boolean z) {
        return z ? this.contentColor : this.disabledContentColor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CardColors)) {
            return false;
        }
        CardColors cardColors = (CardColors) obj;
        return Color.m1304equalsimpl0(this.containerColor, cardColors.containerColor) && Color.m1304equalsimpl0(this.contentColor, cardColors.contentColor) && Color.m1304equalsimpl0(this.disabledContainerColor, cardColors.disabledContainerColor) && Color.m1304equalsimpl0(this.disabledContentColor, cardColors.disabledContentColor);
    }

    public int hashCode() {
        return (((((Color.m1310hashCodeimpl(this.containerColor) * 31) + Color.m1310hashCodeimpl(this.contentColor)) * 31) + Color.m1310hashCodeimpl(this.disabledContainerColor)) * 31) + Color.m1310hashCodeimpl(this.disabledContentColor);
    }
}
