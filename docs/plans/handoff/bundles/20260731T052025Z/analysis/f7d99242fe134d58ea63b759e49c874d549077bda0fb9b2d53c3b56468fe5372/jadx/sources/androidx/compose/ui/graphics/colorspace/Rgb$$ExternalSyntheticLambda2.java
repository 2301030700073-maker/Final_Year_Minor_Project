package androidx.compose.ui.graphics.colorspace;

import android.view.autofill.AutofillManager;
import androidx.compose.runtime.ShouldPauseCallback;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Rgb$$ExternalSyntheticLambda2 implements DoubleFunction, ShouldPauseCallback {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Rgb$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        switch (this.$r8$classId) {
            case 0:
                return d;
            case 21:
                double d2 = d < 0.0d ? -d : d;
                return Math.copySign(d2 >= 0.0031308049535603718d ? (Math.pow(d2, 0.4166666666666667d) - 0.05213270142180095d) / 0.9478672985781991d : d2 / 0.07739938080495357d, d);
            case 22:
                double d3 = d < 0.0d ? -d : d;
                return Math.copySign(d3 >= 0.04045d ? Math.pow((0.9478672985781991d * d3) + 0.05213270142180095d, 2.4d) : d3 * 0.07739938080495357d, d);
            case 23:
                float[] fArr = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferHlgOetf$ui_graphics(ColorSpaces.Bt2020HlgTransferParameters, d);
            case 24:
                float[] fArr2 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferHlgEotf$ui_graphics(ColorSpaces.Bt2020HlgTransferParameters, d);
            case 25:
                float[] fArr3 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferSt2048Oetf$ui_graphics(ColorSpaces.Bt2020PqTransferParameters, d);
            default:
                float[] fArr4 = ColorSpaces.SrgbPrimaries;
                return ColorSpaces.transferSt2048Eotf$ui_graphics(ColorSpaces.Bt2020PqTransferParameters, d);
        }
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        return false;
    }

    public static /* bridge */ /* synthetic */ AutofillManager m(Object obj) {
        return (AutofillManager) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m520m() {
        return AutofillManager.class;
    }
}
