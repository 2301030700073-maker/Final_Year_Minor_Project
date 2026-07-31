package androidx.compose.ui.text;

import android.graphics.Path;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MultiParagraph$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda1(int i, Placeable placeable, int i2) {
        this.$r8$classId = 3;
        this.f$1 = i;
        this.f$0 = placeable;
        this.f$2 = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        Object obj2 = this.f$0;
        int i3 = this.f$1;
        switch (i) {
            case 0:
                AndroidPath androidPath = (AndroidPath) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                int localIndex = paragraphInfo.toLocalIndex(i3);
                int localIndex2 = paragraphInfo.toLocalIndex(i2);
                CharSequence charSequence = androidParagraph.charSequence;
                if (localIndex < 0 || localIndex > localIndex2 || localIndex2 > charSequence.length()) {
                    StringBuilder m91m = Config.CC.m91m("start(", localIndex, ") or end(", localIndex2, ") is out of range [0..");
                    m91m.append(charSequence.length());
                    m91m.append("], or start > end!");
                    InlineClassHelperKt.throwIllegalArgumentException(m91m.toString());
                }
                Path path = new Path();
                TextLayout textLayout = androidParagraph.layout;
                textLayout.layout.getSelectionPath(localIndex, localIndex2, path);
                int i4 = textLayout.topPadding;
                if (i4 != 0 && !path.isEmpty()) {
                    path.offset(0.0f, i4);
                }
                AndroidPath androidPath2 = new AndroidPath(path);
                float f = paragraphInfo.top;
                androidPath2.m471translatek4lQ0M((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
                Modifier.CC.m395addPathUv8p0NA$default(androidPath, androidPath2);
                break;
            case 1:
                ((Placeable.PlacementScope) obj).place((Placeable) obj2, i3, i2, 0.0f);
                break;
            case 2:
                ((Placeable.PlacementScope) obj).place((Placeable) obj2, i3, i2, 0.0f);
                break;
            default:
                ((Placeable.PlacementScope) obj).place((Placeable) obj2, MathKt.roundToInt((i3 - r3.width) / 2.0f), MathKt.roundToInt((i2 - r3.height) / 2.0f), 0.0f);
                break;
        }
        return unit;
    }

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda1(Object obj, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = i2;
    }
}
