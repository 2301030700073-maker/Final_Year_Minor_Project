package androidx.glance.unit;

import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FixedColorProvider implements ColorProvider {
    public final long color;

    public FixedColorProvider(long j) {
        this.color = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedColorProvider)) {
            return false;
        }
        long j = ((FixedColorProvider) obj).color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j);
    }

    @Override // androidx.glance.unit.ColorProvider
    /* renamed from: getColor-vNxB06k */
    public final long mo744getColorvNxB06k(Context context) {
        return this.color;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.color);
    }

    public final String toString() {
        return "FixedColorProvider(color=" + ((Object) Color.m434toStringimpl(this.color)) + ')';
    }
}
