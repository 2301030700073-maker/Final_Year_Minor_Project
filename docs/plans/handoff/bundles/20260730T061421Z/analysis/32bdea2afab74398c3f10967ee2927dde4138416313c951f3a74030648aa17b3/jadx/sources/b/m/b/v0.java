package b.m.b;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public class v0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public int f1217a;

    /* renamed from: b, reason: collision with root package name */
    public int f1218b;

    /* renamed from: c, reason: collision with root package name */
    public OverScroller f1219c;

    /* renamed from: d, reason: collision with root package name */
    public Interpolator f1220d = RecyclerView.sQuinticInterpolator;
    public boolean e = false;
    public boolean f = false;
    public final /* synthetic */ RecyclerView g;

    public v0(RecyclerView recyclerView) {
        this.g = recyclerView;
        this.f1219c = new OverScroller(recyclerView.getContext(), RecyclerView.sQuinticInterpolator);
    }

    public void a() {
        if (this.e) {
            this.f = true;
        } else {
            this.g.removeCallbacks(this);
            b.e.i.q.z(this.g, this);
        }
    }

    public void b(int i, int i2, int i3, Interpolator interpolator) {
        int i4;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt(0);
            int sqrt2 = (int) Math.sqrt((i2 * i2) + (i * i));
            RecyclerView recyclerView = this.g;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i5 = width / 2;
            float f = width;
            float f2 = i5;
            float sin = (((float) Math.sin((Math.min(1.0f, (sqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
            if (sqrt > 0) {
                i4 = Math.round(Math.abs(sin / sqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i4 = (int) (((abs / f) + 1.0f) * 300.0f);
            }
            i3 = Math.min(i4, RecyclerView.MAX_SCROLL_DURATION);
        }
        int i6 = i3;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.f1220d != interpolator) {
            this.f1220d = interpolator;
            this.f1219c = new OverScroller(this.g.getContext(), interpolator);
        }
        this.f1218b = 0;
        this.f1217a = 0;
        this.g.setScrollState(2);
        this.f1219c.startScroll(0, 0, i, i2, i6);
        a();
    }

    public void c() {
        this.g.removeCallbacks(this);
        this.f1219c.abortAnimation();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        int i2;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.g;
        if (recyclerView.mLayout == null) {
            c();
            return;
        }
        this.f = false;
        this.e = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f1219c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i3 = currX - this.f1217a;
            int i4 = currY - this.f1218b;
            this.f1217a = currX;
            this.f1218b = currY;
            RecyclerView recyclerView2 = this.g;
            int[] iArr = recyclerView2.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView2.dispatchNestedPreScroll(i3, i4, iArr, null, 1)) {
                int[] iArr2 = this.g.mReusableIntPair;
                i3 -= iArr2[0];
                i4 -= iArr2[1];
            }
            if (this.g.getOverScrollMode() != 2) {
                this.g.considerReleasingGlowsOnScroll(i3, i4);
            }
            RecyclerView recyclerView3 = this.g;
            if (recyclerView3.mAdapter != null) {
                int[] iArr3 = recyclerView3.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.scrollStep(i3, i4, iArr3);
                RecyclerView recyclerView4 = this.g;
                int[] iArr4 = recyclerView4.mReusableIntPair;
                i2 = iArr4[0];
                i = iArr4[1];
                i3 -= i2;
                i4 -= i;
                F f = recyclerView4.mLayout.mSmoothScroller;
                if (f != null && !f.mPendingInitialRun && f.mRunning) {
                    int b2 = recyclerView4.mState.b();
                    if (b2 == 0) {
                        f.stop();
                    } else if (f.mTargetPosition >= b2) {
                        f.mTargetPosition = b2 - 1;
                        f.onAnimation(i2, i);
                    } else {
                        f.onAnimation(i2, i);
                    }
                }
            } else {
                i = 0;
                i2 = 0;
            }
            if (!this.g.mItemDecorations.isEmpty()) {
                this.g.invalidate();
            }
            RecyclerView recyclerView5 = this.g;
            int[] iArr5 = recyclerView5.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.dispatchNestedScroll(i2, i, i3, i4, null, 1, iArr5);
            int[] iArr6 = this.g.mReusableIntPair;
            int i5 = i3 - iArr6[0];
            int i6 = i4 - iArr6[1];
            if (i2 != 0 || i != 0) {
                this.g.dispatchOnScrolled(i2, i);
            }
            awakenScrollBars = this.g.awakenScrollBars();
            if (!awakenScrollBars) {
                this.g.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
            F f2 = this.g.mLayout.mSmoothScroller;
            if ((f2 != null && f2.mPendingInitialRun) || !z) {
                a();
                RecyclerView recyclerView6 = this.g;
                RunnableC0198w runnableC0198w = recyclerView6.mGapWorker;
                if (runnableC0198w != null) {
                    runnableC0198w.a(recyclerView6, i2, i);
                }
            } else {
                if (this.g.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                    if (i6 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i6 <= 0) {
                        currVelocity = 0;
                    }
                    this.g.absorbGlows(i7, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    C0196u c0196u = this.g.mPrefetchRegistry;
                    int[] iArr7 = c0196u.f1211c;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    c0196u.f1212d = 0;
                }
            }
        }
        F f3 = this.g.mLayout.mSmoothScroller;
        if (f3 != null && f3.mPendingInitialRun) {
            f3.onAnimation(0, 0);
        }
        this.e = false;
        if (this.f) {
            this.g.removeCallbacks(this);
            b.e.i.q.z(this.g, this);
        } else {
            this.g.setScrollState(0);
            this.g.stopNestedScroll(1);
        }
    }
}
