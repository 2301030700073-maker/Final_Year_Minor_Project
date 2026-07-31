package kotlinx.datetime.internal.format.formatter;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.room.InvalidationTracker$implementation$1;
import java.util.List;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecimalFractionFormatterStructure implements FormatterStructure {
    public final int maxDigits;
    public final int minDigits;
    public final InvalidationTracker$implementation$1 number;
    public final List zerosToAdd;

    public DecimalFractionFormatterStructure(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, int i, int i2, List list) {
        list.getClass();
        this.number = invalidationTracker$implementation$1;
        this.minDigits = i;
        this.maxDigits = i2;
        this.zerosToAdd = list;
        if (1 > i || i >= 10) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") is not in range 1..9"));
            throw null;
        }
        if (i > i2 || i2 >= 10) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Config.CC.m("The maximum number of digits (", i2, ") is not in range ", i, "..9"));
            throw null;
        }
    }

    @Override // kotlinx.datetime.internal.format.formatter.FormatterStructure
    public final void format(Object obj, StringBuilder sb, boolean z) {
        int[] iArr;
        DecimalFraction decimalFraction = (DecimalFraction) this.number.invoke(obj);
        int i = this.maxDigits;
        int fractionalPartWithNDigits = decimalFraction.fractionalPartWithNDigits(i);
        int i2 = 0;
        while (true) {
            int i3 = this.minDigits + i2;
            iArr = MathKt.POWERS_OF_TEN;
            if (i <= i3) {
                break;
            }
            int i4 = i2 + 1;
            if (fractionalPartWithNDigits % iArr[i4] != 0) {
                break;
            } else {
                i2 = i4;
            }
        }
        int intValue = ((Number) this.zerosToAdd.get((i - i2) - 1)).intValue();
        if (i2 >= intValue) {
            i2 -= intValue;
        }
        sb.append((CharSequence) String.valueOf((fractionalPartWithNDigits / iArr[i2]) + iArr[i - i2]).substring(1));
    }
}
