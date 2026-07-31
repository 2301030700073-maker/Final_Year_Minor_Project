package androidx.compose.ui.node;

import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LayoutNode$$ExternalSyntheticBUOutline0 implements DoubleFunction, ShouldPauseCallback {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LayoutNode$$ExternalSyntheticBUOutline0(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        switch (this.$r8$classId) {
            case 18:
                double d2 = d < 0.0d ? -d : d;
                return Math.copySign(d2 >= 0.0031308049535603718d ? (Math.pow(d2, 0.4166666666666667d) - 0.05213270142180095d) / 0.9478672985781991d : d2 / 0.07739938080495357d, d);
            case 19:
                double d3 = d < 0.0d ? -d : d;
                return Math.copySign(d3 >= 0.04045d ? Math.pow((0.9478672985781991d * d3) + 0.05213270142180095d, 2.4d) : d3 * 0.07739938080495357d, d);
            case 20:
                float[] fArr = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferHlgOetf$ui_graphics(ColorSpaces.Bt2020HlgTransferParameters, d);
            case 21:
                float[] fArr2 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferHlgEotf$ui_graphics(ColorSpaces.Bt2020HlgTransferParameters, d);
            case 22:
                float[] fArr3 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferSt2048Oetf$ui_graphics(ColorSpaces.Bt2020PqTransferParameters, d);
            case 23:
                float[] fArr4 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferSt2048Eotf$ui_graphics(ColorSpaces.Bt2020PqTransferParameters, d);
            default:
                return d;
        }
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        return false;
    }

    public static /* bridge */ /* synthetic */ AutofillId m(Object obj) {
        return (AutofillId) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AutofillManager m320m(Object obj) {
        return (AutofillManager) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m321m() {
        return AutofillManager.class;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m322m() {
        throw new SerializationException();
    }
}
