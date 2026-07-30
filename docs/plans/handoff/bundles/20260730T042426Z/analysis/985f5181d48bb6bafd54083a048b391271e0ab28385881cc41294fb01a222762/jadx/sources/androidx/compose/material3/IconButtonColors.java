package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: IconButton.kt */
/* loaded from: classes.dex */
public final class IconButtonColors {
    private final long containerColor;
    private final long contentColor;
    private final long disabledContainerColor;
    private final long disabledContentColor;

    public /* synthetic */ IconButtonColors(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    private IconButtonColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    /* renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m696getContentColor0d7_KjU() {
        return this.contentColor;
    }

    /* renamed from: copy-jRlVdoo, reason: not valid java name */
    public final IconButtonColors m695copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new IconButtonColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.disabledContainerColor, j4 != 16 ? j4 : this.disabledContentColor, null);
    }

    /* renamed from: containerColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m693containerColorvNxB06k$material3_release(boolean z) {
        return z ? this.containerColor : this.disabledContainerColor;
    }

    /* renamed from: contentColor-vNxB06k$material3_release, reason: not valid java name */
    public final long m694contentColorvNxB06k$material3_release(boolean z) {
        return z ? this.contentColor : this.disabledContentColor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IconButtonColors)) {
            return false;
        }
        IconButtonColors iconButtonColors = (IconButtonColors) obj;
        return Color.m1304equalsimpl0(this.containerColor, iconButtonColors.containerColor) && Color.m1304equalsimpl0(this.contentColor, iconButtonColors.contentColor) && Color.m1304equalsimpl0(this.disabledContainerColor, iconButtonColors.disabledContainerColor) && Color.m1304equalsimpl0(this.disabledContentColor, iconButtonColors.disabledContentColor);
    }

    public int hashCode() {
        return (((((Color.m1310hashCodeimpl(this.containerColor) * 31) + Color.m1310hashCodeimpl(this.contentColor)) * 31) + Color.m1310hashCodeimpl(this.disabledContainerColor)) * 31) + Color.m1310hashCodeimpl(this.disabledContentColor);
    }
}
