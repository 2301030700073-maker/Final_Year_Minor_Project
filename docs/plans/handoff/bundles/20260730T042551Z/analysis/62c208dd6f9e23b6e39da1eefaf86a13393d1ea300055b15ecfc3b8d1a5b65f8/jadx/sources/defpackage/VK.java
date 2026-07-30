package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class VK {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f4083do = new Cdo();

    /* renamed from: case, reason: not valid java name */
    public final int f4084case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f4085do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f4086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f4087do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f4089do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f4090do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewGroup f4091do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final OverScroller f4092do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4093do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f4094do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f4095do;

    /* renamed from: else, reason: not valid java name */
    public int f4096else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public float[] f4098for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int[] f4099for;

    /* renamed from: if, reason: not valid java name */
    public float f4100if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f4101if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float[] f4102if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f4103if;

    /* renamed from: new, reason: not valid java name */
    public int f4104new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public float[] f4105new;

    /* renamed from: try, reason: not valid java name */
    public int f4106try;

    /* renamed from: for, reason: not valid java name */
    public int f4097for = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f4088do = new Cif();

    /* renamed from: VK$do, reason: invalid class name */
    public class Cdo implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: VK$for, reason: invalid class name */
    public static abstract class Cfor {
        /* renamed from: break, reason: not valid java name */
        public abstract void mo2618break(View view, float f, float f2);

        /* renamed from: case, reason: not valid java name */
        public void mo2619case() {
        }

        /* renamed from: catch, reason: not valid java name */
        public abstract boolean mo2620catch(View view, int i);

        /* renamed from: do, reason: not valid java name */
        public abstract int mo2621do(View view, int i);

        /* renamed from: else, reason: not valid java name */
        public void mo2622else(View view, int i) {
        }

        /* renamed from: for, reason: not valid java name */
        public int mo2623for(View view) {
            return 0;
        }

        /* renamed from: goto, reason: not valid java name */
        public abstract void mo2624goto(int i);

        /* renamed from: if, reason: not valid java name */
        public abstract int mo2625if(View view, int i);

        /* renamed from: new, reason: not valid java name */
        public int mo2626new() {
            return 0;
        }

        /* renamed from: this, reason: not valid java name */
        public abstract void mo2627this(View view, int i, int i2);

        /* renamed from: try, reason: not valid java name */
        public void mo2628try(int i, int i2) {
        }
    }

    /* renamed from: VK$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VK.this.m2608import(0);
        }
    }

    public VK(Context context, ViewGroup viewGroup, Cfor cfor) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (cfor == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f4091do = viewGroup;
        this.f4087do = cfor;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f4084case = i;
        this.f4106try = i;
        this.f4101if = viewConfiguration.getScaledTouchSlop();
        this.f4085do = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4100if = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4092do = new OverScroller(context, f4083do);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m2596class(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* renamed from: this, reason: not valid java name */
    public static VK m2597this(ViewGroup viewGroup, float f, Cfor cfor) {
        VK vk = new VK(viewGroup.getContext(), viewGroup, cfor);
        vk.f4101if = (int) ((1.0f / f) * vk.f4101if);
        return vk;
    }

    /* renamed from: break, reason: not valid java name */
    public final View m2598break(int i, int i2) {
        ViewGroup viewGroup = this.f4091do;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f4087do.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m2599case(int i) {
        float[] fArr = this.f4094do;
        if (fArr != null) {
            int i2 = this.f4104new;
            int i3 = 1 << i;
            if ((i3 & i2) != 0) {
                fArr[i] = 0.0f;
                this.f4102if[i] = 0.0f;
                this.f4098for[i] = 0.0f;
                this.f4105new[i] = 0.0f;
                this.f4095do[i] = 0;
                this.f4103if[i] = 0;
                this.f4099for[i] = 0;
                this.f4104new = (~i3) & i2;
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m2600catch(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f4090do.getLeft();
        int top = this.f4090do.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.f4092do;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            m2608import(0);
            return false;
        }
        View view = this.f4090do;
        int i7 = (int) this.f4100if;
        int i8 = (int) this.f4085do;
        int abs = Math.abs(i3);
        if (abs < i7) {
            i3 = 0;
        } else if (abs > i8) {
            i3 = i3 > 0 ? i8 : -i8;
        }
        int i9 = (int) this.f4100if;
        int abs2 = Math.abs(i4);
        if (abs2 < i9) {
            i4 = 0;
        } else if (abs2 > i8) {
            i4 = i4 > 0 ? i8 : -i8;
        }
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int abs5 = Math.abs(i3);
        int abs6 = Math.abs(i4);
        int i10 = abs5 + abs6;
        int i11 = abs3 + abs4;
        if (i3 != 0) {
            f = abs5;
            f2 = i10;
        } else {
            f = abs3;
            f2 = i11;
        }
        float f5 = f / f2;
        if (i4 != 0) {
            f3 = abs6;
            f4 = i10;
        } else {
            f3 = abs4;
            f4 = i11;
        }
        float f6 = f3 / f4;
        Cfor cfor = this.f4087do;
        overScroller.startScroll(left, top, i5, i6, (int) ((m2603else(i6, i4, cfor.mo2626new()) * f6) + (m2603else(i5, i3, cfor.mo2623for(view)) * f5)));
        m2608import(2);
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m2601const(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m2607if();
        }
        if (this.f4089do == null) {
            this.f4089do = VelocityTracker.obtain();
        }
        this.f4089do.addMovement(motionEvent);
        Cfor cfor = this.f4087do;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m2598break = m2598break((int) x, (int) y);
            m2615throw(x, y, pointerId);
            m2613static(m2598break, pointerId);
            if ((this.f4095do[pointerId] & this.f4096else) != 0) {
                cfor.mo2619case();
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f4086do == 1) {
                m2604final();
            }
            m2607if();
            return;
        }
        if (actionMasked == 2) {
            if (this.f4086do != 1) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i2 = 0; i2 < pointerCount; i2++) {
                    int pointerId2 = motionEvent.getPointerId(i2);
                    if ((this.f4104new & (1 << pointerId2)) != 0) {
                        float x2 = motionEvent.getX(i2);
                        float y2 = motionEvent.getY(i2);
                        float f = x2 - this.f4094do[pointerId2];
                        float f2 = y2 - this.f4102if[pointerId2];
                        m2614super(f, f2, pointerId2);
                        if (this.f4086do == 1) {
                            break;
                        }
                        View m2598break2 = m2598break((int) x2, (int) y2);
                        if (m2616try(m2598break2, f, f2) && m2613static(m2598break2, pointerId2)) {
                            break;
                        }
                    }
                }
                m2617while(motionEvent);
                return;
            }
            int i3 = this.f4097for;
            if (((this.f4104new & (1 << i3)) != 0 ? 1 : 0) == 0) {
                return;
            }
            int findPointerIndex = motionEvent.findPointerIndex(i3);
            float x3 = motionEvent.getX(findPointerIndex);
            float y3 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f4098for;
            int i4 = this.f4097for;
            int i5 = (int) (x3 - fArr[i4]);
            int i6 = (int) (y3 - this.f4105new[i4]);
            int left = this.f4090do.getLeft() + i5;
            int top = this.f4090do.getTop() + i6;
            int left2 = this.f4090do.getLeft();
            int top2 = this.f4090do.getTop();
            if (i5 != 0) {
                left = cfor.mo2621do(this.f4090do, left);
                QK.m1849class(this.f4090do, left - left2);
            }
            if (i6 != 0) {
                top = cfor.mo2625if(this.f4090do, top);
                QK.m1850const(this.f4090do, top - top2);
            }
            if (i5 != 0 || i6 != 0) {
                cfor.mo2627this(this.f4090do, left, top);
            }
            m2617while(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f4086do == 1) {
                this.f4093do = true;
                cfor.mo2618break(this.f4090do, 0.0f, 0.0f);
                this.f4093do = false;
                if (this.f4086do == 1) {
                    m2608import(0);
                }
            }
            m2607if();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m2615throw(x4, y4, pointerId3);
            if (this.f4086do != 0) {
                if (m2596class(this.f4090do, (int) x4, (int) y4)) {
                    m2613static(this.f4090do, pointerId3);
                    return;
                }
                return;
            } else {
                m2613static(m2598break((int) x4, (int) y4), pointerId3);
                if ((this.f4095do[pointerId3] & this.f4096else) != 0) {
                    cfor.mo2619case();
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f4086do == 1 && pointerId4 == this.f4097for) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (r3 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(r3);
                if (pointerId5 != this.f4097for) {
                    View m2598break3 = m2598break((int) motionEvent.getX(r3), (int) motionEvent.getY(r3));
                    View view = this.f4090do;
                    if (m2598break3 == view && m2613static(view, pointerId5)) {
                        i = this.f4097for;
                        break;
                    }
                }
                r3++;
            }
            if (i == -1) {
                m2604final();
            }
        }
        m2599case(pointerId4);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2602do() {
        m2607if();
        if (this.f4086do == 2) {
            OverScroller overScroller = this.f4092do;
            overScroller.getCurrX();
            overScroller.getCurrY();
            overScroller.abortAnimation();
            this.f4087do.mo2627this(this.f4090do, overScroller.getCurrX(), overScroller.getCurrY());
        }
        m2608import(0);
    }

    /* renamed from: else, reason: not valid java name */
    public final int m2603else(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.f4091do.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m2604final() {
        VelocityTracker velocityTracker = this.f4089do;
        float f = this.f4085do;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f4089do.getXVelocity(this.f4097for);
        float f2 = this.f4100if;
        float abs = Math.abs(xVelocity);
        float f3 = 0.0f;
        if (abs < f2) {
            xVelocity = 0.0f;
        } else if (abs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f4089do.getYVelocity(this.f4097for);
        float f4 = this.f4100if;
        float abs2 = Math.abs(yVelocity);
        if (abs2 >= f4) {
            if (abs2 > f) {
                if (yVelocity <= 0.0f) {
                    f = -f;
                }
                f3 = f;
            } else {
                f3 = yVelocity;
            }
        }
        this.f4093do = true;
        this.f4087do.mo2618break(this.f4090do, xVelocity, f3);
        this.f4093do = false;
        if (this.f4086do == 1) {
            m2608import(0);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2605for(View view, int i) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f4091do;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f4090do = view;
        this.f4097for = i;
        this.f4087do.mo2622else(view, i);
        m2608import(1);
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m2606goto() {
        if (this.f4086do == 2) {
            OverScroller overScroller = this.f4092do;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f4090do.getLeft();
            int top = currY - this.f4090do.getTop();
            if (left != 0) {
                QK.m1849class(this.f4090do, left);
            }
            if (top != 0) {
                QK.m1850const(this.f4090do, top);
            }
            if (left != 0 || top != 0) {
                this.f4087do.mo2627this(this.f4090do, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.f4091do.post(this.f4088do);
            }
        }
        return this.f4086do == 2;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2607if() {
        this.f4097for = -1;
        float[] fArr = this.f4094do;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f4102if, 0.0f);
            Arrays.fill(this.f4098for, 0.0f);
            Arrays.fill(this.f4105new, 0.0f);
            Arrays.fill(this.f4095do, 0);
            Arrays.fill(this.f4103if, 0);
            Arrays.fill(this.f4099for, 0);
            this.f4104new = 0;
        }
        VelocityTracker velocityTracker = this.f4089do;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4089do = null;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m2608import(int i) {
        this.f4091do.removeCallbacks(this.f4088do);
        if (this.f4086do != i) {
            this.f4086do = i;
            this.f4087do.mo2624goto(i);
            if (this.f4086do == 0) {
                this.f4090do = null;
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final boolean m2609native(int i, int i2) {
        if (this.f4093do) {
            return m2600catch(i, i2, (int) this.f4089do.getXVelocity(this.f4097for), (int) this.f4089do.getYVelocity(this.f4097for));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m2610new(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f4095do[i] & i2) != i2 || (this.f4096else & i2) == 0 || (this.f4099for[i] & i2) == i2 || (this.f4103if[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f4101if;
        if (abs <= i3 && abs2 <= i3) {
            return false;
        }
        if (abs < abs2 * 0.5f) {
            this.f4087do.getClass();
        }
        return (this.f4103if[i] & i2) == 0 && abs > ((float) this.f4101if);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        if (r13 != r12) goto L57;
     */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2611public(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.VK.m2611public(android.view.MotionEvent):boolean");
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m2612return(View view, int i, int i2) {
        this.f4090do = view;
        this.f4097for = -1;
        boolean m2600catch = m2600catch(i, i2, 0, 0);
        if (!m2600catch && this.f4086do == 0 && this.f4090do != null) {
            this.f4090do = null;
        }
        return m2600catch;
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m2613static(View view, int i) {
        if (view == this.f4090do && this.f4097for == i) {
            return true;
        }
        if (view == null || !this.f4087do.mo2620catch(view, i)) {
            return false;
        }
        this.f4097for = i;
        m2605for(view, i);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [VK$for] */
    /* renamed from: super, reason: not valid java name */
    public final void m2614super(float f, float f2, int i) {
        boolean m2610new = m2610new(f, f2, i, 1);
        boolean z = m2610new;
        if (m2610new(f2, f, i, 4)) {
            z = (m2610new ? 1 : 0) | 4;
        }
        boolean z2 = z;
        if (m2610new(f, f2, i, 2)) {
            z2 = (z ? 1 : 0) | 2;
        }
        ?? r0 = z2;
        if (m2610new(f2, f, i, 8)) {
            r0 = (z2 ? 1 : 0) | 8;
        }
        if (r0 != 0) {
            int[] iArr = this.f4103if;
            iArr[i] = iArr[i] | r0;
            this.f4087do.mo2628try(r0, i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m2615throw(float f, float f2, int i) {
        float[] fArr = this.f4094do;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f4102if;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f4098for;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f4105new;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f4095do;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f4103if;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f4099for;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f4094do = fArr2;
            this.f4102if = fArr3;
            this.f4098for = fArr4;
            this.f4105new = fArr5;
            this.f4095do = iArr;
            this.f4103if = iArr2;
            this.f4099for = iArr3;
        }
        float[] fArr9 = this.f4094do;
        this.f4098for[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f4102if;
        this.f4105new[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f4095do;
        int i3 = (int) f;
        int i4 = (int) f2;
        ViewGroup viewGroup = this.f4091do;
        int i5 = i3 < viewGroup.getLeft() + this.f4106try ? 1 : 0;
        if (i4 < viewGroup.getTop() + this.f4106try) {
            i5 |= 4;
        }
        if (i3 > viewGroup.getRight() - this.f4106try) {
            i5 |= 2;
        }
        if (i4 > viewGroup.getBottom() - this.f4106try) {
            i5 |= 8;
        }
        iArr7[i] = i5;
        this.f4104new |= 1 << i;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m2616try(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        Cfor cfor = this.f4087do;
        boolean z = cfor.mo2623for(view) > 0;
        boolean z2 = cfor.mo2626new() > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f4101if) : z2 && Math.abs(f2) > ((float) this.f4101if);
        }
        float f3 = (f2 * f2) + (f * f);
        int i = this.f4101if;
        return f3 > ((float) (i * i));
    }

    /* renamed from: while, reason: not valid java name */
    public final void m2617while(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if ((this.f4104new & (1 << pointerId)) != 0) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f4098for[pointerId] = x;
                this.f4105new[pointerId] = y;
            }
        }
    }
}
