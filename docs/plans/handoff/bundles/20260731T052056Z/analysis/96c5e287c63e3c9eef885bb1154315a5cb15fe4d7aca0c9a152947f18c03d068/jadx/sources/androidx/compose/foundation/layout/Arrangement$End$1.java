package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Arrangement$End$1 implements Arrangement$Horizontal, Arrangement$Vertical {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Arrangement$End$1(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal
    public void arrange(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                if (layoutDirection == LayoutDirection.Ltr) {
                    int i3 = 0;
                    for (int i4 : iArr) {
                        i3 += i4;
                    }
                    int i5 = i - i3;
                    int length = iArr.length;
                    int i6 = 0;
                    while (i2 < length) {
                        int i7 = iArr[i2];
                        iArr2[i6] = i5;
                        i5 += i7;
                        i2++;
                        i6++;
                    }
                    break;
                } else {
                    for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                        int i8 = iArr[length2];
                        iArr2[length2] = i2;
                        i2 += i8;
                    }
                    break;
                }
            case 1:
                int length3 = iArr.length;
                int i9 = 0;
                int i10 = 0;
                while (i2 < length3) {
                    int i11 = iArr[i2];
                    iArr2[i9] = i10;
                    i10 += i11;
                    i2++;
                    i9++;
                }
                break;
            case 2:
                int i12 = 0;
                for (int i13 : iArr) {
                    i12 += i13;
                }
                int i14 = i - i12;
                int length4 = iArr.length;
                int i15 = 0;
                while (i2 < length4) {
                    int i16 = iArr[i2];
                    iArr2[i15] = i14;
                    i14 += i16;
                    i2++;
                    i15++;
                }
                break;
            case 3:
            default:
                if (layoutDirection == LayoutDirection.Ltr) {
                    int length5 = iArr.length;
                    int i17 = 0;
                    int i18 = 0;
                    while (i2 < length5) {
                        int i19 = iArr[i2];
                        iArr2[i17] = i18;
                        i18 += i19;
                        i2++;
                        i17++;
                    }
                    break;
                } else {
                    int length6 = iArr.length;
                    int i20 = 0;
                    while (i2 < length6) {
                        i20 += iArr[i2];
                        i2++;
                    }
                    int i21 = i - i20;
                    for (int length7 = iArr.length - 1; -1 < length7; length7--) {
                        int i22 = iArr[length7];
                        iArr2[length7] = i21;
                        i21 += i22;
                    }
                    break;
                }
            case 4:
                if (layoutDirection == LayoutDirection.Ltr) {
                    OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
            case 5:
                if (layoutDirection == LayoutDirection.Ltr) {
                    OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM, reason: not valid java name */
    public final float mo110getSpacingD9Ej5fM() {
        switch (this.$r8$classId) {
        }
        return RecyclerView.DECELERATION_RATE;
    }

    public final String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "Arrangement#End";
            case 1:
                return "AbsoluteArrangement#Left";
            case 2:
                return "AbsoluteArrangement#Right";
            case 3:
                return "Arrangement#Bottom";
            case 4:
                return "Arrangement#Center";
            case 5:
                return "Arrangement#SpaceBetween";
            case 6:
                return "Arrangement#Start";
            default:
                return "Arrangement#Top";
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public void arrange(Density density, int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        switch (this.$r8$classId) {
            case 3:
                int i3 = 0;
                for (int i4 : iArr) {
                    i3 += i4;
                }
                int length = iArr.length;
                int i5 = i - i3;
                int i6 = 0;
                while (i2 < length) {
                    int i7 = iArr[i2];
                    iArr2[i6] = i5;
                    i5 += i7;
                    i2++;
                    i6++;
                }
                break;
            case 4:
                OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
                break;
            case 5:
                OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, false);
                break;
            default:
                int length2 = iArr.length;
                int i8 = 0;
                int i9 = 0;
                while (i2 < length2) {
                    int i10 = iArr[i2];
                    iArr2[i8] = i9;
                    i9 += i10;
                    i2++;
                    i8++;
                }
                break;
        }
    }
}
