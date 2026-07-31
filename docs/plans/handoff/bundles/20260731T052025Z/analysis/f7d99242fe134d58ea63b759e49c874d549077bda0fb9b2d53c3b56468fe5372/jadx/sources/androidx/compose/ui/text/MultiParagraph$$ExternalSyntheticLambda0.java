package androidx.compose.ui.text;

import android.text.Layout;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.scrollcapture.RelativeScroller;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.work.Operation$State;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MultiParagraph$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda0(long j, float[] fArr, Ref$IntRef ref$IntRef, Ref$FloatRef ref$FloatRef) {
        this.$r8$classId = 0;
        this.f$0 = j;
        this.f$1 = fArr;
        this.f$2 = ref$IntRef;
        this.f$3 = ref$FloatRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j;
        boolean z;
        float f;
        float f2;
        MenuHostHelper menuHostHelper;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                float[] fArr = (float[]) obj4;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                int i2 = paragraphInfo.startIndex;
                AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                int i3 = paragraphInfo.endIndex;
                long j2 = this.f$0;
                int m702getMinimpl = i2 > TextRange.m702getMinimpl(j2) ? paragraphInfo.startIndex : TextRange.m702getMinimpl(j2);
                if (i3 >= TextRange.m701getMaximpl(j2)) {
                    i3 = TextRange.m701getMaximpl(j2);
                }
                long TextRange = ParagraphKt.TextRange(paragraphInfo.toLocalIndex(m702getMinimpl), paragraphInfo.toLocalIndex(i3));
                int i4 = ref$IntRef.element;
                TextLayout textLayout = androidParagraph.layout;
                int m702getMinimpl2 = TextRange.m702getMinimpl(TextRange);
                int m701getMaximpl = TextRange.m701getMaximpl(TextRange);
                Layout layout = textLayout.layout;
                int length = layout.getText().length();
                if (m702getMinimpl2 < 0) {
                    InlineClassHelperKt.throwIllegalArgumentException("startOffset must be > 0");
                }
                if (m702getMinimpl2 >= length) {
                    InlineClassHelperKt.throwIllegalArgumentException("startOffset must be less than text length");
                }
                if (m701getMaximpl <= m702getMinimpl2) {
                    InlineClassHelperKt.throwIllegalArgumentException("endOffset must be greater than startOffset");
                }
                if (m701getMaximpl > length) {
                    InlineClassHelperKt.throwIllegalArgumentException("endOffset must be smaller or equal to text length");
                }
                if (fArr.length - i4 < (m701getMaximpl - m702getMinimpl2) * 4) {
                    InlineClassHelperKt.throwIllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
                }
                int lineForOffset = layout.getLineForOffset(m702getMinimpl2);
                int lineForOffset2 = layout.getLineForOffset(m701getMaximpl - 1);
                RelativeScroller relativeScroller = new RelativeScroller(textLayout);
                if (lineForOffset <= lineForOffset2) {
                    while (true) {
                        int lineStart = layout.getLineStart(lineForOffset);
                        int lineEnd = textLayout.getLineEnd(lineForOffset);
                        int max = Math.max(m702getMinimpl2, lineStart);
                        int min = Math.min(m701getMaximpl, lineEnd);
                        float lineTop = textLayout.getLineTop(lineForOffset);
                        float lineBottom = textLayout.getLineBottom(lineForOffset);
                        j = TextRange;
                        int i5 = i4;
                        boolean z2 = false;
                        boolean z3 = layout.getParagraphDirection(lineForOffset) == 1;
                        while (max < min) {
                            boolean isRtlCharAt = layout.isRtlCharAt(max);
                            if (!z3 || isRtlCharAt) {
                                if (z3 && isRtlCharAt) {
                                    z2 = false;
                                    float f3 = relativeScroller.get(max, false, false, false);
                                    z = z3;
                                    f = relativeScroller.get(max + 1, true, true, false);
                                    f2 = f3;
                                } else {
                                    z = z3;
                                    z2 = false;
                                    if (z || !isRtlCharAt) {
                                        f = relativeScroller.get(max, false, false, false);
                                        f2 = relativeScroller.get(max + 1, true, true, false);
                                    } else {
                                        f2 = relativeScroller.get(max, false, false, true);
                                        f = relativeScroller.get(max + 1, true, true, true);
                                    }
                                }
                                fArr[i5] = f;
                                fArr[i5 + 1] = lineTop;
                                fArr[i5 + 2] = f2;
                                fArr[i5 + 3] = lineBottom;
                                i5 += 4;
                                max++;
                                z3 = z;
                            } else {
                                f = relativeScroller.get(max, z2, z2, true);
                                z = z3;
                                f2 = relativeScroller.get(max + 1, true, true, true);
                            }
                            z2 = false;
                            fArr[i5] = f;
                            fArr[i5 + 1] = lineTop;
                            fArr[i5 + 2] = f2;
                            fArr[i5 + 3] = lineBottom;
                            i5 += 4;
                            max++;
                            z3 = z;
                        }
                        if (lineForOffset != lineForOffset2) {
                            lineForOffset++;
                            TextRange = j;
                            i4 = i5;
                        }
                    }
                } else {
                    j = TextRange;
                }
                int m700getLengthimpl = (TextRange.m700getLengthimpl(j) * 4) + ref$IntRef.element;
                for (int i6 = ref$IntRef.element; i6 < m700getLengthimpl; i6 += 4) {
                    int i7 = i6 + 1;
                    float f4 = fArr[i7];
                    float f5 = ref$FloatRef.element;
                    fArr[i7] = f4 + f5;
                    int i8 = i6 + 3;
                    fArr[i8] = fArr[i8] + f5;
                }
                ref$IntRef.element = m700getLengthimpl;
                ref$FloatRef.element = androidParagraph.getHeight() + ref$FloatRef.element;
                return unit;
            case 1:
                Rect rect = (Rect) obj4;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                long j3 = this.f$0;
                ColorFilter colorFilter = (ColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                float f6 = rect.left;
                float f7 = rect.top;
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(f6, f7);
                try {
                    layoutNodeDrawScope.mo525drawImageAZ2fEMs((ImageBitmap) ref$ObjectRef.element, 0L, j3, (r22 & 16) != 0 ? j3 : 0L, (r22 & 32) != 0 ? 1.0f : 0.0f, colorFilter, (r22 & 512) != 0 ? 1 : 0);
                    return unit;
                } finally {
                    ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(-f6, -f7);
                }
            default:
                long j4 = this.f$0;
                AndroidPath androidPath = (AndroidPath) obj2;
                DrawScope drawScope = (DrawScope) obj;
                float invoke = ((FloatProducer) obj4).invoke();
                float max2 = (Math.max(Math.min(1.0f, invoke) - 0.4f, 0.0f) * 5.0f) / 3.0f;
                float coerceIn = RangesKt.coerceIn(Math.abs(invoke) - 1.0f, 0.0f, 2.0f);
                float pow = (((0.4f * max2) - 0.25f) + (coerceIn - (((float) Math.pow(coerceIn, 2.0d)) / 4.0f))) * 0.5f;
                float f8 = pow * 360.0f;
                float f9 = ((0.8f * max2) + pow) * 360.0f;
                float min2 = Math.min(1.0f, max2);
                FlingCalculator flingCalculator = new FlingCalculator();
                flingCalculator.friction = f9;
                flingCalculator.magicPhysicalCoefficient = min2;
                float floatValue = ((Number) ((State) obj3).getValue()).floatValue();
                long mo533getCenterF1C5BW0 = drawScope.mo533getCenterF1C5BW0();
                MenuHostHelper drawContext = drawScope.getDrawContext();
                long m795getSizeNHjbRc = drawContext.m795getSizeNHjbRc();
                drawContext.getCanvas().save();
                try {
                    ((PreviewView.AnonymousClass1) drawContext.mOnInvalidateMenuCallback).m98rotateUv8p0NA(pow, mo533getCenterF1C5BW0);
                    float mo177toPx0680j_4 = (drawScope.mo177toPx0680j_4(2.5f) / 2.0f) + drawScope.mo177toPx0680j_4(5.5f);
                    long m788getCenteruvyYCjk = DebugUtils.m788getCenteruvyYCjk(drawScope.mo534getSizeNHjbRc());
                    int i9 = (int) (m788getCenteruvyYCjk >> 32);
                    int i10 = (int) (m788getCenteruvyYCjk & 4294967295L);
                    Rect rect2 = new Rect(Float.intBitsToFloat(i9) - mo177toPx0680j_4, Float.intBitsToFloat(i10) - mo177toPx0680j_4, Float.intBitsToFloat(i9) + mo177toPx0680j_4, Float.intBitsToFloat(i10) + mo177toPx0680j_4);
                    menuHostHelper = drawContext;
                    try {
                        drawScope.mo523drawArcyD3GUKo(j4, f8, f9 - f8, rect2.m447getTopLeftF1C5BW0(), rect2.m446getSizeNHjbRc(), (r23 & 64) != 0 ? 1.0f : floatValue, new Stroke(drawScope.mo177toPx0680j_4(2.5f), 0.0f, 0, 0, 26));
                        Operation$State.m828drawArrowuDrxG_w(drawScope, androidPath, rect2, j4, floatValue, flingCalculator);
                        Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                        return unit;
                    } catch (Throwable th) {
                        th = th;
                        Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    menuHostHelper = drawContext;
                }
        }
    }

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda0(Object obj, Object obj2, long j, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$2 = obj2;
        this.f$0 = j;
        this.f$3 = obj3;
    }
}
