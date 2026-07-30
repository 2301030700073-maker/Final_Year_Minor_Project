package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.EdgeEffect;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import b.m.b.V;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class SpringRelativeLayout extends RelativeLayout {
    public static final C DAMPED_SCROLL = new C("value") { // from class: com.android.launcher3.views.SpringRelativeLayout.1
        @Override // b.h.a.C
        public float getValue(Object obj) {
            return ((SpringRelativeLayout) obj).mDampedScrollShift;
        }

        @Override // b.h.a.C
        public void setValue(Object obj, float f) {
            ((SpringRelativeLayout) obj).setDampedScrollShift(f);
        }
    };
    public SpringEdgeEffect mActiveEdge;
    public float mDampedScrollShift;
    public final D mSpring;
    public final SparseBooleanArray mSpringViews;

    public class SpringEdgeEffect extends EdgeEffect {
        public float mDistance;
        public final float mVelocityMultiplier;

        public SpringEdgeEffect(Context context, float f) {
            super(context);
            this.mVelocityMultiplier = f;
        }

        @Override // android.widget.EdgeEffect
        public boolean draw(Canvas canvas) {
            return false;
        }

        @Override // android.widget.EdgeEffect
        public void onAbsorb(int i) {
            SpringRelativeLayout springRelativeLayout = SpringRelativeLayout.this;
            float f = i * this.mVelocityMultiplier;
            D d2 = springRelativeLayout.mSpring;
            d2.f820a = f;
            d2.f821b = springRelativeLayout.mDampedScrollShift;
            d2.f822c = true;
            d2.i();
        }

        @Override // android.widget.EdgeEffect
        public void onPull(float f, float f2) {
            SpringRelativeLayout springRelativeLayout = SpringRelativeLayout.this;
            SpringEdgeEffect springEdgeEffect = springRelativeLayout.mActiveEdge;
            if (springEdgeEffect != this && springEdgeEffect != null) {
                springEdgeEffect.mDistance = RecentsState.NO_OFFSET;
            }
            springRelativeLayout.mActiveEdge = this;
            float f3 = ((this.mVelocityMultiplier / 3.0f) * f) + this.mDistance;
            this.mDistance = f3;
            SpringRelativeLayout.this.setDampedScrollShift(f3 * r2.getHeight());
        }

        @Override // android.widget.EdgeEffect
        public void onRelease() {
            this.mDistance = RecentsState.NO_OFFSET;
            SpringRelativeLayout springRelativeLayout = SpringRelativeLayout.this;
            D d2 = springRelativeLayout.mSpring;
            d2.f820a = RecentsState.NO_OFFSET;
            d2.f821b = springRelativeLayout.mDampedScrollShift;
            d2.f822c = true;
            d2.i();
        }
    }

    public class SpringEdgeEffectFactory extends V {
        public SpringEdgeEffectFactory(AnonymousClass1 anonymousClass1) {
        }

        @Override // b.m.b.V
        public EdgeEffect createEdgeEffect(RecyclerView recyclerView, int i) {
            if (i == 1) {
                SpringRelativeLayout springRelativeLayout = SpringRelativeLayout.this;
                return springRelativeLayout.new SpringEdgeEffect(springRelativeLayout.getContext(), 0.3f);
            }
            if (i != 3) {
                return super.createEdgeEffect(recyclerView, i);
            }
            SpringRelativeLayout springRelativeLayout2 = SpringRelativeLayout.this;
            return springRelativeLayout2.new SpringEdgeEffect(springRelativeLayout2.getContext(), -0.3f);
        }
    }

    public SpringRelativeLayout(Context context) {
        this(context, null);
    }

    public void addSpringView(int i) {
        this.mSpringViews.put(i, true);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (this.mDampedScrollShift == RecentsState.NO_OFFSET || !this.mSpringViews.get(view.getId())) {
            return super.drawChild(canvas, view, j);
        }
        int save = canvas.save();
        canvas.clipRect(0, getCanvasClipTopForOverscroll(), getWidth(), getHeight());
        canvas.translate(RecentsState.NO_OFFSET, this.mDampedScrollShift);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    public int getCanvasClipTopForOverscroll() {
        return 0;
    }

    public void setDampedScrollShift(float f) {
        if (f != this.mDampedScrollShift) {
            this.mDampedScrollShift = f;
            invalidate();
        }
    }

    public SpringRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpringRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSpringViews = new SparseBooleanArray();
        this.mDampedScrollShift = RecentsState.NO_OFFSET;
        D d2 = new D(this, DAMPED_SCROLL, RecentsState.NO_OFFSET);
        this.mSpring = d2;
        E e = new E(RecentsState.NO_OFFSET);
        e.b(850.0f);
        e.a(0.5f);
        d2.s = e;
    }
}
