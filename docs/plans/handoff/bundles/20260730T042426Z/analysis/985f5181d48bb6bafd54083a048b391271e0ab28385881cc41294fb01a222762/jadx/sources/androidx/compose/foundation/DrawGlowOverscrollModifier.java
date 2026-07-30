package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* compiled from: AndroidOverscroll.android.kt */
/* loaded from: classes.dex */
final class DrawGlowOverscrollModifier extends InspectorValueInfo implements DrawModifier {
    private final EdgeEffectWrapper edgeEffectWrapper;
    private final OverscrollConfiguration overscrollConfig;
    private final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean all(Function1 function1) {
        boolean booleanValue;
        booleanValue = ((Boolean) function1.invoke(this)).booleanValue();
        return booleanValue;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object foldIn(Object obj, Function2 function2) {
        Object invoke;
        invoke = function2.invoke(obj, this);
        return invoke;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier then(Modifier modifier) {
        return Modifier.CC.$default$then(this, modifier);
    }

    public DrawGlowOverscrollModifier(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper, OverscrollConfiguration overscrollConfiguration, Function1 function1) {
        super(function1);
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        this.overscrollConfig = overscrollConfiguration;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(ContentDrawScope contentDrawScope) {
        this.overscrollEffect.m98updateSizeuvyYCjk$foundation_release(contentDrawScope.mo1491getSizeNHjbRc());
        if (Size.m1206isEmptyimpl(contentDrawScope.mo1491getSizeNHjbRc())) {
            contentDrawScope.drawContent();
            return;
        }
        contentDrawScope.drawContent();
        this.overscrollEffect.getRedrawSignal$foundation_release().getValue();
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(contentDrawScope.getDrawContext().getCanvas());
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        boolean drawLeftGlow = edgeEffectWrapper.isLeftAnimating() ? drawLeftGlow(contentDrawScope, edgeEffectWrapper.getOrCreateLeftEffect(), nativeCanvas) : false;
        if (edgeEffectWrapper.isTopAnimating()) {
            drawLeftGlow = drawTopGlow(contentDrawScope, edgeEffectWrapper.getOrCreateTopEffect(), nativeCanvas) || drawLeftGlow;
        }
        if (edgeEffectWrapper.isRightAnimating()) {
            drawLeftGlow = drawRightGlow(contentDrawScope, edgeEffectWrapper.getOrCreateRightEffect(), nativeCanvas) || drawLeftGlow;
        }
        if (edgeEffectWrapper.isBottomAnimating()) {
            drawLeftGlow = drawBottomGlow(contentDrawScope, edgeEffectWrapper.getOrCreateBottomEffect(), nativeCanvas) || drawLeftGlow;
        }
        if (drawLeftGlow) {
            this.overscrollEffect.invalidateOverscroll$foundation_release();
        }
    }

    private final boolean drawLeftGlow(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        return m134drawWithRotationAndOffsetubNVwUQ(270.0f, OffsetKt.Offset(-Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc()), drawScope.mo213toPx0680j_4(this.overscrollConfig.getDrawPadding().mo257calculateLeftPaddingu2uoSUM(drawScope.getLayoutDirection()))), edgeEffect, canvas);
    }

    private final boolean drawTopGlow(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        return m134drawWithRotationAndOffsetubNVwUQ(0.0f, OffsetKt.Offset(0.0f, drawScope.mo213toPx0680j_4(this.overscrollConfig.getDrawPadding().mo259calculateTopPaddingD9Ej5fM())), edgeEffect, canvas);
    }

    private final boolean drawRightGlow(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        return m134drawWithRotationAndOffsetubNVwUQ(90.0f, OffsetKt.Offset(0.0f, (-MathKt.roundToInt(Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc()))) + drawScope.mo213toPx0680j_4(this.overscrollConfig.getDrawPadding().mo258calculateRightPaddingu2uoSUM(drawScope.getLayoutDirection()))), edgeEffect, canvas);
    }

    private final boolean drawBottomGlow(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        return m134drawWithRotationAndOffsetubNVwUQ(180.0f, OffsetKt.Offset(-Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc()), (-Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc())) + drawScope.mo213toPx0680j_4(this.overscrollConfig.getDrawPadding().mo256calculateBottomPaddingD9Ej5fM())), edgeEffect, canvas);
    }

    /* renamed from: drawWithRotationAndOffset-ubNVwUQ, reason: not valid java name */
    private final boolean m134drawWithRotationAndOffsetubNVwUQ(float f, long j, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(f);
        canvas.translate(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }
}
