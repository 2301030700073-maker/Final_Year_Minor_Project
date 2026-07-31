package kotlinx.datetime.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.disk.DiskLruCache;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecimalFraction implements Comparable {
    public final int digits;
    public final int fractionalPart;

    public DecimalFraction(int i, int i2) {
        this.fractionalPart = i;
        this.digits = i2;
        if (i2 >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Digits must be non-negative, but was ", i2));
        throw null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        DecimalFraction decimalFraction = (DecimalFraction) obj;
        decimalFraction.getClass();
        int max = Math.max(this.digits, decimalFraction.digits);
        return Intrinsics.compare(fractionalPartWithNDigits(max), decimalFraction.fractionalPartWithNDigits(max));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DecimalFraction)) {
            return false;
        }
        DecimalFraction decimalFraction = (DecimalFraction) obj;
        int max = Math.max(this.digits, decimalFraction.digits);
        return Intrinsics.compare(fractionalPartWithNDigits(max), decimalFraction.fractionalPartWithNDigits(max)) == 0;
    }

    public final int fractionalPartWithNDigits(int i) {
        int i2 = this.fractionalPart;
        int i3 = this.digits;
        if (i == i3) {
            return i2;
        }
        int[] iArr = MathKt.POWERS_OF_TEN;
        return i > i3 ? i2 * iArr[i - i3] : i2 / iArr[i3 - i];
    }

    public final int hashCode() {
        throw new UnsupportedOperationException("DecimalFraction is not supposed to be used as a hash key");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = MathKt.POWERS_OF_TEN[this.digits];
        int i2 = this.fractionalPart;
        sb.append(i2 / i);
        sb.append('.');
        sb.append(StringsKt.removePrefix(String.valueOf((i2 % i) + i), DiskLruCache.VERSION));
        return sb.toString();
    }
}
