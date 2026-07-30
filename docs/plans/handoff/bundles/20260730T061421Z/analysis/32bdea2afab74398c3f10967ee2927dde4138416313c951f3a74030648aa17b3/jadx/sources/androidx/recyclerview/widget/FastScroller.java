package androidx.recyclerview.widget;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import b.e.i.q;
import b.m.b.AbstractC0168b0;
import b.m.b.AbstractC0186k0;
import b.m.b.C0193q;
import b.m.b.C0194s;
import b.m.b.InterfaceC0184j0;
import b.m.b.RunnableC0192p;
import b.m.b.r;
import b.m.b.t0;
import com.android.launcher3.PagedView;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class FastScroller extends AbstractC0168b0 implements InterfaceC0184j0 {
    public static final int[] x = {R.attr.state_pressed};
    public static final int[] y = new int[0];

    /* renamed from: a, reason: collision with root package name */
    public final int f180a;

    /* renamed from: b, reason: collision with root package name */
    public final int f181b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f182c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f183d;
    public final int e;
    public final int f;
    public final StateListDrawable g;
    public final Drawable h;
    public final int i;
    public final int j;
    public RecyclerView m;
    public float mHorizontalDragX;
    public int mHorizontalThumbCenterX;
    public int mHorizontalThumbWidth;
    public float mVerticalDragY;
    public int mVerticalThumbCenterY;
    public int mVerticalThumbHeight;
    public int k = 0;
    public int l = 0;
    public boolean n = false;
    public boolean o = false;
    public int p = 0;
    public int q = 0;
    public final int[] r = new int[2];
    public final int[] s = new int[2];
    public final ValueAnimator t = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
    public int u = 0;
    public final Runnable v = new RunnableC0192p(this);
    public final AbstractC0186k0 w = new C0193q(this);

    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f182c = stateListDrawable;
        this.f183d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f180a = i2;
        this.f181b = i3;
        this.f182c.setAlpha(255);
        this.f183d.setAlpha(255);
        this.t.addListener(new r(this));
        this.t.addUpdateListener(new C0194s(this));
        RecyclerView recyclerView2 = this.m;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.m.removeOnItemTouchListener(this);
            this.m.removeOnScrollListener(this.w);
            a();
        }
        this.m = recyclerView;
        recyclerView.addItemDecoration(this);
        this.m.addOnItemTouchListener(this);
        this.m.addOnScrollListener(this.w);
    }

    public final void a() {
        this.m.removeCallbacks(this.v);
    }

    public final int b(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    public void c(int i) {
        if (i == 2 && this.p != 2) {
            this.f182c.setState(x);
            a();
        }
        if (i == 0) {
            this.m.invalidate();
        } else {
            d();
        }
        if (this.p == 2 && i != 2) {
            this.f182c.setState(y);
            a();
            this.m.postDelayed(this.v, 1200);
        } else if (i == 1) {
            a();
            this.m.postDelayed(this.v, PagedView.MIN_SNAP_VELOCITY);
        }
        this.p = i;
    }

    public void d() {
        int i = this.u;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.t.cancel();
            }
        }
        this.u = 1;
        ValueAnimator valueAnimator = this.t;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.t.setDuration(500L);
        this.t.setStartDelay(0L);
        this.t.start();
    }

    public Drawable getHorizontalThumbDrawable() {
        return this.g;
    }

    public Drawable getHorizontalTrackDrawable() {
        return this.h;
    }

    public Drawable getVerticalThumbDrawable() {
        return this.f182c;
    }

    public Drawable getVerticalTrackDrawable() {
        return this.f183d;
    }

    public void hide(int i) {
        int i2 = this.u;
        if (i2 == 1) {
            this.t.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.u = 3;
        ValueAnimator valueAnimator = this.t;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), RecentsState.NO_OFFSET);
        this.t.setDuration(i);
        this.t.start();
    }

    public boolean isPointInsideHorizontalThumb(float f, float f2) {
        if (f2 >= this.l - this.i) {
            int i = this.mHorizontalThumbCenterX;
            int i2 = this.mHorizontalThumbWidth;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                return true;
            }
        }
        return false;
    }

    public boolean isPointInsideVerticalThumb(float f, float f2) {
        if (q.i(this.m) == 1) {
            if (f > this.e) {
                return false;
            }
        } else if (f < this.k - this.e) {
            return false;
        }
        int i = this.mVerticalThumbCenterY;
        int i2 = this.mVerticalThumbHeight / 2;
        return f2 >= ((float) (i - i2)) && f2 <= ((float) (i2 + i));
    }

    public boolean isVisible() {
        return this.p == 1;
    }

    @Override // b.m.b.AbstractC0168b0
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        if (this.k != this.m.getWidth() || this.l != this.m.getHeight()) {
            this.k = this.m.getWidth();
            this.l = this.m.getHeight();
            c(0);
            return;
        }
        if (this.u != 0) {
            if (this.n) {
                int i = this.k;
                int i2 = this.e;
                int i3 = i - i2;
                int i4 = this.mVerticalThumbCenterY;
                int i5 = this.mVerticalThumbHeight;
                int i6 = i4 - (i5 / 2);
                this.f182c.setBounds(0, 0, i2, i5);
                this.f183d.setBounds(0, 0, this.f, this.l);
                if (q.i(this.m) == 1) {
                    this.f183d.draw(canvas);
                    canvas.translate(this.e, i6);
                    canvas.scale(-1.0f, 1.0f);
                    this.f182c.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-this.e, -i6);
                } else {
                    canvas.translate(i3, RecentsState.NO_OFFSET);
                    this.f183d.draw(canvas);
                    canvas.translate(RecentsState.NO_OFFSET, i6);
                    this.f182c.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.o) {
                int i7 = this.l;
                int i8 = this.i;
                int i9 = this.mHorizontalThumbCenterX;
                int i10 = this.mHorizontalThumbWidth;
                this.g.setBounds(0, 0, i10, i8);
                this.h.setBounds(0, 0, this.k, this.j);
                canvas.translate(RecentsState.NO_OFFSET, i7 - i8);
                this.h.draw(canvas);
                canvas.translate(i9 - (i10 / 2), RecentsState.NO_OFFSET);
                this.g.draw(canvas);
                canvas.translate(-r2, -r7);
            }
        }
    }

    @Override // b.m.b.InterfaceC0184j0
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i = this.p;
        if (i == 1) {
            boolean isPointInsideVerticalThumb = isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            boolean isPointInsideHorizontalThumb = isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (isPointInsideVerticalThumb || isPointInsideHorizontalThumb)) {
                if (isPointInsideHorizontalThumb) {
                    this.q = 1;
                    this.mHorizontalDragX = (int) motionEvent.getX();
                } else if (isPointInsideVerticalThumb) {
                    this.q = 2;
                    this.mVerticalDragY = (int) motionEvent.getY();
                }
                c(2);
                return true;
            }
        } else if (i == 2) {
            return true;
        }
        return false;
    }

    @Override // b.m.b.InterfaceC0184j0
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // b.m.b.InterfaceC0184j0
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.p == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean isPointInsideVerticalThumb = isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            boolean isPointInsideHorizontalThumb = isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (isPointInsideVerticalThumb || isPointInsideHorizontalThumb) {
                if (isPointInsideHorizontalThumb) {
                    this.q = 1;
                    this.mHorizontalDragX = (int) motionEvent.getX();
                } else if (isPointInsideVerticalThumb) {
                    this.q = 2;
                    this.mVerticalDragY = (int) motionEvent.getY();
                }
                c(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.p == 2) {
            this.mVerticalDragY = RecentsState.NO_OFFSET;
            this.mHorizontalDragX = RecentsState.NO_OFFSET;
            c(1);
            this.q = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.p == 2) {
            d();
            if (this.q == 1) {
                float x2 = motionEvent.getX();
                int[] iArr = this.s;
                int i = this.f181b;
                iArr[0] = i;
                iArr[1] = this.k - i;
                float max = Math.max(iArr[0], Math.min(iArr[1], x2));
                if (Math.abs(this.mHorizontalThumbCenterX - max) >= 2.0f) {
                    int b2 = b(this.mHorizontalDragX, max, iArr, this.m.computeHorizontalScrollRange(), this.m.computeHorizontalScrollOffset(), this.k);
                    if (b2 != 0) {
                        this.m.scrollBy(b2, 0);
                    }
                    this.mHorizontalDragX = max;
                }
            }
            if (this.q == 2) {
                float y2 = motionEvent.getY();
                int[] iArr2 = this.r;
                int i2 = this.f181b;
                iArr2[0] = i2;
                iArr2[1] = this.l - i2;
                float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y2));
                if (Math.abs(this.mVerticalThumbCenterY - max2) < 2.0f) {
                    return;
                }
                int b3 = b(this.mVerticalDragY, max2, iArr2, this.m.computeVerticalScrollRange(), this.m.computeVerticalScrollOffset(), this.l);
                if (b3 != 0) {
                    this.m.scrollBy(0, b3);
                }
                this.mVerticalDragY = max2;
            }
        }
    }
}
