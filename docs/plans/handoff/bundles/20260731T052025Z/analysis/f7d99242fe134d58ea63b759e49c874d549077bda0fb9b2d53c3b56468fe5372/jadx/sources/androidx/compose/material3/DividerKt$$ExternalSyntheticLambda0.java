package androidx.compose.material3;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DividerKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ float f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ DividerKt$$ExternalSyntheticLambda0(float f, int i, long j) {
        this.$r8$classId = i;
        this.f$0 = f;
        this.f$1 = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        float f = this.f$0;
        switch (i) {
            case 0:
                DrawScope drawScope = (DrawScope) obj;
                float mo177toPx0680j_4 = drawScope.mo177toPx0680j_4(f);
                float mo177toPx0680j_42 = drawScope.mo177toPx0680j_4(f) / 2.0f;
                float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo534getSizeNHjbRc() & 4294967295L));
                drawScope.mo527drawLineNGM6Ib0(this.f$1, (Float.floatToRawIntBits(drawScope.mo177toPx0680j_4(f) / 2.0f) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L), (Float.floatToRawIntBits(mo177toPx0680j_42) << 32) | (4294967295L & Float.floatToRawIntBits(intBitsToFloat)), mo177toPx0680j_4);
                break;
            default:
                DrawScope drawScope2 = (DrawScope) obj;
                float mo177toPx0680j_43 = drawScope2.mo177toPx0680j_4(f);
                float mo177toPx0680j_44 = drawScope2.mo177toPx0680j_4(f) / 2.0f;
                long floatToRawIntBits = (Float.floatToRawIntBits(mo177toPx0680j_44) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
                float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope2.mo534getSizeNHjbRc() >> 32));
                float mo177toPx0680j_45 = drawScope2.mo177toPx0680j_4(f) / 2.0f;
                drawScope2.mo527drawLineNGM6Ib0(this.f$1, floatToRawIntBits, (Float.floatToRawIntBits(intBitsToFloat2) << 32) | (4294967295L & Float.floatToRawIntBits(mo177toPx0680j_45)), mo177toPx0680j_43);
                break;
        }
        return unit;
    }
}
