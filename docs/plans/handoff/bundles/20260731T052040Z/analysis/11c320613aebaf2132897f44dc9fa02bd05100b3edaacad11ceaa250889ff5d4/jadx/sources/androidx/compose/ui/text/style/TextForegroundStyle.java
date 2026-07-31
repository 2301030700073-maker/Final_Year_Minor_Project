package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.Owner;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface TextForegroundStyle {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Unspecified implements TextForegroundStyle {
        public static final Unspecified INSTANCE = new Unspecified();

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final float getAlpha() {
            return Float.NaN;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final Brush getBrush() {
            return null;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        /* renamed from: getColor-0d7_KjU */
        public final long mo419getColor0d7_KjU() {
            int i = Color.$r8$clinit;
            return Color.Unspecified;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final /* synthetic */ TextForegroundStyle merge(TextForegroundStyle textForegroundStyle) {
            return Owner.CC.$default$merge(this, textForegroundStyle);
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final TextForegroundStyle takeOrElse(Function0 function0) {
            return this != INSTANCE ? this : (TextForegroundStyle) function0.invoke();
        }
    }

    float getAlpha();

    Brush getBrush();

    /* renamed from: getColor-0d7_KjU */
    long mo419getColor0d7_KjU();

    TextForegroundStyle merge(TextForegroundStyle textForegroundStyle);

    TextForegroundStyle takeOrElse(Function0 function0);
}
