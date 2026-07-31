package androidx.compose.animation.core;

import io.noties.markwon.BlockHandlerDef;
import java.util.Arrays;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class VectorizedAnimationSpecKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        int i;
        float[] fArr;
        float[] fArr2;
        boolean z;
        boolean z2 = false;
        int i2 = 1;
        float[][] fArr3 = {new float[2], new float[2]};
        int i3 = new int[2][0];
        int i4 = 3;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2 || i3 == 3) {
                    i = 2;
                } else if (i3 == 4) {
                    i = 4;
                } else if (i3 == 5) {
                    i = 5;
                }
            }
            i = 1;
        } else {
            i = 3;
        }
        float[] fArr4 = fArr3[0];
        float[] fArr5 = fArr3[1];
        int length = (fArr4.length % 2) + (fArr4.length / 2);
        BlockHandlerDef[] blockHandlerDefArr = new BlockHandlerDef[length];
        int i5 = 0;
        while (i5 < length) {
            int i6 = i5 * 2;
            float f = fArr4[i6];
            int i7 = i6 + 1;
            float f2 = fArr4[i7];
            float f3 = fArr5[i6];
            float f4 = fArr5[i7];
            BlockHandlerDef blockHandlerDef = new BlockHandlerDef(i4);
            float f5 = f3 - f;
            float f6 = f4 - f2;
            int i8 = i2;
            float[] fArr6 = new float[Token.ASSIGN_LOGICAL_OR];
            if (i != i4 && Math.abs(f5) >= 0.001f && Math.abs(f6) >= 0.001f) {
                float f7 = f2 - f4;
                float[] fArr7 = ArcSplineKt.OurPercentCache;
                fArr = fArr4;
                float f8 = f7;
                int i9 = i8;
                float f9 = 0.0f;
                float f10 = 0.0f;
                while (true) {
                    double d = (float) (((i9 * 90.0d) / 90.0d) * 0.017453292519943295d);
                    float f11 = f7;
                    float sin = ((float) Math.sin(d)) * f5;
                    float cos = f11 * ((float) Math.cos(d));
                    fArr2 = fArr6;
                    f9 += (float) Math.hypot(sin - f10, cos - f8);
                    fArr7[i9] = f9;
                    if (i9 == 90) {
                        break;
                    }
                    i9++;
                    f10 = sin;
                    f8 = cos;
                    f7 = f11;
                    fArr6 = fArr2;
                }
                int i10 = i8;
                while (true) {
                    fArr7[i10] = fArr7[i10] / f9;
                    if (i10 == 90) {
                        break;
                    } else {
                        i10++;
                    }
                }
                for (int i11 = 0; i11 < 101; i11++) {
                    float f12 = i11 / 100.0f;
                    int binarySearch = Arrays.binarySearch(fArr7, 0, 91, f12);
                    if (binarySearch >= 0) {
                        fArr2[i11] = binarySearch / 90.0f;
                    } else if (binarySearch == -1) {
                        fArr2[i11] = 0.0f;
                    } else {
                        int i12 = -binarySearch;
                        int i13 = i12 - 2;
                        float f13 = i13;
                        float f14 = fArr7[i13];
                        fArr2[i11] = (((f12 - f14) / (fArr7[i12 - 1] - f14)) + f13) / 90.0f;
                    }
                }
                z = false;
            } else {
                z = z2;
                fArr = fArr4;
                Math.hypot(f6, f5);
            }
            blockHandlerDefArr[i5] = blockHandlerDef;
            i5++;
            z2 = z;
            i2 = i8;
            fArr4 = fArr;
            i4 = 3;
        }
    }
}
