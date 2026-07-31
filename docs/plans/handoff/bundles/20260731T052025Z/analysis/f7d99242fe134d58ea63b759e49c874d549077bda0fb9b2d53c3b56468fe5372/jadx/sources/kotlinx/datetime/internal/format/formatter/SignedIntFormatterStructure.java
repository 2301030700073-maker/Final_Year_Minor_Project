package kotlinx.datetime.internal.format.formatter;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.InvalidationTracker$implementation$1;
import kotlinx.datetime.internal.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignedIntFormatterStructure implements FormatterStructure {
    public final InvalidationTracker$implementation$1 number;
    public final Integer outputPlusOnExceededWidth;
    public final int zeroPadding;

    public SignedIntFormatterStructure(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, int i, Integer num) {
        this.number = invalidationTracker$implementation$1;
        this.zeroPadding = i;
        this.outputPlusOnExceededWidth = num;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i <= 9) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") exceeds the length of an Int"));
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.formatter.FormatterStructure
    public final void format(Object obj, StringBuilder sb, boolean z) {
        StringBuilder sb2 = new StringBuilder();
        int intValue = ((Number) this.number.invoke(obj)).intValue();
        if (z && intValue < 0) {
            intValue = -intValue;
        }
        int[] iArr = MathKt.POWERS_OF_TEN;
        Integer num = this.outputPlusOnExceededWidth;
        if (num != null && intValue >= iArr[num.intValue()]) {
            sb2.append('+');
        }
        int abs = Math.abs(intValue);
        int i = this.zeroPadding;
        if (abs >= iArr[i - 1]) {
            sb2.append(intValue);
        } else if (intValue >= 0) {
            sb2.append(intValue + iArr[i]);
            sb2.deleteCharAt(0).getClass();
        } else {
            sb2.append(intValue - iArr[i]);
            sb2.deleteCharAt(1).getClass();
        }
        sb.append((CharSequence) sb2);
    }
}
