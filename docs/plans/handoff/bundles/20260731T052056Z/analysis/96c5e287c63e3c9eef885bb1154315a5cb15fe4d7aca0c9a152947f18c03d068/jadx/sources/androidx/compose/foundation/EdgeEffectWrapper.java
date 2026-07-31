package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EdgeEffectWrapper {
    public EdgeEffect bottomEffect;
    public EdgeEffect bottomEffectNegation;
    public final Context context;
    public final int glowColor;
    public EdgeEffect leftEffect;
    public EdgeEffect leftEffectNegation;
    public EdgeEffect rightEffect;
    public EdgeEffect rightEffectNegation;
    public long size = 0;
    public EdgeEffect topEffect;
    public EdgeEffect topEffectNegation;

    public EdgeEffectWrapper(Context context, int i) {
        this.context = context;
        this.glowColor = i;
    }

    public static boolean isAnimating(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    public static boolean isStretched(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !((Build.VERSION.SDK_INT >= 31 ? Api31Impl.getDistance(edgeEffect) : 0.0f) == RecyclerView.DECELERATION_RATE);
    }

    public final EdgeEffect createEdgeEffect(Orientation orientation) {
        int i = Build.VERSION.SDK_INT;
        Context context = this.context;
        EdgeEffect create = i >= 31 ? Api31Impl.create(context) : new GlowEdgeEffectCompat(context);
        create.setColor(this.glowColor);
        if (!IntSize.m721equalsimpl0(this.size, 0L)) {
            Orientation orientation2 = Orientation.Vertical;
            long j = this.size;
            if (orientation == orientation2) {
                create.setSize((int) (j >> 32), (int) (j & 4294967295L));
                return create;
            }
            create.setSize((int) (4294967295L & j), (int) (j >> 32));
        }
        return create;
    }

    public final EdgeEffect getOrCreateBottomEffect() {
        EdgeEffect edgeEffect = this.bottomEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.bottomEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateLeftEffect() {
        EdgeEffect edgeEffect = this.leftEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.leftEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateRightEffect() {
        EdgeEffect edgeEffect = this.rightEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.rightEffect = createEdgeEffect;
        return createEdgeEffect;
    }

    public final EdgeEffect getOrCreateTopEffect() {
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect createEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.topEffect = createEdgeEffect;
        return createEdgeEffect;
    }
}
