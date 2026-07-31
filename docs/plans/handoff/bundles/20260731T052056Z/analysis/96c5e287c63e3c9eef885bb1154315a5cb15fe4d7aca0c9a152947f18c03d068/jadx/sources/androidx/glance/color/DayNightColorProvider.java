package androidx.glance.color;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.glance.unit.ColorProvider;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DayNightColorProvider implements ColorProvider {
    public final long day;
    public final long night;

    public DayNightColorProvider(long j, long j2) {
        this.day = j;
        this.night = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DayNightColorProvider)) {
            return false;
        }
        DayNightColorProvider dayNightColorProvider = (DayNightColorProvider) obj;
        long j = dayNightColorProvider.day;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.day, j) && ULong.m820equalsimpl0(this.night, dayNightColorProvider.night);
    }

    @Override // androidx.glance.unit.ColorProvider
    /* renamed from: getColor-vNxB06k, reason: not valid java name */
    public final long mo744getColorvNxB06k(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32 ? this.night : this.day;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.night) + (Modifier.CC.m(this.day) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DayNightColorProvider(day=");
        Animation.CC.m(this.day, sb, ", night=");
        sb.append((Object) Color.m434toStringimpl(this.night));
        sb.append(')');
        return sb.toString();
    }
}
