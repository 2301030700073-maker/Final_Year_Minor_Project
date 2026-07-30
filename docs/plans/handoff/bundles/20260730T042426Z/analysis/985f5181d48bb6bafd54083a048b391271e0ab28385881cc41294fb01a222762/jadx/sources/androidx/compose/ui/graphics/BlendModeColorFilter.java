package androidx.compose.ui.graphics;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ColorFilter.kt */
/* loaded from: classes.dex */
public final class BlendModeColorFilter extends ColorFilter {
    private final int blendMode;
    private final long color;

    public /* synthetic */ BlendModeColorFilter(long j, int i, android.graphics.ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, i, colorFilter);
    }

    public /* synthetic */ BlendModeColorFilter(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, i);
    }

    /* renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m1286getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    private BlendModeColorFilter(long j, int i, android.graphics.ColorFilter colorFilter) {
        super(colorFilter);
        this.color = j;
        this.blendMode = i;
    }

    private BlendModeColorFilter(long j, int i) {
        this(j, i, AndroidColorFilter_androidKt.m1224actualTintColorFilterxETnrds(j, i), null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        return Color.m1304equalsimpl0(this.color, blendModeColorFilter.color) && BlendMode.m1254equalsimpl0(this.blendMode, blendModeColorFilter.blendMode);
    }

    public int hashCode() {
        return (Color.m1310hashCodeimpl(this.color) * 31) + BlendMode.m1255hashCodeimpl(this.blendMode);
    }

    public String toString() {
        return "BlendModeColorFilter(color=" + ((Object) Color.m1311toStringimpl(this.color)) + ", blendMode=" + ((Object) BlendMode.m1256toStringimpl(this.blendMode)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
