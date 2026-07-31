package com.airbnb.lottie.parser;

import android.graphics.Color;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientColorParser implements ValueParser {
    public int colorPoints;

    @Override // com.airbnb.lottie.parser.ValueParser
    public Object parse(JsonReader jsonReader, float f) {
        int i;
        int i2;
        int argb;
        float lerp;
        ArrayList arrayList = new ArrayList();
        int i3 = 1;
        int i4 = 0;
        boolean z = jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        int i5 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(RecyclerView.DECELERATION_RATE));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.colorPoints = 2;
        }
        if (z) {
            jsonReader.endArray();
        }
        int i6 = this.colorPoints;
        if (i6 == -1) {
            i6 = arrayList.size() / 4;
            this.colorPoints = i6;
        }
        float[] fArr = new float[i6];
        int[] iArr = new int[i6];
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i = this.colorPoints * 4;
            if (i7 >= i) {
                break;
            }
            int i10 = i7 / 4;
            double floatValue = ((Float) arrayList.get(i7)).floatValue();
            int i11 = i4;
            int i12 = i7 % 4;
            if (i12 == 0) {
                if (i10 > 0) {
                    float f2 = (float) floatValue;
                    if (fArr[i10 - 1] >= f2) {
                        fArr[i10] = f2 + 0.01f;
                    }
                }
                fArr[i10] = (float) floatValue;
            } else if (i12 == i3) {
                i8 = (int) (floatValue * 255.0d);
            } else if (i12 == 2) {
                i9 = (int) (floatValue * 255.0d);
            } else if (i12 == 3) {
                iArr[i10] = Color.argb(255, i8, i9, (int) (floatValue * 255.0d));
            }
            i7++;
            i4 = i11;
            i3 = 1;
        }
        int i13 = i4;
        GradientColor gradientColor = new GradientColor(fArr, iArr);
        if (arrayList.size() <= i) {
            return gradientColor;
        }
        int size = (arrayList.size() - i) / 2;
        float[] fArr2 = new float[size];
        float[] fArr3 = new float[size];
        int i14 = i13;
        while (i < arrayList.size()) {
            if (i % 2 == 0) {
                fArr2[i14] = ((Float) arrayList.get(i)).floatValue();
            } else {
                fArr3[i14] = ((Float) arrayList.get(i)).floatValue();
                i14++;
            }
            i++;
        }
        float[] fArr4 = gradientColor.positions;
        if (fArr4.length == 0) {
            fArr4 = fArr2;
        } else if (size != 0) {
            int length = fArr4.length + size;
            float[] fArr5 = new float[length];
            int i15 = i13;
            int i16 = i15;
            int i17 = i16;
            int i18 = i17;
            while (i15 < length) {
                float f3 = i17 < fArr4.length ? fArr4[i17] : Float.NaN;
                float f4 = i18 < size ? fArr2[i18] : Float.NaN;
                if (Float.isNaN(f4) || f3 < f4) {
                    fArr5[i15] = f3;
                    i17++;
                } else if (Float.isNaN(f3) || f4 < f3) {
                    fArr5[i15] = f4;
                    i18++;
                } else {
                    fArr5[i15] = f3;
                    i17++;
                    i18++;
                    i16++;
                }
                i15++;
            }
            fArr4 = i16 == 0 ? fArr5 : Arrays.copyOf(fArr5, length - i16);
        }
        int length2 = fArr4.length;
        int[] iArr2 = new int[length2];
        int i19 = i13;
        while (i19 < length2) {
            float f5 = fArr4[i19];
            int binarySearch = Arrays.binarySearch(fArr, f5);
            int binarySearch2 = Arrays.binarySearch(fArr2, f5);
            if (binarySearch < 0 || binarySearch2 > 0) {
                if (binarySearch2 < 0) {
                    binarySearch2 = -(binarySearch2 + 1);
                }
                float f6 = fArr3[binarySearch2];
                if (i6 >= i5 && f5 != fArr[i13]) {
                    for (int i20 = 1; i20 < i6; i20++) {
                        float f7 = fArr[i20];
                        if (f7 >= f5 || i20 == i6 - 1) {
                            if (i20 != i6 - 1 || f5 < f7) {
                                int i21 = i20 - 1;
                                float f8 = fArr[i21];
                                int evaluate = UuidKt.evaluate(iArr[i21], (f5 - f8) / (f7 - f8), iArr[i20]);
                                i2 = Color.argb((int) (f6 * 255.0f), Color.red(evaluate), Color.green(evaluate), Color.blue(evaluate));
                            } else {
                                i2 = Color.argb((int) (f6 * 255.0f), Color.red(iArr[i20]), Color.green(iArr[i20]), Color.blue(iArr[i20]));
                            }
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Unreachable code.");
                    return null;
                }
                i2 = iArr[i13];
                iArr2[i19] = i2;
            } else {
                int i22 = iArr[binarySearch];
                if (size >= i5 && f5 > fArr2[i13]) {
                    for (int i23 = 1; i23 < size; i23++) {
                        float f9 = fArr2[i23];
                        if (f9 >= f5 || i23 == size - 1) {
                            if (f9 <= f5) {
                                lerp = fArr3[i23];
                            } else {
                                int i24 = i23 - 1;
                                float f10 = fArr2[i24];
                                lerp = MiscUtils.lerp(fArr3[i24], fArr3[i23], (f5 - f10) / (f9 - f10));
                            }
                            argb = Color.argb((int) (lerp * 255.0f), Color.red(i22), Color.green(i22), Color.blue(i22));
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Unreachable code.");
                    return null;
                }
                argb = Color.argb((int) (fArr3[i13] * 255.0f), Color.red(i22), Color.green(i22), Color.blue(i22));
                iArr2[i19] = argb;
            }
            i19++;
            i5 = 2;
        }
        return new GradientColor(fArr4, iArr2);
    }
}
