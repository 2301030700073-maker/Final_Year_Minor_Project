package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Dp;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Border.kt */
/* loaded from: classes.dex */
public final class BorderModifierNode extends DelegatingNode {
    private BorderCache borderCache;
    private Brush brush;
    private final CacheDrawModifierNode drawWithCacheModifierNode;
    private Shape shape;
    private float width;

    public /* synthetic */ BorderModifierNode(float f, Brush brush, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, brush, shape);
    }

    private BorderModifierNode(float f, Brush brush, Shape shape) {
        this.width = f;
        this.brush = brush;
        this.shape = shape;
        this.drawWithCacheModifierNode = (CacheDrawModifierNode) delegate(DrawModifierKt.CacheDrawModifierNode(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$drawWithCacheModifierNode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DrawResult invoke(CacheDrawScope cacheDrawScope) {
                DrawResult drawContentWithoutBorder;
                DrawResult m107drawRectBorderNsqcLGU;
                DrawResult m110drawRoundRectBorderJqoCqck;
                DrawResult drawGenericBorder;
                if (cacheDrawScope.mo213toPx0680j_4(BorderModifierNode.this.m111getWidthD9Ej5fM()) < 0.0f || Size.m1203getMinDimensionimpl(cacheDrawScope.m1085getSizeNHjbRc()) <= 0.0f) {
                    drawContentWithoutBorder = BorderKt.drawContentWithoutBorder(cacheDrawScope);
                    return drawContentWithoutBorder;
                }
                float f2 = 2;
                float min = Math.min(Dp.m2426equalsimpl0(BorderModifierNode.this.m111getWidthD9Ej5fM(), Dp.Companion.m2431getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil(cacheDrawScope.mo213toPx0680j_4(BorderModifierNode.this.m111getWidthD9Ej5fM())), (float) Math.ceil(Size.m1203getMinDimensionimpl(cacheDrawScope.m1085getSizeNHjbRc()) / f2));
                float f3 = min / f2;
                long Offset = OffsetKt.Offset(f3, f3);
                long Size = SizeKt.Size(Size.m1204getWidthimpl(cacheDrawScope.m1085getSizeNHjbRc()) - min, Size.m1202getHeightimpl(cacheDrawScope.m1085getSizeNHjbRc()) - min);
                boolean z = f2 * min > Size.m1203getMinDimensionimpl(cacheDrawScope.m1085getSizeNHjbRc());
                Outline mo128createOutlinePq9zytI = BorderModifierNode.this.getShape().mo128createOutlinePq9zytI(cacheDrawScope.m1085getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope);
                if (mo128createOutlinePq9zytI instanceof Outline.Generic) {
                    BorderModifierNode borderModifierNode = BorderModifierNode.this;
                    drawGenericBorder = borderModifierNode.drawGenericBorder(cacheDrawScope, borderModifierNode.getBrush(), (Outline.Generic) mo128createOutlinePq9zytI, z, min);
                    return drawGenericBorder;
                }
                if (mo128createOutlinePq9zytI instanceof Outline.Rounded) {
                    BorderModifierNode borderModifierNode2 = BorderModifierNode.this;
                    m110drawRoundRectBorderJqoCqck = borderModifierNode2.m110drawRoundRectBorderJqoCqck(cacheDrawScope, borderModifierNode2.getBrush(), (Outline.Rounded) mo128createOutlinePq9zytI, Offset, Size, z, min);
                    return m110drawRoundRectBorderJqoCqck;
                }
                if (!(mo128createOutlinePq9zytI instanceof Outline.Rectangle)) {
                    throw new NoWhenBranchMatchedException();
                }
                m107drawRectBorderNsqcLGU = BorderKt.m107drawRectBorderNsqcLGU(cacheDrawScope, BorderModifierNode.this.getBrush(), Offset, Size, z, min);
                return m107drawRectBorderNsqcLGU;
            }
        }));
    }

    /* renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public final float m111getWidthD9Ej5fM() {
        return this.width;
    }

    /* renamed from: setWidth-0680j_4, reason: not valid java name */
    public final void m112setWidth0680j_4(float f) {
        if (Dp.m2426equalsimpl0(this.width, f)) {
            return;
        }
        this.width = f;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public final Brush getBrush() {
        return this.brush;
    }

    public final void setBrush(Brush brush) {
        if (Intrinsics.areEqual(this.brush, brush)) {
            return;
        }
        this.brush = brush;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public final Shape getShape() {
        return this.shape;
    }

    public final void setShape(Shape shape) {
        if (Intrinsics.areEqual(this.shape, shape)) {
            return;
        }
        this.shape = shape;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d9, code lost:
    
        if (androidx.compose.ui.graphics.ImageBitmapConfig.m1350equalsimpl(r14, r6 != null ? androidx.compose.ui.graphics.ImageBitmapConfig.m1348boximpl(r6.mo1225getConfig_sVssgQ()) : null) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.draw.DrawResult drawGenericBorder(androidx.compose.ui.draw.CacheDrawScope r48, final androidx.compose.ui.graphics.Brush r49, final androidx.compose.ui.graphics.Outline.Generic r50, boolean r51, float r52) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BorderModifierNode.drawGenericBorder(androidx.compose.ui.draw.CacheDrawScope, androidx.compose.ui.graphics.Brush, androidx.compose.ui.graphics.Outline$Generic, boolean, float):androidx.compose.ui.draw.DrawResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawRoundRectBorder-JqoCqck, reason: not valid java name */
    public final DrawResult m110drawRoundRectBorderJqoCqck(CacheDrawScope cacheDrawScope, final Brush brush, Outline.Rounded rounded, final long j, final long j2, final boolean z, final float f) {
        final Path createRoundRectPath;
        if (RoundRectKt.isSimple(rounded.getRoundRect())) {
            final long m1194getTopLeftCornerRadiuskKHJgLs = rounded.getRoundRect().m1194getTopLeftCornerRadiuskKHJgLs();
            final float f2 = f / 2;
            final Stroke stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
            return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$drawRoundRectBorder$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((ContentDrawScope) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(ContentDrawScope contentDrawScope) {
                    long m108shrinkKibmq7A;
                    long j3;
                    contentDrawScope.drawContent();
                    if (z) {
                        DrawScope.CC.m1515drawRoundRectZuiqVtQ$default(contentDrawScope, brush, 0L, 0L, m1194getTopLeftCornerRadiuskKHJgLs, 0.0f, null, null, 0, 246, null);
                        return;
                    }
                    float m1153getXimpl = CornerRadius.m1153getXimpl(m1194getTopLeftCornerRadiuskKHJgLs);
                    float f3 = f2;
                    if (m1153getXimpl < f3) {
                        float f4 = f;
                        float m1204getWidthimpl = Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc()) - f;
                        float m1202getHeightimpl = Size.m1202getHeightimpl(contentDrawScope.mo1491getSizeNHjbRc()) - f;
                        int m1296getDifferencertfAjoo = ClipOp.Companion.m1296getDifferencertfAjoo();
                        Brush brush2 = brush;
                        long j4 = m1194getTopLeftCornerRadiuskKHJgLs;
                        DrawContext drawContext = contentDrawScope.getDrawContext();
                        long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
                        drawContext.getCanvas().save();
                        try {
                            drawContext.getTransform().mo1498clipRectN_I0leg(f4, f4, m1204getWidthimpl, m1202getHeightimpl, m1296getDifferencertfAjoo);
                            j3 = mo1495getSizeNHjbRc;
                            try {
                                DrawScope.CC.m1515drawRoundRectZuiqVtQ$default(contentDrawScope, brush2, 0L, 0L, j4, 0.0f, null, null, 0, 246, null);
                                drawContext.getCanvas().restore();
                                drawContext.mo1496setSizeuvyYCjk(j3);
                            } catch (Throwable th) {
                                th = th;
                                drawContext.getCanvas().restore();
                                drawContext.mo1496setSizeuvyYCjk(j3);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j3 = mo1495getSizeNHjbRc;
                        }
                    } else {
                        Brush brush3 = brush;
                        long j5 = j;
                        long j6 = j2;
                        m108shrinkKibmq7A = BorderKt.m108shrinkKibmq7A(m1194getTopLeftCornerRadiuskKHJgLs, f3);
                        DrawScope.CC.m1515drawRoundRectZuiqVtQ$default(contentDrawScope, brush3, j5, j6, m108shrinkKibmq7A, 0.0f, stroke, null, 0, 208, null);
                    }
                }
            });
        }
        if (this.borderCache == null) {
            this.borderCache = new BorderCache(null, null, null, null, 15, null);
        }
        BorderCache borderCache = this.borderCache;
        Intrinsics.checkNotNull(borderCache);
        createRoundRectPath = BorderKt.createRoundRectPath(borderCache.obtainPath(), rounded.getRoundRect(), f, z);
        return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$drawRoundRectBorder$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((ContentDrawScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(ContentDrawScope contentDrawScope) {
                contentDrawScope.drawContent();
                DrawScope.CC.m1512drawPathGBMwjPU$default(contentDrawScope, Path.this, brush, 0.0f, null, null, 0, 60, null);
            }
        });
    }
}
