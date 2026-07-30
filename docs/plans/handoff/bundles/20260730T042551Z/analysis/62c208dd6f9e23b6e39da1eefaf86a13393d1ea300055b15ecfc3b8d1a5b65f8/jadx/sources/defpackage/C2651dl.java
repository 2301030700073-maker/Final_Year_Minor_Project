package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.joeykrim.rootcheck.R;

@SuppressLint({"ViewConstructor"})
/* renamed from: dl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2651dl extends ViewGroup implements InterfaceC0709al {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ int f12534new = 0;

    /* renamed from: do, reason: not valid java name */
    public Matrix f12535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f12536do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewGroup f12537do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12538do;

    /* renamed from: for, reason: not valid java name */
    public int f12539for;

    /* renamed from: if, reason: not valid java name */
    public final View f12540if;

    /* renamed from: dl$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            View view;
            C2651dl c2651dl = C2651dl.this;
            c2651dl.postInvalidateOnAnimation();
            ViewGroup viewGroup = c2651dl.f12537do;
            if (viewGroup == null || (view = c2651dl.f12536do) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            c2651dl.f12537do.postInvalidateOnAnimation();
            c2651dl.f12537do = null;
            c2651dl.f12536do = null;
            return true;
        }
    }

    public C2651dl(View view) {
        super(view.getContext());
        this.f12538do = new Cdo();
        this.f12540if = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6463if(View view, ViewGroup viewGroup) {
        C3856vL.m8469do(viewGroup, viewGroup.getLeft(), viewGroup.getTop(), view.getWidth() + viewGroup.getLeft(), view.getHeight() + viewGroup.getTop());
    }

    @Override // defpackage.InterfaceC0709al
    /* renamed from: do */
    public final void mo3153do(ViewGroup viewGroup, View view) {
        this.f12537do = viewGroup;
        this.f12536do = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = this.f12540if;
        view.setTag(R.id.ghost_view, this);
        view.getViewTreeObserver().addOnPreDrawListener(this.f12538do);
        C3856vL.m8470for(view, 4);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        View view = this.f12540if;
        view.getViewTreeObserver().removeOnPreDrawListener(this.f12538do);
        C3856vL.m8470for(view, 0);
        view.setTag(R.id.ghost_view, null);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Y6.m2888do(canvas, true);
        canvas.setMatrix(this.f12535do);
        View view = this.f12540if;
        C3856vL.m8470for(view, 0);
        view.invalidate();
        C3856vL.m8470for(view, 4);
        drawChild(canvas, view, getDrawingTime());
        Y6.m2888do(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, defpackage.InterfaceC0709al
    public final void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f12540if;
        if (((C2651dl) view.getTag(R.id.ghost_view)) == this) {
            C3856vL.m8470for(view, i == 0 ? 4 : 0);
        }
    }
}
