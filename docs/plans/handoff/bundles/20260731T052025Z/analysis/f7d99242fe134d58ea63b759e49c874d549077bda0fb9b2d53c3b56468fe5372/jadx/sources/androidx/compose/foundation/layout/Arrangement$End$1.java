package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Arrangement$End$1 implements Arrangement$Horizontal, Arrangement$Vertical {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Arrangement$End$1(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal
    public final void arrange(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        int i2 = this.$r8$classId;
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        int i3 = 0;
        switch (i2) {
            case 0:
                if (layoutDirection == layoutDirection2) {
                    int i4 = 0;
                    for (int i5 : iArr) {
                        i4 += i5;
                    }
                    int i6 = i - i4;
                    int length = iArr.length;
                    int i7 = 0;
                    while (i3 < length) {
                        int i8 = iArr[i3];
                        iArr2[i7] = i6;
                        i6 += i8;
                        i3++;
                        i7++;
                    }
                    break;
                } else {
                    for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                        int i9 = iArr[length2];
                        iArr2[length2] = i3;
                        i3 += i9;
                    }
                    break;
                }
            case 1:
                int length3 = iArr.length;
                int i10 = 0;
                int i11 = 0;
                while (i3 < length3) {
                    int i12 = iArr[i3];
                    iArr2[i10] = i11;
                    i11 += i12;
                    i3++;
                    i10++;
                }
                break;
            case 2:
                int i13 = 0;
                for (int i14 : iArr) {
                    i13 += i14;
                }
                int i15 = i - i13;
                int length4 = iArr.length;
                int i16 = 0;
                while (i3 < length4) {
                    int i17 = iArr[i3];
                    iArr2[i16] = i15;
                    i15 += i17;
                    i3++;
                    i16++;
                }
                break;
            case 3:
                if (layoutDirection == layoutDirection2) {
                    OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
            case 4:
                if (layoutDirection == layoutDirection2) {
                    OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
            case 5:
                if (layoutDirection == layoutDirection2) {
                    OffsetKt.placeSpaceEvenly$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    OffsetKt.placeSpaceEvenly$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
            default:
                if (layoutDirection == layoutDirection2) {
                    int length5 = iArr.length;
                    int i18 = 0;
                    int i19 = 0;
                    while (i3 < length5) {
                        int i20 = iArr[i3];
                        iArr2[i18] = i19;
                        i19 += i20;
                        i3++;
                        i18++;
                    }
                    break;
                } else {
                    int length6 = iArr.length;
                    int i21 = 0;
                    while (i3 < length6) {
                        i21 += iArr[i3];
                        i3++;
                    }
                    int i22 = i - i21;
                    for (int length7 = iArr.length - 1; -1 < length7; length7--) {
                        int i23 = iArr[length7];
                        iArr2[length7] = i22;
                        i22 += i23;
                    }
                    break;
                }
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM, reason: not valid java name */
    public final float mo200getSpacingD9Ej5fM() {
        switch (this.$r8$classId) {
        }
        return 0.0f;
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
                return "Arrangement#Center";
            case 4:
                return "Arrangement#SpaceBetween";
            case 5:
                return "Arrangement#SpaceEvenly";
            default:
                return "Arrangement#Start";
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public void arrange(Density density, int i, int[] iArr, int[] iArr2) {
        switch (this.$r8$classId) {
            case 3:
                OffsetKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
                break;
            case 4:
                OffsetKt.placeSpaceBetween$foundation_layout(i, iArr, iArr2, false);
                break;
            default:
                OffsetKt.placeSpaceEvenly$foundation_layout(i, iArr, iArr2, false);
                break;
        }
    }
}
