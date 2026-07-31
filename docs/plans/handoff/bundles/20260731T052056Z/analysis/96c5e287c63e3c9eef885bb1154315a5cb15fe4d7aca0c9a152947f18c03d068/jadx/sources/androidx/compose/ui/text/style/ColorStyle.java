package androidx.compose.ui.text.style;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.TextForegroundStyle;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ColorStyle implements TextForegroundStyle {
    public final long value;

    public ColorStyle(long j) {
        this.value = j;
        if (j != 16) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorStyle)) {
            return false;
        }
        long j = ((ColorStyle) obj).value;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.value, j);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final float getAlpha() {
        return Color.m429getAlphaimpl(this.value);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final Brush getBrush() {
        return null;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    /* renamed from: getColor-0d7_KjU */
    public final long mo667getColor0d7_KjU() {
        return this.value;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.value);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final /* synthetic */ TextForegroundStyle merge(TextForegroundStyle textForegroundStyle) {
        return Modifier.CC.$default$merge(this, textForegroundStyle);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final TextForegroundStyle takeOrElse(Function0 function0) {
        return !equals(TextForegroundStyle.Unspecified.INSTANCE) ? this : (TextForegroundStyle) function0.invoke();
    }

    public final String toString() {
        return "ColorStyle(value=" + ((Object) Color.m434toStringimpl(this.value)) + ')';
    }
}
