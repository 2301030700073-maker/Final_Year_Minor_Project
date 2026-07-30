package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.RangesKt;

/* compiled from: VectorConverters.kt */
/* loaded from: classes.dex */
public abstract class VectorConvertersKt {
    private static final TwoWayConverter FloatToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$1
        public final AnimationVector1D invoke(float f) {
            return new AnimationVector1D(f);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return invoke(((Number) obj).floatValue());
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Float invoke(AnimationVector1D animationVector1D) {
            return Float.valueOf(animationVector1D.getValue());
        }
    });
    private static final TwoWayConverter IntToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$1
        public final AnimationVector1D invoke(int i) {
            return new AnimationVector1D(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return invoke(((Number) obj).intValue());
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Integer invoke(AnimationVector1D animationVector1D) {
            return Integer.valueOf((int) animationVector1D.getValue());
        }
    });
    private static final TwoWayConverter DpToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m74invoke0680j_4(((Dp) obj).m2430unboximpl());
        }

        /* renamed from: invoke-0680j_4, reason: not valid java name */
        public final AnimationVector1D m74invoke0680j_4(float f) {
            return new AnimationVector1D(f);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return Dp.m2422boximpl(m75invokeu2uoSUM((AnimationVector1D) obj));
        }

        /* renamed from: invoke-u2uoSUM, reason: not valid java name */
        public final float m75invokeu2uoSUM(AnimationVector1D animationVector1D) {
            return Dp.m2424constructorimpl(animationVector1D.getValue());
        }
    });
    private static final TwoWayConverter DpOffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m72invokejoFl9I(((DpOffset) obj).m2445unboximpl());
        }

        /* renamed from: invoke-jo-Fl9I, reason: not valid java name */
        public final AnimationVector2D m72invokejoFl9I(long j) {
            return new AnimationVector2D(DpOffset.m2441getXD9Ej5fM(j), DpOffset.m2442getYD9Ej5fM(j));
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return DpOffset.m2437boximpl(m73invokegVRvYmI((AnimationVector2D) obj));
        }

        /* renamed from: invoke-gVRvYmI, reason: not valid java name */
        public final long m73invokegVRvYmI(AnimationVector2D animationVector2D) {
            return DpKt.m2434DpOffsetYgX7TsA(Dp.m2424constructorimpl(animationVector2D.getV1()), Dp.m2424constructorimpl(animationVector2D.getV2()));
        }
    });
    private static final TwoWayConverter SizeToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m82invokeuvyYCjk(((Size) obj).m1208unboximpl());
        }

        /* renamed from: invoke-uvyYCjk, reason: not valid java name */
        public final AnimationVector2D m82invokeuvyYCjk(long j) {
            return new AnimationVector2D(Size.m1204getWidthimpl(j), Size.m1202getHeightimpl(j));
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return Size.m1198boximpl(m83invoke7Ah8Wj8((AnimationVector2D) obj));
        }

        /* renamed from: invoke-7Ah8Wj8, reason: not valid java name */
        public final long m83invoke7Ah8Wj8(AnimationVector2D animationVector2D) {
            return SizeKt.Size(animationVector2D.getV1(), animationVector2D.getV2());
        }
    });
    private static final TwoWayConverter OffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m80invokek4lQ0M(((Offset) obj).m1176unboximpl());
        }

        /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
        public final AnimationVector2D m80invokek4lQ0M(long j) {
            return new AnimationVector2D(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return Offset.m1158boximpl(m81invoketuRUvjQ((AnimationVector2D) obj));
        }

        /* renamed from: invoke-tuRUvjQ, reason: not valid java name */
        public final long m81invoketuRUvjQ(AnimationVector2D animationVector2D) {
            return OffsetKt.Offset(animationVector2D.getV1(), animationVector2D.getV2());
        }
    });
    private static final TwoWayConverter IntOffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m76invokegyyYBs(((IntOffset) obj).m2471unboximpl());
        }

        /* renamed from: invoke--gyyYBs, reason: not valid java name */
        public final AnimationVector2D m76invokegyyYBs(long j) {
            return new AnimationVector2D(IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j));
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return IntOffset.m2459boximpl(m77invokeBjo55l4((AnimationVector2D) obj));
        }

        /* renamed from: invoke-Bjo55l4, reason: not valid java name */
        public final long m77invokeBjo55l4(AnimationVector2D animationVector2D) {
            return IntOffsetKt.IntOffset(Math.round(animationVector2D.getV1()), Math.round(animationVector2D.getV2()));
        }
    });
    private static final TwoWayConverter IntSizeToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m78invokeozmzZPI(((IntSize) obj).m2487unboximpl());
        }

        /* renamed from: invoke-ozmzZPI, reason: not valid java name */
        public final AnimationVector2D m78invokeozmzZPI(long j) {
            return new AnimationVector2D(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return IntSize.m2479boximpl(m79invokeYEO4UFw((AnimationVector2D) obj));
        }

        /* renamed from: invoke-YEO4UFw, reason: not valid java name */
        public final long m79invokeYEO4UFw(AnimationVector2D animationVector2D) {
            return IntSizeKt.IntSize(RangesKt.coerceAtLeast(Math.round(animationVector2D.getV1()), 0), RangesKt.coerceAtLeast(Math.round(animationVector2D.getV2()), 0));
        }
    });
    private static final TwoWayConverter RectToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$1
        @Override // kotlin.jvm.functions.Function1
        public final AnimationVector4D invoke(Rect rect) {
            return new AnimationVector4D(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom());
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Rect invoke(AnimationVector4D animationVector4D) {
            return new Rect(animationVector4D.getV1(), animationVector4D.getV2(), animationVector4D.getV3(), animationVector4D.getV4());
        }
    });

    public static final float lerp(float f, float f2, float f3) {
        return (f * (1 - f3)) + (f2 * f3);
    }

    public static final TwoWayConverter TwoWayConverter(Function1 function1, Function1 function12) {
        return new TwoWayConverterImpl(function1, function12);
    }

    public static final TwoWayConverter getVectorConverter(FloatCompanionObject floatCompanionObject) {
        return FloatToVector;
    }

    public static final TwoWayConverter getVectorConverter(IntCompanionObject intCompanionObject) {
        return IntToVector;
    }

    public static final TwoWayConverter getVectorConverter(Rect.Companion companion) {
        return RectToVector;
    }

    public static final TwoWayConverter getVectorConverter(Dp.Companion companion) {
        return DpToVector;
    }

    public static final TwoWayConverter getVectorConverter(DpOffset.Companion companion) {
        return DpOffsetToVector;
    }

    public static final TwoWayConverter getVectorConverter(Size.Companion companion) {
        return SizeToVector;
    }

    public static final TwoWayConverter getVectorConverter(Offset.Companion companion) {
        return OffsetToVector;
    }

    public static final TwoWayConverter getVectorConverter(IntOffset.Companion companion) {
        return IntOffsetToVector;
    }

    public static final TwoWayConverter getVectorConverter(IntSize.Companion companion) {
        return IntSizeToVector;
    }
}
