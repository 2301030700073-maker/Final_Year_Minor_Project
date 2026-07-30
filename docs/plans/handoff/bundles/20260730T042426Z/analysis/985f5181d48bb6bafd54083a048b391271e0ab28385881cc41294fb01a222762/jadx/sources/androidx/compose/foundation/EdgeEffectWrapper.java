package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.ui.unit.IntSize;

/* compiled from: AndroidOverscroll.android.kt */
/* loaded from: classes.dex */
final class EdgeEffectWrapper {
    private EdgeEffect bottomEffect;
    private EdgeEffect bottomEffectNegation;
    private final Context context;
    private final int glowColor;
    private EdgeEffect leftEffect;
    private EdgeEffect leftEffectNegation;
    private EdgeEffect rightEffect;
    private EdgeEffect rightEffectNegation;
    private long size = IntSize.Companion.m2488getZeroYbymL2g();
    private EdgeEffect topEffect;
    private EdgeEffect topEffectNegation;

    public EdgeEffectWrapper(Context context, int i) {
        this.context = context;
        this.glowColor = i;
    }

    public final boolean isTopStretched() {
        return isStretched(this.topEffect);
    }

    public final boolean isBottomStretched() {
        return isStretched(this.bottomEffect);
    }

    public final boolean isLeftStretched() {
        return isStretched(this.leftEffect);
    }

    public final boolean isRightStretched() {
        return isStretched(this.rightEffect);
    }

    public final boolean isTopNegationStretched() {
        return isStretched(this.topEffectNegation);
    }

    public final boolean isBottomNegationStretched() {
        return isStretched(this.bottomEffectNegation);
    }

    public final boolean isLeftNegationStretched() {
        return isStretched(this.leftEffectNegation);
    }

    public final boolean isRightNegationStretched() {
        return isStretched(this.rightEffectNegation);
    }

    private final boolean isStretched(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !(EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect) == 0.0f);
    }

    public final boolean isTopAnimating() {
        return isAnimating(this.topEffect);
    }

    public final boolean isBottomAnimating() {
        return isAnimating(this.bottomEffect);
    }

    public final boolean isLeftAnimating() {
        return isAnimating(this.leftEffect);
    }

    public final boolean isRightAnimating() {
        return isAnimating(this.rightEffect);
    }

    private final boolean isAnimating(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    public final EdgeEffect getOrCreateTopEffect() {
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.topEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateBottomEffect() {
        EdgeEffect edgeEffect = this.bottomEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.bottomEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateLeftEffect() {
        EdgeEffect edgeEffect = this.leftEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.leftEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateRightEffect() {
        EdgeEffect edgeEffect = this.rightEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.rightEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateTopEffectNegation() {
        EdgeEffect edgeEffect = this.topEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.topEffectNegation = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateBottomEffectNegation() {
        EdgeEffect edgeEffect = this.bottomEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.bottomEffectNegation = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateLeftEffectNegation() {
        EdgeEffect edgeEffect = this.leftEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.leftEffectNegation = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateRightEffectNegation() {
        EdgeEffect edgeEffect = this.rightEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect();
        this.rightEffectNegation = createEdgeEffect;
        return createEdgeEffect;
    }

    private final EdgeEffect createEdgeEffect() {
        EdgeEffect create = EdgeEffectCompat.INSTANCE.create(this.context);
        create.setColor(this.glowColor);
        if (!IntSize.m2482equalsimpl0(this.size, IntSize.Companion.m2488getZeroYbymL2g())) {
            create.setSize(IntSize.m2484getWidthimpl(this.size), IntSize.m2483getHeightimpl(this.size));
        }
        return create;
    }

    /* renamed from: setSize-ozmzZPI, reason: not valid java name */
    public final void m135setSizeozmzZPI(long j) {
        this.size = j;
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            edgeEffect.setSize(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
        }
        EdgeEffect edgeEffect2 = this.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.setSize(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
        }
        EdgeEffect edgeEffect3 = this.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.setSize(IntSize.m2483getHeightimpl(j), IntSize.m2484getWidthimpl(j));
        }
        EdgeEffect edgeEffect4 = this.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.setSize(IntSize.m2483getHeightimpl(j), IntSize.m2484getWidthimpl(j));
        }
        EdgeEffect edgeEffect5 = this.topEffectNegation;
        if (edgeEffect5 != null) {
            edgeEffect5.setSize(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
        }
        EdgeEffect edgeEffect6 = this.bottomEffectNegation;
        if (edgeEffect6 != null) {
            edgeEffect6.setSize(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
        }
        EdgeEffect edgeEffect7 = this.leftEffectNegation;
        if (edgeEffect7 != null) {
            edgeEffect7.setSize(IntSize.m2483getHeightimpl(j), IntSize.m2484getWidthimpl(j));
        }
        EdgeEffect edgeEffect8 = this.rightEffectNegation;
        if (edgeEffect8 != null) {
            edgeEffect8.setSize(IntSize.m2483getHeightimpl(j), IntSize.m2484getWidthimpl(j));
        }
    }
}
