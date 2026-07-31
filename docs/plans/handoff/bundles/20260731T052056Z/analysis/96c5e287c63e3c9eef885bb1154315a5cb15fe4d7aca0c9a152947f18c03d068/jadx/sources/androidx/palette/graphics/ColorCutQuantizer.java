package androidx.palette.graphics;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.PriorityQueue;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ColorCutQuantizer {
    public static final DiffUtil.AnonymousClass1 VBOX_COMPARATOR_VOLUME = new DiffUtil.AnonymousClass1(3);
    public final int[] mColors;
    public final Palette.AnonymousClass1[] mFilters;
    public final int[] mHistogram;
    public final ArrayList mQuantizedColors;
    public final float[] mTempHsl = new float[3];

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Vbox {
        public final int mLowerIndex;
        public int mMaxBlue;
        public int mMaxGreen;
        public int mMaxRed;
        public int mMinBlue;
        public int mMinGreen;
        public int mMinRed;
        public int mPopulation;
        public int mUpperIndex;

        public Vbox(int i, int i2) {
            this.mLowerIndex = i;
            this.mUpperIndex = i2;
            fitBox();
        }

        public final void fitBox() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE;
            int i4 = 0;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = this.mLowerIndex; i8 <= this.mUpperIndex; i8++) {
                int i9 = iArr[i8];
                i4 += iArr2[i9];
                int i10 = (i9 >> 10) & 31;
                int i11 = (i9 >> 5) & 31;
                int i12 = i9 & 31;
                if (i10 > i7) {
                    i7 = i10;
                }
                if (i10 < i) {
                    i = i10;
                }
                if (i11 > i2) {
                    i2 = i11;
                }
                if (i11 < i5) {
                    i5 = i11;
                }
                if (i12 > i3) {
                    i3 = i12;
                }
                if (i12 < i6) {
                    i6 = i12;
                }
            }
            this.mMinRed = i;
            this.mMaxRed = i7;
            this.mMinGreen = i5;
            this.mMaxGreen = i2;
            this.mMinBlue = i6;
            this.mMaxBlue = i3;
            this.mPopulation = i4;
        }

        public final int getVolume() {
            return ((this.mMaxBlue - this.mMinBlue) + 1) * ((this.mMaxGreen - this.mMinGreen) + 1) * ((this.mMaxRed - this.mMinRed) + 1);
        }
    }

    public ColorCutQuantizer(int[] iArr, Palette.AnonymousClass1[] anonymousClass1Arr) {
        Vbox vbox;
        this.mFilters = anonymousClass1Arr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            int modifyWordWidth = modifyWordWidth(Color.blue(i2), 8, 5) | (modifyWordWidth(Color.red(i2), 8, 5) << 10) | (modifyWordWidth(Color.green(i2), 8, 5) << 5);
            iArr[i] = modifyWordWidth;
            iArr2[modifyWordWidth] = iArr2[modifyWordWidth] + 1;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 32768; i4++) {
            if (iArr2[i4] > 0) {
                int rgb = Color.rgb(modifyWordWidth((i4 >> 10) & 31, 5, 8), modifyWordWidth((i4 >> 5) & 31, 5, 8), modifyWordWidth(i4 & 31, 5, 8));
                float[] fArr = this.mTempHsl;
                ThreadLocal threadLocal = ColorUtils.TEMP_ARRAY;
                ColorUtils.RGBToHSL(Color.red(rgb), Color.green(rgb), Color.blue(rgb), fArr);
                if (shouldIgnoreColor(fArr)) {
                    iArr2[i4] = 0;
                }
            }
            if (iArr2[i4] > 0) {
                i3++;
            }
        }
        int[] iArr3 = new int[i3];
        this.mColors = iArr3;
        int i5 = 0;
        for (int i6 = 0; i6 < 32768; i6++) {
            if (iArr2[i6] > 0) {
                iArr3[i5] = i6;
                i5++;
            }
        }
        if (i3 <= 16) {
            this.mQuantizedColors = new ArrayList();
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = iArr3[i7];
                this.mQuantizedColors.add(new Palette.Swatch(Color.rgb(modifyWordWidth((i8 >> 10) & 31, 5, 8), modifyWordWidth((i8 >> 5) & 31, 5, 8), modifyWordWidth(i8 & 31, 5, 8)), iArr2[i8]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(16, VBOX_COMPARATOR_VOLUME);
        priorityQueue.offer(new Vbox(0, this.mColors.length - 1));
        while (priorityQueue.size() < 16 && (vbox = (Vbox) priorityQueue.poll()) != null) {
            int i9 = vbox.mUpperIndex;
            int i10 = vbox.mLowerIndex;
            if ((i9 + 1) - i10 <= 1) {
                break;
            }
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            if ((i9 + 1) - i10 <= 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can not split a box with only 1 color");
                throw null;
            }
            int i11 = vbox.mMaxRed - vbox.mMinRed;
            int i12 = vbox.mMaxGreen - vbox.mMinGreen;
            int i13 = vbox.mMaxBlue - vbox.mMinBlue;
            int i14 = (i11 < i12 || i11 < i13) ? (i12 < i11 || i12 < i13) ? -1 : -2 : -3;
            int[] iArr4 = colorCutQuantizer.mColors;
            int[] iArr5 = colorCutQuantizer.mHistogram;
            modifySignificantOctet(iArr4, i14, i10, i9);
            Arrays.sort(iArr4, i10, vbox.mUpperIndex + 1);
            modifySignificantOctet(iArr4, i14, i10, vbox.mUpperIndex);
            int i15 = vbox.mPopulation / 2;
            int i16 = 0;
            int i17 = i10;
            while (true) {
                int i18 = vbox.mUpperIndex;
                if (i17 > i18) {
                    break;
                }
                i16 += iArr5[iArr4[i17]];
                if (i16 >= i15) {
                    i10 = Math.min(i18 - 1, i17);
                    break;
                }
                i17++;
            }
            Vbox vbox2 = colorCutQuantizer.new Vbox(i10 + 1, vbox.mUpperIndex);
            vbox.mUpperIndex = i10;
            vbox.fitBox();
            priorityQueue.offer(vbox2);
            priorityQueue.offer(vbox);
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            Vbox vbox3 = (Vbox) it.next();
            ColorCutQuantizer colorCutQuantizer2 = ColorCutQuantizer.this;
            int[] iArr6 = colorCutQuantizer2.mColors;
            int[] iArr7 = colorCutQuantizer2.mHistogram;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            for (int i23 = vbox3.mLowerIndex; i23 <= vbox3.mUpperIndex; i23++) {
                int i24 = iArr6[i23];
                int i25 = iArr7[i24];
                i20 += i25;
                i19 = (((i24 >> 10) & 31) * i25) + i19;
                i21 = (((i24 >> 5) & 31) * i25) + i21;
                i22 += i25 * (i24 & 31);
            }
            float f = i20;
            Palette.Swatch swatch = new Palette.Swatch(Color.rgb(modifyWordWidth(Math.round(i19 / f), 5, 8), modifyWordWidth(Math.round(i21 / f), 5, 8), modifyWordWidth(Math.round(i22 / f), 5, 8)), i20);
            if (!shouldIgnoreColor(swatch.getHsl())) {
                arrayList.add(swatch);
            }
        }
        this.mQuantizedColors = arrayList;
    }

    public static void modifySignificantOctet(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            while (i2 <= i3) {
                int i4 = iArr[i2];
                iArr[i2] = (i4 & 31) | (((i4 >> 5) & 31) << 10) | (((i4 >> 10) & 31) << 5);
                i2++;
            }
            return;
        }
        if (i != -1) {
            return;
        }
        while (i2 <= i3) {
            int i5 = iArr[i2];
            iArr[i2] = ((i5 >> 10) & 31) | ((i5 & 31) << 10) | (((i5 >> 5) & 31) << 5);
            i2++;
        }
    }

    public static int modifyWordWidth(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    public final boolean shouldIgnoreColor(float[] fArr) {
        Palette.AnonymousClass1[] anonymousClass1Arr = this.mFilters;
        if (anonymousClass1Arr != null && anonymousClass1Arr.length > 0) {
            for (Palette.AnonymousClass1 anonymousClass1 : anonymousClass1Arr) {
                anonymousClass1.getClass();
                float f = fArr[2];
                if (f < 0.95f && f > 0.05f) {
                    float f2 = fArr[0];
                    if (f2 < 10.0f || f2 > 37.0f || fArr[1] > 0.82f) {
                    }
                }
                return true;
            }
        }
        return false;
    }
}
