package androidx.compose.ui.text;

import android.text.Layout;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.scrollcapture.RelativeScroller;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.RegexKt;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v15, types: [org.wikipedia.history.HistoryEntry] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j;
        int i;
        boolean z;
        float f;
        float f2;
        SVG svg;
        long j2;
        Rect rect;
        int i2 = this.$r8$classId;
        final long j3 = this.f$0;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        switch (i2) {
            case 0:
                float[] fArr = (float[]) obj4;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                int i3 = paragraphInfo.startIndex;
                AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                int i4 = paragraphInfo.endIndex;
                int m644getMinimpl = i3 > TextRange.m644getMinimpl(j3) ? paragraphInfo.startIndex : TextRange.m644getMinimpl(j3);
                if (i4 >= TextRange.m643getMaximpl(j3)) {
                    i4 = TextRange.m643getMaximpl(j3);
                }
                long TextRange = ParagraphKt.TextRange(paragraphInfo.toLocalIndex(m644getMinimpl), paragraphInfo.toLocalIndex(i4));
                int i5 = ref$IntRef.element;
                TextLayout textLayout = androidParagraph.layout;
                int m644getMinimpl2 = TextRange.m644getMinimpl(TextRange);
                int m643getMaximpl = TextRange.m643getMaximpl(TextRange);
                Layout layout = textLayout.layout;
                int length = layout.getText().length();
                if (m644getMinimpl2 < 0) {
                    InlineClassHelperKt.throwIllegalArgumentException("startOffset must be > 0");
                }
                if (m644getMinimpl2 >= length) {
                    InlineClassHelperKt.throwIllegalArgumentException("startOffset must be less than text length");
                }
                if (m643getMaximpl <= m644getMinimpl2) {
                    InlineClassHelperKt.throwIllegalArgumentException("endOffset must be greater than startOffset");
                }
                if (m643getMaximpl > length) {
                    InlineClassHelperKt.throwIllegalArgumentException("endOffset must be smaller or equal to text length");
                }
                if (fArr.length - i5 < (m643getMaximpl - m644getMinimpl2) * 4) {
                    InlineClassHelperKt.throwIllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
                }
                int lineForOffset = textLayout.getLineForOffset(m644getMinimpl2);
                int lineForOffset2 = textLayout.getLineForOffset(m643getMaximpl - 1);
                RelativeScroller relativeScroller = new RelativeScroller(textLayout);
                if (lineForOffset <= lineForOffset2) {
                    while (true) {
                        int lineStart = layout.getLineStart(lineForOffset);
                        j = TextRange;
                        int lineEnd = textLayout.getLineEnd(lineForOffset);
                        int max = Math.max(m644getMinimpl2, lineStart);
                        int min = Math.min(m643getMaximpl, lineEnd);
                        float lineTop = textLayout.getLineTop(lineForOffset);
                        float lineBottom = textLayout.getLineBottom(lineForOffset);
                        boolean z2 = layout.getParagraphDirection(lineForOffset) == 1;
                        int i6 = i5;
                        int i7 = max;
                        while (i7 < min) {
                            boolean isRtlCharAt = layout.isRtlCharAt(i7);
                            if (!z2 || isRtlCharAt) {
                                i = min;
                                if (z2 && isRtlCharAt) {
                                    float f3 = relativeScroller.get(i7, false, false, false);
                                    z = z2;
                                    f = relativeScroller.get(i7 + 1, true, true, false);
                                    f2 = f3;
                                } else {
                                    z = z2;
                                    if (z || !isRtlCharAt) {
                                        f = relativeScroller.get(i7, false, false, false);
                                        f2 = relativeScroller.get(i7 + 1, true, true, false);
                                    } else {
                                        f2 = relativeScroller.get(i7, false, false, true);
                                        f = relativeScroller.get(i7 + 1, true, true, true);
                                    }
                                }
                                fArr[i6] = f;
                                fArr[i6 + 1] = lineTop;
                                fArr[i6 + 2] = f2;
                                fArr[i6 + 3] = lineBottom;
                                i6 += 4;
                                i7++;
                                min = i;
                                z2 = z;
                            } else {
                                i = min;
                                f = relativeScroller.get(i7, false, false, true);
                                z = z2;
                                f2 = relativeScroller.get(i7 + 1, true, true, true);
                            }
                            fArr[i6] = f;
                            fArr[i6 + 1] = lineTop;
                            fArr[i6 + 2] = f2;
                            fArr[i6 + 3] = lineBottom;
                            i6 += 4;
                            i7++;
                            min = i;
                            z2 = z;
                        }
                        if (lineForOffset != lineForOffset2) {
                            lineForOffset++;
                            TextRange = j;
                            i5 = i6;
                        }
                    }
                } else {
                    j = TextRange;
                }
                int m642getLengthimpl = (TextRange.m642getLengthimpl(j) * 4) + ref$IntRef.element;
                for (int i8 = ref$IntRef.element; i8 < m642getLengthimpl; i8 += 4) {
                    int i9 = i8 + 1;
                    float f4 = fArr[i9];
                    float f5 = ref$FloatRef.element;
                    fArr[i9] = f4 + f5;
                    int i10 = i8 + 3;
                    fArr[i10] = fArr[i10] + f5;
                }
                ref$IntRef.element = m642getLengthimpl;
                ref$FloatRef.element = androidParagraph.getHeight() + ref$FloatRef.element;
                return unit;
            case 1:
                Rect rect2 = (Rect) obj4;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                long j4 = this.f$0;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                float f6 = rect2.left;
                float f7 = rect2.top;
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(f6, f7);
                try {
                    layoutNodeDrawScope.mo467drawImageAZ2fEMs((AndroidImageBitmap) ref$ObjectRef.element, 0L, j4, (r22 & 16) != 0 ? j4 : 0L, (r22 & 32) != 0 ? 1.0f : RecyclerView.DECELERATION_RATE, blendModeColorFilter, (r22 & 512) != 0 ? 1 : 0);
                    return unit;
                } finally {
                    ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(-f6, -f7);
                }
            case 2:
                final ArrayList arrayList = (ArrayList) obj3;
                final LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl = (LazyLayoutMeasureScopeImpl) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        boolean z3;
                        boolean z4;
                        List list;
                        int i11;
                        GraphicsLayer graphicsLayer;
                        Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj5;
                        ArrayList arrayList2 = arrayList;
                        int size = arrayList2.size();
                        int i12 = 0;
                        while (i12 < size) {
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) arrayList2.get(i12);
                            boolean isLookingAhead = lazyLayoutMeasureScopeImpl.subcomposeMeasureScope.isLookingAhead();
                            boolean z5 = lazyStaggeredGridMeasuredItem.isVertical;
                            if (lazyStaggeredGridMeasuredItem.mainAxisLayoutSize == Integer.MIN_VALUE) {
                                androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
                            }
                            List list2 = lazyStaggeredGridMeasuredItem.placeables;
                            int size2 = list2.size();
                            int i13 = 0;
                            while (i13 < size2) {
                                Placeable placeable = (Placeable) list2.get(i13);
                                int i14 = lazyStaggeredGridMeasuredItem.minMainAxisOffset - (z5 ? placeable.height : placeable.width);
                                int i15 = lazyStaggeredGridMeasuredItem.maxMainAxisOffset;
                                int i16 = i12;
                                long j5 = lazyStaggeredGridMeasuredItem.offset;
                                ArrayList arrayList3 = arrayList2;
                                int i17 = size;
                                LazyLayoutItemAnimation animation = lazyStaggeredGridMeasuredItem.animator.getAnimation(i13, lazyStaggeredGridMeasuredItem.key);
                                if (animation != null) {
                                    if (isLookingAhead) {
                                        animation.lookaheadOffset = j5;
                                        z3 = isLookingAhead;
                                        z4 = z5;
                                        list = list2;
                                        i11 = size2;
                                    } else {
                                        z3 = isLookingAhead;
                                        z4 = z5;
                                        list = list2;
                                        i11 = size2;
                                        long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(!IntOffset.m715equalsimpl0(animation.lookaheadOffset, 9223372034707292159L) ? animation.lookaheadOffset : j5, ((IntOffset) animation.placementDelta$delegate.getValue()).packedValue);
                                        if ((lazyStaggeredGridMeasuredItem.m171getMainAxisgyyYBs(j5) <= i14 && lazyStaggeredGridMeasuredItem.m171getMainAxisgyyYBs(m717plusqkQi6aY) <= i14) || (lazyStaggeredGridMeasuredItem.m171getMainAxisgyyYBs(j5) >= i15 && lazyStaggeredGridMeasuredItem.m171getMainAxisgyyYBs(m717plusqkQi6aY) >= i15)) {
                                            animation.cancelPlacementAnimation();
                                        }
                                        j5 = m717plusqkQi6aY;
                                    }
                                    graphicsLayer = animation.layer;
                                } else {
                                    z3 = isLookingAhead;
                                    z4 = z5;
                                    list = list2;
                                    i11 = size2;
                                    graphicsLayer = null;
                                }
                                long m717plusqkQi6aY2 = IntOffset.m717plusqkQi6aY(j5, j3);
                                if (!z3 && animation != null) {
                                    animation.finalOffset = m717plusqkQi6aY2;
                                }
                                if (graphicsLayer != null) {
                                    Placeable.PlacementScope.m535placeRelativeWithLayeraW9wM$default(placementScope2, placeable, m717plusqkQi6aY2, graphicsLayer);
                                } else {
                                    Placeable.PlacementScope.m534placeRelativeWithLayeraW9wM$default(placementScope2, placeable, m717plusqkQi6aY2);
                                }
                                i13++;
                                isLookingAhead = z3;
                                i12 = i16;
                                arrayList2 = arrayList3;
                                size = i17;
                                z5 = z4;
                                list2 = list;
                                size2 = i11;
                            }
                            i12++;
                        }
                        return Unit.INSTANCE;
                    }
                };
                placementScope.motionFrameOfReferencePlacement = true;
                function1.invoke(placementScope);
                placementScope.motionFrameOfReferencePlacement = false;
                ((LazyStaggeredGridMeasureContext) obj4).state.placementScopeInvalidator.getValue();
                return unit;
            case 3:
                long j5 = this.f$0;
                AndroidPath androidPath = (AndroidPath) obj2;
                DrawScope drawScope = (DrawScope) obj;
                float invoke = ((FloatProducer) obj4).invoke();
                float max2 = (Math.max(Math.min(1.0f, invoke) - 0.4f, RecyclerView.DECELERATION_RATE) * 5.0f) / 3.0f;
                float coerceIn = RegexKt.coerceIn(Math.abs(invoke) - 1.0f, RecyclerView.DECELERATION_RATE, 2.0f);
                float pow = (((0.4f * max2) - 0.25f) + (coerceIn - (((float) Math.pow(coerceIn, 2.0d)) / 4.0f))) * 0.5f;
                float f8 = pow * 360.0f;
                float f9 = ((0.8f * max2) + pow) * 360.0f;
                float min2 = Math.min(1.0f, max2);
                FlingCalculator flingCalculator = new FlingCalculator();
                flingCalculator.friction = f9;
                flingCalculator.magicPhysicalCoefficient = min2;
                float floatValue = ((Number) ((State) obj3).getValue()).floatValue();
                long mo475getCenterF1C5BW0 = drawScope.mo475getCenterF1C5BW0();
                SVG drawContext = drawScope.getDrawContext();
                long m796getSizeNHjbRc = drawContext.m796getSizeNHjbRc();
                drawContext.getCanvas().save();
                try {
                    ((PopupMenu$1) drawContext.rootElement).m6rotateUv8p0NA(pow, mo475getCenterF1C5BW0);
                    float mo87toPx0680j_4 = (drawScope.mo87toPx0680j_4(2.5f) / 2.0f) + drawScope.mo87toPx0680j_4(5.5f);
                    long m759getCenteruvyYCjk = Room.m759getCenteruvyYCjk(drawScope.mo476getSizeNHjbRc());
                    try {
                        int i11 = (int) (m759getCenteruvyYCjk >> 32);
                        try {
                            int i12 = (int) (m759getCenteruvyYCjk & 4294967295L);
                            rect = new Rect(Float.intBitsToFloat(i11) - mo87toPx0680j_4, Float.intBitsToFloat(i12) - mo87toPx0680j_4, Float.intBitsToFloat(i11) + mo87toPx0680j_4, Float.intBitsToFloat(i12) + mo87toPx0680j_4);
                            drawScope.mo465drawArcyD3GUKo(j5, f8, f9 - f8, rect.m392getTopLeftF1C5BW0(), rect.m391getSizeNHjbRc(), (r23 & 64) != 0 ? 1.0f : floatValue, new Stroke(drawScope.mo87toPx0680j_4(2.5f), RecyclerView.DECELERATION_RATE, 0, 0, 26));
                            j2 = m796getSizeNHjbRc;
                        } catch (Throwable th) {
                            th = th;
                            svg = drawContext;
                            j2 = m796getSizeNHjbRc;
                            Animation.CC.m(svg, j2);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        svg = drawContext;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    svg = drawContext;
                    j2 = m796getSizeNHjbRc;
                }
                try {
                    RegexKt.m840drawArrowuDrxG_w(drawScope, androidPath, rect, j5, floatValue, flingCalculator);
                    Animation.CC.m(drawContext, j2);
                    return unit;
                } catch (Throwable th4) {
                    th = th4;
                    svg = drawContext;
                    Animation.CC.m(svg, j2);
                    throw th;
                }
            default:
                String str = (String) obj4;
                String str2 = (String) obj3;
                String str3 = (String) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM HistoryEntry WHERE authority = ? AND lang = ? AND apiTitle = ? AND timestamp = ? LIMIT 1");
                try {
                    prepare.bindText(1, str);
                    prepare.bindText(2, str2);
                    prepare.bindText(3, str3);
                    prepare.bindLong(j3, 4);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "authority");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "source");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "prevId");
                    Long l = null;
                    if (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        String text2 = prepare.getText(columnIndexOrThrow2);
                        String text3 = prepare.getText(columnIndexOrThrow3);
                        String text4 = prepare.getText(columnIndexOrThrow4);
                        long j6 = prepare.getLong(columnIndexOrThrow5);
                        String text5 = prepare.getText(columnIndexOrThrow6);
                        if (!prepare.isNull(columnIndexOrThrow7)) {
                            l = Long.valueOf(prepare.getLong(columnIndexOrThrow7));
                        }
                        Date fromTimestamp = LoginClient.fromTimestamp(l);
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        l = new HistoryEntry(text, text2, text3, text4, j6, text5, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow8), prepare.getLong(columnIndexOrThrow9));
                    }
                    prepare.close();
                    return l;
                } catch (Throwable th5) {
                    prepare.close();
                    throw th5;
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

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda0(String str, String str2, String str3, long j, HistoryEntryDao_Impl historyEntryDao_Impl) {
        this.$r8$classId = 4;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$0 = j;
    }
}
