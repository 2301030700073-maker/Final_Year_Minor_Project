package androidx.compose.ui;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.foundation.BackgroundNode;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.AnchoredDraggableState$anchoredDragScope$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerInputResetException;
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
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.BrushStyle;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Modifier {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Element extends Modifier {
    }

    boolean all(Function1 function1);

    Object foldIn(Object obj, Function2 function2);

    Modifier then(Modifier modifier);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.ui.Modifier$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$maxIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height, i2));
            }
            return measurePolicy.mo108measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        }

        public static int $default$maxIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo108measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        }

        public static TextForegroundStyle $default$merge(TextForegroundStyle textForegroundStyle, TextForegroundStyle textForegroundStyle2) {
            boolean z = textForegroundStyle2 instanceof BrushStyle;
            if (!z || !(textForegroundStyle instanceof BrushStyle)) {
                return (!z || (textForegroundStyle instanceof BrushStyle)) ? (z || !(textForegroundStyle instanceof BrushStyle)) ? textForegroundStyle2.takeOrElse(new ImageLoader$Builder$$ExternalSyntheticLambda1(11, textForegroundStyle)) : textForegroundStyle : textForegroundStyle2;
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
            return measurePolicy.mo108measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        }

        public static int $default$minIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo108measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        }

        /* renamed from: $default$roundToPx-0680j_4, reason: not valid java name */
        public static int m388$default$roundToPx0680j_4(Density density, float f) {
            float mo177toPx0680j_4 = density.mo177toPx0680j_4(f);
            if (Float.isInfinite(mo177toPx0680j_4)) {
                return Integer.MAX_VALUE;
            }
            return Math.round(mo177toPx0680j_4);
        }

        public static Modifier $default$then(Modifier modifier, Modifier modifier2) {
            return modifier2 == Companion.$$INSTANCE ? modifier : new CombinedModifier(modifier, modifier2);
        }

        /* renamed from: $default$toDp-GaN1DYA, reason: not valid java name */
        public static float m389$default$toDpGaN1DYA(long j, Density density) {
            float m773getValueimpl;
            float fontScale;
            if (!TextUnitType.m776equalsimpl0(TextUnit.m772getTypeUIouoOA(j), 4294967296L)) {
                InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() >= 1.03f) {
                FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
                m773getValueimpl = TextUnit.m773getValueimpl(j);
                if (forScale != null) {
                    return forScale.convertSpToDp(m773getValueimpl);
                }
                fontScale = density.getFontScale();
            } else {
                m773getValueimpl = TextUnit.m773getValueimpl(j);
                fontScale = density.getFontScale();
            }
            return fontScale * m773getValueimpl;
        }

        /* renamed from: $default$toDpSize-k-rfVVM, reason: not valid java name */
        public static long m390$default$toDpSizekrfVVM(long j, Density density) {
            if (j != 9205357640488583168L) {
                return OperationKt.m835DpSizeYgX7TsA(density.mo173toDpu2uoSUM(Float.intBitsToFloat((int) (j >> 32))), density.mo173toDpu2uoSUM(Float.intBitsToFloat((int) (j & 4294967295L))));
            }
            return 9205357640488583168L;
        }

        /* renamed from: $default$toPx--R2X_6o, reason: not valid java name */
        public static float m391$default$toPxR2X_6o(long j, Density density) {
            if (!TextUnitType.m776equalsimpl0(TextUnit.m772getTypeUIouoOA(j), 4294967296L)) {
                InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            return density.mo177toPx0680j_4(density.mo172toDpGaN1DYA(j));
        }

        /* renamed from: $default$toSize-XkaWNTQ, reason: not valid java name */
        public static long m392$default$toSizeXkaWNTQ(long j, Density density) {
            if (j == 9205357640488583168L) {
                return 9205357640488583168L;
            }
            float mo177toPx0680j_4 = density.mo177toPx0680j_4(DpSize.m749getWidthD9Ej5fM(j));
            float mo177toPx0680j_42 = density.mo177toPx0680j_4(DpSize.m748getHeightD9Ej5fM(j));
            return (Float.floatToRawIntBits(mo177toPx0680j_4) << 32) | (Float.floatToRawIntBits(mo177toPx0680j_42) & 4294967295L);
        }

        /* renamed from: $default$toSp-0xMU5do, reason: not valid java name */
        public static long m393$default$toSp0xMU5do(Density density, float f) {
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() < 1.03f) {
                return SQLite.pack(f / density.getFontScale(), 4294967296L);
            }
            FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
            return SQLite.pack(forScale != null ? forScale.convertDpToSp(f) : f / density.getFontScale(), 4294967296L);
        }

        /* renamed from: $private$offsetSize-PENXr5M, reason: not valid java name */
        public static long m394$private$offsetSizePENXr5M(long j, long j2) {
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
            return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        }

        /* renamed from: addPath-Uv8p0NA$default, reason: not valid java name */
        public static void m395addPathUv8p0NA$default(AndroidPath androidPath, AndroidPath androidPath2) {
            Path path = androidPath.internalPath;
            if (androidPath2 instanceof AndroidPath) {
                path.addPath(androidPath2.internalPath, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
            }
        }

        public static void addRoundRect$default(AndroidPath androidPath, RoundRect roundRect) {
            if (androidPath.rectF == null) {
                androidPath.rectF = new RectF();
            }
            RectF rectF = androidPath.rectF;
            rectF.getClass();
            float f = roundRect.left;
            long j = roundRect.bottomLeftCornerRadius;
            long j2 = roundRect.bottomRightCornerRadius;
            long j3 = roundRect.topRightCornerRadius;
            long j4 = roundRect.topLeftCornerRadius;
            rectF.set(f, roundRect.top, roundRect.right, roundRect.bottom);
            if (androidPath.radii == null) {
                androidPath.radii = new float[8];
            }
            float[] fArr = androidPath.radii;
            fArr.getClass();
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
            path.addRoundRect(rectF2, fArr2, Path.Direction.CCW);
        }

        public static int calculateDistanceTo$default(LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$1, int i) {
            Object obj;
            LazyListMeasureResult layoutInfo = ((LazyListState) lazyListScrollScopeKt$LazyLayoutScrollScope$1.$state).getLayoutInfo();
            if (!layoutInfo.visibleItemsInfo.isEmpty()) {
                int firstVisibleItemIndex = lazyListScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex();
                if (i > lazyListScrollScopeKt$LazyLayoutScrollScope$1.getLastVisibleItemIndex() || firstVisibleItemIndex > i) {
                    return ((i - lazyListScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex()) * Utf8.SafeProcessor.visibleItemsAverageSize(layoutInfo)) - ((LazyListState) lazyListScrollScopeKt$LazyLayoutScrollScope$1.$state).scrollPosition.scrollOffset$delegate.getIntValue();
                }
                List list = layoutInfo.visibleItemsInfo;
                int size = list.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        obj = null;
                        break;
                    }
                    obj = list.get(i2);
                    if (((LazyListMeasuredItem) obj).index == i) {
                        break;
                    }
                    i2++;
                }
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) obj;
                if (lazyListMeasuredItem != null) {
                    return lazyListMeasuredItem.offset;
                }
            }
            return 0;
        }

        public static void dragTo$default(AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1, float f) {
            AnchoredDraggableState anchoredDraggableState = anchoredDraggableState$anchoredDragScope$1.this$0;
            anchoredDraggableState.offset$delegate.setFloatValue(f);
            anchoredDraggableState.lastVelocity$delegate.setFloatValue(0.0f);
        }

        /* renamed from: drawCircle-VaOC9Bg$default, reason: not valid java name */
        public static /* synthetic */ void m397drawCircleVaOC9Bg$default(DrawScope drawScope, long j, float f, long j2, DrawStyle drawStyle, int i) {
            if ((i & 4) != 0) {
                j2 = drawScope.mo533getCenterF1C5BW0();
            }
            long j3 = j2;
            if ((i & 16) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo524drawCircleVaOC9Bg(j, f, j3, drawStyle);
        }

        /* renamed from: drawPath-GBMwjPU$default, reason: not valid java name */
        public static /* synthetic */ void m399drawPathGBMwjPU$default(DrawScope drawScope, AndroidPath androidPath, Brush brush, float f, Stroke stroke, int i) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            float f2 = f;
            DrawStyle drawStyle = stroke;
            if ((i & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo528drawPathGBMwjPU(androidPath, brush, f2, drawStyle, (i & 32) != 0 ? 3 : 0);
        }

        /* renamed from: drawPath-LG529CI$default, reason: not valid java name */
        public static /* synthetic */ void m400drawPathLG529CI$default(DrawScope drawScope, AndroidPath androidPath, long j, float f, DrawStyle drawStyle, int i) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            drawScope.mo529drawPathLG529CI(androidPath, j, f, drawStyle);
        }

        /* renamed from: drawRect-AsUm42w$default, reason: not valid java name */
        public static void m401drawRectAsUm42w$default(LayoutNodeDrawScope layoutNodeDrawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, int i) {
            long j3 = (i & 2) != 0 ? 0L : j;
            long m394$private$offsetSizePENXr5M = (i & 4) != 0 ? m394$private$offsetSizePENXr5M(layoutNodeDrawScope.mo534getSizeNHjbRc(), j3) : j2;
            float f2 = (i & 8) != 0 ? 1.0f : f;
            DrawStyle drawStyle2 = (i & 16) != 0 ? Fill.INSTANCE : drawStyle;
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
            int i2 = (int) (j3 >> 32);
            int i3 = (int) (j3 & 4294967295L);
            canvasDrawScope.drawParams.canvas.drawRect(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (m394$private$offsetSizePENXr5M >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (m394$private$offsetSizePENXr5M & 4294967295L)) + Float.intBitsToFloat(i3), canvasDrawScope.m522configurePaintswdJneE(brush, drawStyle2, f2, null, 3, 1));
        }

        /* renamed from: drawRect-n-J9OG0$default, reason: not valid java name */
        public static /* synthetic */ void m402drawRectnJ9OG0$default(DrawScope drawScope, long j, long j2, float f, ColorFilter colorFilter, int i) {
            if ((i & 4) != 0) {
                j2 = m394$private$offsetSizePENXr5M(drawScope.mo534getSizeNHjbRc(), 0L);
            }
            drawScope.mo530drawRectnJ9OG0(j, 0L, j2, (i & 8) != 0 ? 1.0f : f, (i & 32) != 0 ? null : colorFilter, (i & 64) != 0 ? 3 : 0);
        }

        /* renamed from: drawRoundRect-ZuiqVtQ$default, reason: not valid java name */
        public static /* synthetic */ void m403drawRoundRectZuiqVtQ$default(DrawScope drawScope, Brush brush, long j, long j2, long j3, DrawStyle drawStyle, int i) {
            if ((i & 2) != 0) {
                j = 0;
            }
            long j4 = j;
            drawScope.mo531drawRoundRectZuiqVtQ(brush, j4, (i & 4) != 0 ? m394$private$offsetSizePENXr5M(drawScope.mo534getSizeNHjbRc(), j4) : j2, j3, 1.0f, (i & 32) != 0 ? Fill.INSTANCE : drawStyle);
        }

        public static void item$default(LazyGridIntervalContent lazyGridIntervalContent, Function1 function1, ComposableLambdaImpl composableLambdaImpl) {
            int i = 1;
            lazyGridIntervalContent.intervals.addInterval(1, new LazyGridInterval(null, new Updater$$ExternalSyntheticLambda0(i, function1), new ScrollState$$ExternalSyntheticLambda4(10), new ComposableLambdaImpl(-291643851, new CoilImageKt$$ExternalSyntheticLambda11(i, composableLambdaImpl), true)));
            lazyGridIntervalContent.hasCustomSpans = true;
        }

        public static String m(int i, int i2, String str, String str2) {
            return str + i + str2 + i2;
        }

        public static /* synthetic */ String name(int i) {
            switch (i) {
                case 1:
                    return "NONE";
                case 2:
                    return "LEFT";
                case 3:
                    return "TOP";
                case 4:
                    return "RIGHT";
                case 5:
                    return "BOTTOM";
                case 6:
                    return "BASELINE";
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return "CENTER";
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return "CENTER_X";
                case 9:
                    return "CENTER_Y";
                default:
                    throw null;
            }
        }

        public static int m(TextStyle textStyle, int i, int i2) {
            return (textStyle.hashCode() + i) * i2;
        }

        public static Object m(int i, ArrayList arrayList) {
            return arrayList.remove(arrayList.size() - i);
        }

        public static int m(int i, String str, int i2) {
            return (str.hashCode() + i) * i2;
        }

        public static String m(String str, Fragment fragment, String str2) {
            return str + fragment + str2;
        }

        public static StringBuilder m(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            return sb;
        }

        public static Headers.Builder m(float f, float f2) {
            Headers.Builder builder = new Headers.Builder(1);
            builder.moveTo(f, f2);
            return builder;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static SerializationException m405m(String str) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateExceptionForNullCheck(str);
            return new SerializationException();
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

        public static void m(StringBuilder sb, int i, String str, int i2, String str2) {
            sb.append(i);
            sb.append(str);
            sb.append(i2);
            sb.append(str2);
        }

        public static void m(StringBuilder sb, String str, String str2, String str3, String str4) {
            sb.append(str);
            sb.append(str2);
            sb.append(str3);
            sb.append(str4);
        }

        public static void m(Headers.Builder builder, float f, float f2, float f3, float f4) {
            builder.lineToRelative(f, f2);
            builder.lineToRelative(f3, f4);
            builder.close();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Node implements DelegatableNode {
        public Node child;
        public NodeCoordinator coordinator;
        public FocusTargetNode$invalidateFocus$1 detachedListener;
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
            ContextScope CoroutineScope = JobKt.CoroutineScope(((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().plus(new JobImpl((Job) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().get(Job.Key.$$INSTANCE))));
            this.scope = CoroutineScope;
            return CoroutineScope;
        }

        public boolean getShouldAutoInvalidate() {
            return !(this instanceof BackgroundNode);
        }

        public void markAsAttached$ui() {
            if (this.isAttached) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("node attached multiple times");
            }
            if (this.coordinator == null) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("attach invoked on a node without a coordinator");
            }
            this.isAttached = true;
            this.onAttachRunExpected = true;
        }

        public void markAsDetached$ui() {
            if (!this.isAttached) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Cannot detach a node that is not attached");
            }
            if (this.onAttachRunExpected) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.onDetachRunExpected) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() before markAsDetached()");
            }
            int i = 0;
            this.isAttached = false;
            ContextScope contextScope = this.scope;
            if (contextScope != null) {
                JobKt.cancel(contextScope, new PointerInputResetException("The Modifier.Node was detached", i));
                this.scope = null;
            }
        }

        public void reset$ui() {
            if (!this.isAttached) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("reset() called on an unattached node");
            }
            onReset();
        }

        public void runAttachLifecycle$ui() {
            if (!this.isAttached) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.onAttachRunExpected) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.onAttachRunExpected = false;
            onAttach();
            this.onDetachRunExpected = true;
        }

        public void runDetachLifecycle$ui() {
            if (!this.isAttached) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("node detached multiple times");
            }
            if (this.coordinator == null) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("detach invoked on a node without a coordinator");
            }
            if (!this.onDetachRunExpected) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.onDetachRunExpected = false;
            FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1 = this.detachedListener;
            if (focusTargetNode$invalidateFocus$1 != null) {
                focusTargetNode$invalidateFocus$1.invoke();
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

        public /* synthetic */ void onDensityChange() {
        }

        public void onDetach() {
        }

        public /* synthetic */ void onLayoutDirectionChange() {
        }

        public void onReset() {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
