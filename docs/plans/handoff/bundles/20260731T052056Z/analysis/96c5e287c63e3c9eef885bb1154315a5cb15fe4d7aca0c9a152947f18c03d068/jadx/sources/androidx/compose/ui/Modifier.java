package androidx.compose.ui;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.foundation.BackgroundNode;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path$Direction;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerInputResetException;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.IntrinsicMinMax;
import androidx.compose.ui.layout.IntrinsicWidthHeight;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.style.BrushStyle;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.datastore.preferences.protobuf.CodedOutputStream$OutputStreamEncoder;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import coil3.network.HttpException;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Modifier {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Element extends Modifier {
    }

    boolean all(Function1 function1);

    Object foldIn(Object obj, Function2 function2);

    Modifier then(Modifier modifier);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Node implements DelegatableNode {
        public Node child;
        public NodeCoordinator coordinator;
        public KTypeImpl$arguments$2 detachedListener;
        public boolean insertedNodeAwaitingAttachForInvalidation;
        public boolean isAttached;
        public int kindSet;
        public boolean onAttachRunExpected;
        public boolean onDetachRunExpected;
        public ObserverNodeOwnerScope ownerScope;
        public Node parent;
        public ContextScope scope;
        public boolean updatedNodeAwaitingAttachForInvalidation;
        public Node node = this;
        public int aggregateChildKindSet = -1;

        public final CoroutineScope getCoroutineScope() {
            ContextScope contextScope = this.scope;
            if (contextScope != null) {
                return contextScope;
            }
            ContextScope CoroutineScope = AwaitKt.CoroutineScope(((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().plus(new JobImpl((Job) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().get(Job.Key.$$INSTANCE))));
            this.scope = CoroutineScope;
            return CoroutineScope;
        }

        public boolean getShouldAutoInvalidate() {
            return !(this instanceof BackgroundNode);
        }

        public void markAsAttached$ui() {
            if (this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node attached multiple times");
            }
            if (this.coordinator == null) {
                InlineClassHelperKt.throwIllegalStateException("attach invoked on a node without a coordinator");
            }
            this.isAttached = true;
            this.onAttachRunExpected = true;
        }

        public void markAsDetached$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Cannot detach a node that is not attached");
            }
            if (this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() before markAsDetached()");
            }
            int i = 0;
            this.isAttached = false;
            ContextScope contextScope = this.scope;
            if (contextScope != null) {
                AwaitKt.cancel(contextScope, new PointerInputResetException(i, "The Modifier.Node was detached"));
                this.scope = null;
            }
        }

        public void reset$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("reset() called on an unattached node");
            }
            onReset();
        }

        public void runAttachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.onAttachRunExpected = false;
            onAttach();
            this.onDetachRunExpected = true;
        }

        public void runDetachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node detached multiple times");
            }
            if (this.coordinator == null) {
                InlineClassHelperKt.throwIllegalStateException("detach invoked on a node without a coordinator");
            }
            if (!this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.onDetachRunExpected = false;
            KTypeImpl$arguments$2 kTypeImpl$arguments$2 = this.detachedListener;
            if (kTypeImpl$arguments$2 != null) {
                kTypeImpl$arguments$2.invoke();
            }
            onDetach();
        }

        public void setAsDelegateTo$ui(Node node) {
            this.node = node;
        }

        public void updateCoordinator$ui(NodeCoordinator nodeCoordinator) {
            this.coordinator = nodeCoordinator;
        }

        public void onAttach() {
        }

        public void onDensityChange() {
        }

        public void onDetach() {
        }

        public void onLayoutDirectionChange() {
        }

        public void onReset() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.ui.Modifier$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$maxIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height, i2));
            }
            return measurePolicy.mo15measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        }

        public static int $default$maxIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo15measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        }

        public static TextForegroundStyle $default$merge(TextForegroundStyle textForegroundStyle, TextForegroundStyle textForegroundStyle2) {
            boolean z = textForegroundStyle2 instanceof BrushStyle;
            if (!z || !(textForegroundStyle instanceof BrushStyle)) {
                return (!z || (textForegroundStyle instanceof BrushStyle)) ? (z || !(textForegroundStyle instanceof BrushStyle)) ? textForegroundStyle2.takeOrElse(new NavBackStackEntry$$ExternalSyntheticLambda0(28, textForegroundStyle)) : textForegroundStyle : textForegroundStyle2;
            }
            BrushStyle brushStyle = (BrushStyle) textForegroundStyle2;
            ShaderBrush shaderBrush = brushStyle.value;
            float f = brushStyle.alpha;
            if (Float.isNaN(f)) {
                f = ((BrushStyle) textForegroundStyle).alpha;
            }
            return new BrushStyle(shaderBrush, f);
        }

        public static int $default$minIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height, i2));
            }
            return measurePolicy.mo15measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        }

        public static int $default$minIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo15measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        }

        /* renamed from: $default$roundToPx-0680j_4, reason: not valid java name */
        public static int m334$default$roundToPx0680j_4(Density density, float f) {
            float mo87toPx0680j_4 = density.mo87toPx0680j_4(f);
            if (Float.isInfinite(mo87toPx0680j_4)) {
                return Integer.MAX_VALUE;
            }
            return Math.round(mo87toPx0680j_4);
        }

        public static Modifier $default$then(Modifier modifier, Modifier modifier2) {
            return modifier2 == Companion.$$INSTANCE ? modifier : new CombinedModifier(modifier, modifier2);
        }

        /* renamed from: $default$toDp-GaN1DYA, reason: not valid java name */
        public static float m335$default$toDpGaN1DYA(long j, Density density) {
            float m725getValueimpl;
            float fontScale;
            if (!TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j), 4294967296L)) {
                androidx.compose.ui.unit.InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() >= 1.03f) {
                FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
                m725getValueimpl = TextUnit.m725getValueimpl(j);
                if (forScale != null) {
                    return forScale.convertSpToDp(m725getValueimpl);
                }
                fontScale = density.getFontScale();
            } else {
                m725getValueimpl = TextUnit.m725getValueimpl(j);
                fontScale = density.getFontScale();
            }
            return fontScale * m725getValueimpl;
        }

        /* renamed from: $default$toDpSize-k-rfVVM, reason: not valid java name */
        public static long m336$default$toDpSizekrfVVM(long j, Density density) {
            if (j != 9205357640488583168L) {
                return DpKt.m695DpSizeYgX7TsA(density.mo83toDpu2uoSUM(Float.intBitsToFloat((int) (j >> 32))), density.mo83toDpu2uoSUM(Float.intBitsToFloat((int) (j & 4294967295L))));
            }
            return 9205357640488583168L;
        }

        /* renamed from: $default$toPx--R2X_6o, reason: not valid java name */
        public static float m337$default$toPxR2X_6o(long j, Density density) {
            if (!TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j), 4294967296L)) {
                androidx.compose.ui.unit.InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            return density.mo87toPx0680j_4(density.mo82toDpGaN1DYA(j));
        }

        /* renamed from: $default$toSize-XkaWNTQ, reason: not valid java name */
        public static long m338$default$toSizeXkaWNTQ(long j, Density density) {
            if (j == 9205357640488583168L) {
                return 9205357640488583168L;
            }
            float mo87toPx0680j_4 = density.mo87toPx0680j_4(DpSize.m712getWidthD9Ej5fM(j));
            float mo87toPx0680j_42 = density.mo87toPx0680j_4(DpSize.m711getHeightD9Ej5fM(j));
            return (Float.floatToRawIntBits(mo87toPx0680j_4) << 32) | (Float.floatToRawIntBits(mo87toPx0680j_42) & 4294967295L);
        }

        /* renamed from: $default$toSp-0xMU5do, reason: not valid java name */
        public static long m339$default$toSp0xMU5do(Density density, float f) {
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() < 1.03f) {
                return ContextsKt.pack(f / density.getFontScale(), 4294967296L);
            }
            FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
            return ContextsKt.pack(forScale != null ? forScale.convertDpToSp(f) : f / density.getFontScale(), 4294967296L);
        }

        /* renamed from: $private$offsetSize-PENXr5M, reason: not valid java name */
        public static long m340$private$offsetSizePENXr5M(long j, long j2) {
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
            return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        }

        /* renamed from: addPath-Uv8p0NA$default, reason: not valid java name */
        public static void m341addPathUv8p0NA$default(AndroidPath androidPath, AndroidPath androidPath2) {
            Path path = androidPath.internalPath;
            if (androidPath2 instanceof AndroidPath) {
                path.addPath(androidPath2.internalPath, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
            } else {
                Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
            }
        }

        public static void addRect$default(AndroidPath androidPath, Rect rect) {
            Path.Direction direction;
            Path$Direction path$Direction = Path$Direction.CounterClockwise;
            float f = rect.left;
            float f2 = rect.bottom;
            float f3 = rect.right;
            float f4 = rect.top;
            if (Float.isNaN(f) || Float.isNaN(f4) || Float.isNaN(f3) || Float.isNaN(f2)) {
                AndroidPath_androidKt.throwIllegalStateException("Invalid rectangle, make sure no value is NaN");
            }
            RectF rectF = androidPath.rectF;
            if (rectF == null) {
                rectF = new RectF();
                androidPath.rectF = rectF;
            }
            rectF.set(f, f4, f3, f2);
            Path path = androidPath.internalPath;
            RectF rectF2 = androidPath.rectF;
            rectF2.getClass();
            int i = AndroidPath_androidKt.WhenMappings.$EnumSwitchMapping$0[path$Direction.ordinal()];
            if (i == 1) {
                direction = Path.Direction.CCW;
            } else {
                if (i != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                direction = Path.Direction.CW;
            }
            path.addRect(rectF2, direction);
        }

        public static void addRoundRect$default(AndroidPath androidPath, RoundRect roundRect) {
            Path.Direction direction;
            Path$Direction path$Direction = Path$Direction.CounterClockwise;
            RectF rectF = androidPath.rectF;
            if (rectF == null) {
                rectF = new RectF();
                androidPath.rectF = rectF;
            }
            float f = roundRect.left;
            long j = roundRect.bottomLeftCornerRadius;
            long j2 = roundRect.bottomRightCornerRadius;
            long j3 = roundRect.topRightCornerRadius;
            long j4 = roundRect.topLeftCornerRadius;
            rectF.set(f, roundRect.top, roundRect.right, roundRect.bottom);
            float[] fArr = androidPath.radii;
            if (fArr == null) {
                fArr = new float[8];
                androidPath.radii = fArr;
            }
            fArr[0] = Float.intBitsToFloat((int) (j4 >> 32));
            fArr[1] = Float.intBitsToFloat((int) (j4 & 4294967295L));
            fArr[2] = Float.intBitsToFloat((int) (j3 >> 32));
            fArr[3] = Float.intBitsToFloat((int) (j3 & 4294967295L));
            fArr[4] = Float.intBitsToFloat((int) (j2 >> 32));
            fArr[5] = Float.intBitsToFloat((int) (j2 & 4294967295L));
            fArr[6] = Float.intBitsToFloat((int) (j >> 32));
            fArr[7] = Float.intBitsToFloat((int) (j & 4294967295L));
            Path path = androidPath.internalPath;
            RectF rectF2 = androidPath.rectF;
            rectF2.getClass();
            float[] fArr2 = androidPath.radii;
            fArr2.getClass();
            int i = AndroidPath_androidKt.WhenMappings.$EnumSwitchMapping$0[path$Direction.ordinal()];
            if (i == 1) {
                direction = Path.Direction.CCW;
            } else {
                if (i != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                direction = Path.Direction.CW;
            }
            path.addRoundRect(rectF2, fArr2, direction);
        }

        /* renamed from: drawCircle-VaOC9Bg$default, reason: not valid java name */
        public static void m343drawCircleVaOC9Bg$default(DrawScope drawScope, long j, float f, long j2, DrawStyle drawStyle, int i) {
            if ((i & 4) != 0) {
                j2 = drawScope.mo475getCenterF1C5BW0();
            }
            long j3 = j2;
            if ((i & 16) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo466drawCircleVaOC9Bg(j, f, j3, drawStyle);
        }

        /* renamed from: drawImage-gbVJVH8$default, reason: not valid java name */
        public static void m345drawImagegbVJVH8$default(DrawScope drawScope, AndroidImageBitmap androidImageBitmap, long j, float f, BlendModeColorFilter blendModeColorFilter, int i) {
            if ((i & 2) != 0) {
                j = 0;
            }
            long j2 = j;
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            drawScope.mo468drawImagegbVJVH8(androidImageBitmap, j2, f, blendModeColorFilter, 3);
        }

        /* renamed from: drawPath-GBMwjPU$default, reason: not valid java name */
        public static void m347drawPathGBMwjPU$default(DrawScope drawScope, AndroidPath androidPath, Brush brush, float f, Stroke stroke, int i) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            float f2 = f;
            DrawStyle drawStyle = stroke;
            if ((i & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo470drawPathGBMwjPU(androidPath, brush, f2, drawStyle, (i & 32) != 0 ? 3 : 0);
        }

        /* renamed from: drawPath-LG529CI$default, reason: not valid java name */
        public static void m348drawPathLG529CI$default(DrawScope drawScope, AndroidPath androidPath, long j, float f, Stroke stroke, int i) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            float f2 = f;
            DrawStyle drawStyle = stroke;
            if ((i & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo471drawPathLG529CI(androidPath, j, f2, drawStyle);
        }

        /* renamed from: drawRect-AsUm42w$default, reason: not valid java name */
        public static void m349drawRectAsUm42w$default(DrawScope drawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, BlendModeColorFilter blendModeColorFilter, int i) {
            if ((i & 2) != 0) {
                j = 0;
            }
            long j3 = j;
            drawScope.mo472drawRectAsUm42w(brush, j3, (i & 4) != 0 ? m340$private$offsetSizePENXr5M(drawScope.mo476getSizeNHjbRc(), j3) : j2, (i & 8) != 0 ? 1.0f : f, (i & 16) != 0 ? Fill.INSTANCE : drawStyle, (i & 32) != 0 ? null : blendModeColorFilter, 3);
        }

        /* renamed from: drawRect-n-J9OG0$default, reason: not valid java name */
        public static void m350drawRectnJ9OG0$default(DrawScope drawScope, long j, long j2, float f, BlendModeColorFilter blendModeColorFilter, int i) {
            if ((i & 4) != 0) {
                j2 = m340$private$offsetSizePENXr5M(drawScope.mo476getSizeNHjbRc(), 0L);
            }
            drawScope.mo473drawRectnJ9OG0(j, 0L, j2, (i & 8) != 0 ? 1.0f : f, (i & 32) != 0 ? null : blendModeColorFilter, (i & 64) != 0 ? 3 : 0);
        }

        /* renamed from: drawRoundRect-ZuiqVtQ$default, reason: not valid java name */
        public static void m351drawRoundRectZuiqVtQ$default(LayoutNodeDrawScope layoutNodeDrawScope, Brush brush, long j, long j2, long j3, DrawStyle drawStyle, int i) {
            if ((i & 2) != 0) {
                j = 0;
            }
            long j4 = j;
            layoutNodeDrawScope.m552drawRoundRectZuiqVtQ(brush, j4, (i & 4) != 0 ? m340$private$offsetSizePENXr5M(layoutNodeDrawScope.mo476getSizeNHjbRc(), j4) : j2, j3, 1.0f, (i & 32) != 0 ? Fill.INSTANCE : drawStyle);
        }

        public static String m(String str, String str2, String str3, String str4, String str5) {
            return str + str2 + str3 + str4 + str5;
        }

        public static int m(int i, int i2, int i3, int i4) {
            return CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i) + i2 + i3 + i4;
        }

        public static int m(int i, int i2, List list) {
            return (list.hashCode() + i) * i2;
        }

        public static /* synthetic */ int m(long j) {
            return (int) (j ^ (j >>> 32));
        }

        public static HttpException m(GapComposer gapComposer, int i, boolean z) {
            gapComposer.startReplaceGroup(i);
            gapComposer.end(z);
            return new HttpException();
        }

        public static HttpException m(String str) {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck(str);
            return new HttpException();
        }

        public static ClassCastException m(Iterator it) {
            it.next().getClass();
            return new ClassCastException();
        }

        public static String m(int i, int i2, String str, String str2) {
            return str + i + str2 + i2;
        }

        public static String m(String str, String str2) {
            return str + str2;
        }

        public static int m(int i, int i2, int i3) {
            return CodedOutputStream$OutputStreamEncoder.computeTagSize(i) + i2 + i3;
        }

        public static String m(StringBuilder sb, int i, String str) {
            sb.append(i);
            sb.append(str);
            return sb.toString();
        }

        public static String m(StringBuilder sb, String str, char c) {
            sb.append(str);
            sb.append(c);
            return sb.toString();
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m352m(String str, String str2, String str3, String str4, String str5) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(str2);
            sb.append(str3);
            sb.append(str4);
            sb.append(str5);
            return sb;
        }

        public static void m(int i, int i2, int i3, int i4, int i5) {
            Key_androidKt.Key(i);
            Key_androidKt.Key(i2);
            Key_androidKt.Key(i3);
            Key_androidKt.Key(i4);
            Key_androidKt.Key(i5);
        }

        public static void m(int i, GapComposer gapComposer, int i2, ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1) {
            gapComposer.updateRememberedValue(Integer.valueOf(i));
            gapComposer.apply(Integer.valueOf(i2), composeUiNode$Companion$SetModifier$1);
        }

        public static void m(GapComposer gapComposer, boolean z, boolean z2, boolean z3) {
            gapComposer.end(z);
            gapComposer.end(z2);
            gapComposer.end(z3);
        }

        public static /* synthetic */ void m(Object obj) {
            if (obj == null) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
        }

        public static void m(StringBuilder sb, String str, String str2, String str3, String str4) {
            sb.append(str);
            sb.append(str2);
            sb.append(str3);
            sb.append(str4);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion implements Modifier {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Override // androidx.compose.ui.Modifier
        public final boolean all(Function1 function1) {
            return true;
        }

        public final String toString() {
            return "Modifier";
        }

        @Override // androidx.compose.ui.Modifier
        public final Modifier then(Modifier modifier) {
            return modifier;
        }

        @Override // androidx.compose.ui.Modifier
        public final Object foldIn(Object obj, Function2 function2) {
            return obj;
        }
    }
}
