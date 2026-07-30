package androidx.compose.material3;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.tokens.ProgressIndicatorTokens;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: ProgressIndicator.kt */
/* loaded from: classes.dex */
public abstract class ProgressIndicatorKt {
    private static final CubicBezierEasing CircularEasing;
    private static final float CircularIndicatorDiameter;
    private static final CubicBezierEasing FirstLineHeadEasing;
    private static final CubicBezierEasing FirstLineTailEasing;
    private static final Modifier IncreaseSemanticsBounds;
    private static final float LinearIndicatorHeight;
    private static final float LinearIndicatorWidth;
    private static final CubicBezierEasing SecondLineHeadEasing;
    private static final CubicBezierEasing SecondLineTailEasing;
    private static final float SemanticsBoundsPadding;

    /* JADX WARN: Removed duplicated region for block: B:100:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ca  */
    /* renamed from: LinearProgressIndicator-rIrjwxo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m725LinearProgressIndicatorrIrjwxo(androidx.compose.ui.Modifier r28, long r29, long r31, int r33, float r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m725LinearProgressIndicatorrIrjwxo(androidx.compose.ui.Modifier, long, long, int, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    public static final void m732drawLinearIndicatorqYKTg0g(DrawScope drawScope, float f, float f2, long j, float f3, int i) {
        float m1204getWidthimpl = Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc());
        float m1202getHeightimpl = Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc());
        float f4 = 2;
        float f5 = m1202getHeightimpl / f4;
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Ltr;
        float f6 = (z ? f : 1.0f - f2) * m1204getWidthimpl;
        float f7 = (z ? f2 : 1.0f - f) * m1204getWidthimpl;
        if (StrokeCap.m1420equalsimpl0(i, StrokeCap.Companion.m1423getButtKaPHkGw()) || m1202getHeightimpl > m1204getWidthimpl) {
            DrawScope.CC.m1511drawLineNGM6Ib0$default(drawScope, j, OffsetKt.Offset(f6, f5), OffsetKt.Offset(f7, f5), f3, 0, null, 0.0f, null, 0, 496, null);
            return;
        }
        float f8 = f3 / f4;
        ClosedFloatingPointRange rangeTo = RangesKt.rangeTo(f8, m1204getWidthimpl - f8);
        float floatValue = ((Number) RangesKt.coerceIn(Float.valueOf(f6), rangeTo)).floatValue();
        float floatValue2 = ((Number) RangesKt.coerceIn(Float.valueOf(f7), rangeTo)).floatValue();
        if (Math.abs(f2 - f) > 0.0f) {
            DrawScope.CC.m1511drawLineNGM6Ib0$default(drawScope, j, OffsetKt.Offset(floatValue, f5), OffsetKt.Offset(floatValue2, f5), f3, i, null, 0.0f, null, 0, 480, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0083  */
    /* renamed from: CircularProgressIndicator-LxG7B9w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m724CircularProgressIndicatorLxG7B9w(androidx.compose.ui.Modifier r36, long r37, float r39, long r40, int r42, androidx.compose.runtime.Composer r43, final int r44, final int r45) {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m724CircularProgressIndicatorLxG7B9w(androidx.compose.ui.Modifier, long, float, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    private static final void m729drawCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        float f3 = 2;
        float width = stroke.getWidth() / f3;
        float m1204getWidthimpl = Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc()) - (f3 * width);
        DrawScope.CC.m1506drawArcyD3GUKo$default(drawScope, j, f, f2, false, OffsetKt.Offset(width, width), SizeKt.Size(m1204getWidthimpl, m1204getWidthimpl), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawCircularIndicatorTrack-bw27NRU, reason: not valid java name */
    public static final void m730drawCircularIndicatorTrackbw27NRU(DrawScope drawScope, long j, Stroke stroke) {
        m729drawCircularIndicator42QJj7c(drawScope, 0.0f, 360.0f, j, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawIndeterminateCircularIndicator-hrjfTZI, reason: not valid java name */
    public static final void m731drawIndeterminateCircularIndicatorhrjfTZI(DrawScope drawScope, float f, float f2, float f3, long j, Stroke stroke) {
        m729drawCircularIndicator42QJj7c(drawScope, f + (StrokeCap.m1420equalsimpl0(stroke.m1519getCapKaPHkGw(), StrokeCap.Companion.m1423getButtKaPHkGw()) ? 0.0f : ((f2 / Dp.m2424constructorimpl(CircularIndicatorDiameter / 2)) * 57.29578f) / 2.0f), Math.max(f3, 0.1f), j, stroke);
    }

    static {
        float m2424constructorimpl = Dp.m2424constructorimpl(10);
        SemanticsBoundsPadding = m2424constructorimpl;
        IncreaseSemanticsBounds = PaddingKt.m267paddingVpY3zN4$default(SemanticsModifierKt.semantics(LayoutModifierKt.layout(Modifier.Companion, new Function3() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                return m733invoke3p2s80s((MeasureScope) obj, (Measurable) obj2, ((Constraints) obj3).m2403unboximpl());
            }

            /* renamed from: invoke-3p2s80s, reason: not valid java name */
            public final MeasureResult m733invoke3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                float f;
                f = ProgressIndicatorKt.SemanticsBoundsPadding;
                final int mo207roundToPx0680j_4 = measureScope.mo207roundToPx0680j_4(f);
                int i = mo207roundToPx0680j_4 * 2;
                final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(ConstraintsKt.m2412offsetNN6EwU(j, 0, i));
                return MeasureScope.CC.layout$default(measureScope, mo1751measureBRTryo0.getWidth(), mo1751measureBRTryo0.getHeight() - i, null, new Function1() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((Placeable.PlacementScope) obj);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Placeable.PlacementScope placementScope) {
                        Placeable.PlacementScope.place$default(placementScope, Placeable.this, 0, -mo207roundToPx0680j_4, 0.0f, 4, null);
                    }
                }, 4, null);
            }
        }), true, new Function1() { // from class: androidx.compose.material3.ProgressIndicatorKt$IncreaseSemanticsBounds$2
            public final void invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((SemanticsPropertyReceiver) obj);
                return Unit.INSTANCE;
            }
        }), 0.0f, m2424constructorimpl, 1, null);
        LinearIndicatorWidth = Dp.m2424constructorimpl(240);
        ProgressIndicatorTokens progressIndicatorTokens = ProgressIndicatorTokens.INSTANCE;
        LinearIndicatorHeight = progressIndicatorTokens.m959getTrackThicknessD9Ej5fM();
        CircularIndicatorDiameter = Dp.m2424constructorimpl(progressIndicatorTokens.m957getSizeD9Ej5fM() - Dp.m2424constructorimpl(progressIndicatorTokens.m959getTrackThicknessD9Ej5fM() * 2));
        FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
        FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
        SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
        SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
        CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);
    }
}
