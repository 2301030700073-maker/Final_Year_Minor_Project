package androidx.compose.ui.graphics.shadow;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DropShadowPainter extends Painter {
    public float alpha = 1.0f;
    public BlendModeColorFilter colorFilter;
    public final CardView.AnonymousClass1 renderCreator;
    public final Shadow shadow;
    public final Shape shape;

    public DropShadowPainter(RoundedCornerShape roundedCornerShape, Shadow shadow, CardView.AnonymousClass1 anonymousClass1) {
        this.shape = roundedCornerShape;
        this.shadow = shadow;
        this.renderCreator = anonymousClass1;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.colorFilter = blendModeColorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        return 9205357640488583168L;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        DropShadowRenderer dropShadowRenderer;
        CardView.AnonymousClass1 anonymousClass1 = this.renderCreator;
        Shape shape = this.shape;
        long mo476getSizeNHjbRc = drawScope.mo476getSizeNHjbRc();
        LayoutDirection layoutDirection = drawScope.getLayoutDirection();
        Shadow shadow = this.shadow;
        synchronized (anonymousClass1) {
            AndroidShadowContext$ShadowKey androidShadowContext$ShadowKey = (AndroidShadowContext$ShadowKey) anonymousClass1.this$0;
            if (androidShadowContext$ShadowKey == null) {
                AndroidShadowContext$ShadowKey androidShadowContext$ShadowKey2 = new AndroidShadowContext$ShadowKey(ColorKt.RectangleShape, 0L, LayoutDirection.Ltr, 1.0f, null);
                anonymousClass1.this$0 = androidShadowContext$ShadowKey2;
                androidShadowContext$ShadowKey = androidShadowContext$ShadowKey2;
            }
            androidShadowContext$ShadowKey.shape = shape;
            androidShadowContext$ShadowKey.size = mo476getSizeNHjbRc;
            androidShadowContext$ShadowKey.layoutDirection = layoutDirection;
            androidShadowContext$ShadowKey.density = drawScope.getDensity();
            shadow.getClass();
            androidShadowContext$ShadowKey.shadow = new Shadow(0L, shadow.color, shadow.alpha);
            MutableScatterMap mutableScatterMap = (MutableScatterMap) anonymousClass1.mCardBackground;
            if (mutableScatterMap == null) {
                mutableScatterMap = new MutableScatterMap();
                anonymousClass1.mCardBackground = mutableScatterMap;
            }
            dropShadowRenderer = (DropShadowRenderer) mutableScatterMap.get(androidShadowContext$ShadowKey);
            if (dropShadowRenderer == null) {
                dropShadowRenderer = new DropShadowRenderer(shadow, shape.mo61createOutlinePq9zytI(mo476getSizeNHjbRc, layoutDirection, drawScope));
                MutableScatterMap mutableScatterMap2 = (MutableScatterMap) anonymousClass1.mCardBackground;
                if (mutableScatterMap2 == null) {
                    mutableScatterMap2 = new MutableScatterMap();
                    anonymousClass1.mCardBackground = mutableScatterMap2;
                }
                mutableScatterMap2.set(new AndroidShadowContext$ShadowKey(androidShadowContext$ShadowKey.shape, androidShadowContext$ShadowKey.size, androidShadowContext$ShadowKey.layoutDirection, androidShadowContext$ShadowKey.density, androidShadowContext$ShadowKey.shadow), dropShadowRenderer);
            }
        }
        float mo87toPx0680j_4 = drawScope.mo87toPx0680j_4(Float.intBitsToFloat((int) (this.shadow.offset >> 32)));
        float mo87toPx0680j_42 = drawScope.mo87toPx0680j_4(Float.intBitsToFloat((int) (this.shadow.offset & 4294967295L)));
        ((PopupMenu$1) drawScope.getDrawContext().rootElement).translate(mo87toPx0680j_4, mo87toPx0680j_42);
        try {
            BlendModeColorFilter blendModeColorFilter = this.colorFilter;
            long mo476getSizeNHjbRc2 = drawScope.mo476getSizeNHjbRc();
            Shadow shadow2 = dropShadowRenderer.shadow;
            long j = shadow2.color;
            float coerceIn = RegexKt.coerceIn(this.alpha * shadow2.alpha, RecyclerView.DECELERATION_RATE, 1.0f);
            dropShadowRenderer.shadow.getClass();
            dropShadowRenderer.m495drawShadowerFMhIw(drawScope, blendModeColorFilter, mo476getSizeNHjbRc2, j, coerceIn);
        } finally {
            ((PopupMenu$1) drawScope.getDrawContext().rootElement).translate(-mo87toPx0680j_4, -mo87toPx0680j_42);
        }
    }
}
