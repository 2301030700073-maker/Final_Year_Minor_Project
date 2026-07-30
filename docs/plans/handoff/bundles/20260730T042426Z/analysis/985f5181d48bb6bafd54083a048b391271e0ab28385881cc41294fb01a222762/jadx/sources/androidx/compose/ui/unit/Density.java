package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;

/* compiled from: Density.kt */
/* loaded from: classes.dex */
public interface Density extends FontScaling {
    float getDensity();

    /* renamed from: roundToPx-0680j_4 */
    int mo207roundToPx0680j_4(float f);

    /* renamed from: toDp-u2uoSUM */
    float mo209toDpu2uoSUM(float f);

    /* renamed from: toDp-u2uoSUM */
    float mo210toDpu2uoSUM(int i);

    /* renamed from: toDpSize-k-rfVVM */
    long mo211toDpSizekrfVVM(long j);

    /* renamed from: toPx--R2X_6o */
    float mo212toPxR2X_6o(long j);

    /* renamed from: toPx-0680j_4 */
    float mo213toPx0680j_4(float f);

    /* renamed from: toSize-XkaWNTQ */
    long mo214toSizeXkaWNTQ(long j);

    /* renamed from: toSp-kPz2Gy4 */
    long mo216toSpkPz2Gy4(float f);

    /* compiled from: Density.kt */
    /* renamed from: androidx.compose.ui.unit.Density$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: $default$toPx-0680j_4, reason: not valid java name */
        public static float m2419$default$toPx0680j_4(Density density, float f) {
            return f * density.getDensity();
        }

        /* renamed from: $default$roundToPx-0680j_4, reason: not valid java name */
        public static int m2414$default$roundToPx0680j_4(Density density, float f) {
            float mo213toPx0680j_4 = density.mo213toPx0680j_4(f);
            if (Float.isInfinite(mo213toPx0680j_4)) {
                return Integer.MAX_VALUE;
            }
            return Math.round(mo213toPx0680j_4);
        }

        /* renamed from: $default$toPx--R2X_6o, reason: not valid java name */
        public static float m2418$default$toPxR2X_6o(Density density, long j) {
            if (!TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(j), TextUnitType.Companion.m2516getSpUIouoOA())) {
                throw new IllegalStateException("Only Sp can convert to Px");
            }
            return density.mo213toPx0680j_4(density.mo208toDpGaN1DYA(j));
        }

        /* renamed from: $default$toSize-XkaWNTQ, reason: not valid java name */
        public static long m2420$default$toSizeXkaWNTQ(Density density, long j) {
            if (j != 9205357640488583168L) {
                return SizeKt.Size(density.mo213toPx0680j_4(DpSize.m2451getWidthD9Ej5fM(j)), density.mo213toPx0680j_4(DpSize.m2450getHeightD9Ej5fM(j)));
            }
            return Size.Companion.m1209getUnspecifiedNHjbRc();
        }

        /* renamed from: $default$toDpSize-k-rfVVM, reason: not valid java name */
        public static long m2417$default$toDpSizekrfVVM(Density density, long j) {
            if (j != 9205357640488583168L) {
                return DpKt.m2435DpSizeYgX7TsA(density.mo209toDpu2uoSUM(Size.m1204getWidthimpl(j)), density.mo209toDpu2uoSUM(Size.m1202getHeightimpl(j)));
            }
            return DpSize.Companion.m2455getUnspecifiedMYxV2XQ();
        }
    }
}
