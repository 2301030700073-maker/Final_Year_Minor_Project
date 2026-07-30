package com.android.launcher3.util;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import b.h.a.v;
import c.a.c.a.a;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.util.OverScroller;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class OverScroller {
    public int mMode;
    public final SplineOverScroller mScroller;
    public TimeInterpolator mInterpolator = Interpolators.SCROLL;
    public final boolean mFlywheel = true;

    public class SplineOverScroller {
        public static float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
        public static final float[] SPLINE_POSITION = new float[101];
        public static final float[] SPLINE_TIME = new float[101];
        public static final C SPRING_PROPERTY = new C("splineOverScrollerSpring") { // from class: com.android.launcher3.util.OverScroller.SplineOverScroller.1
            @Override // b.h.a.C
            public float getValue(Object obj) {
                return ((SplineOverScroller) obj).mCurrentPosition;
            }

            @Override // b.h.a.C
            public void setValue(Object obj, float f) {
                ((SplineOverScroller) obj).mCurrentPosition = (int) f;
            }
        };
        public Context mContext;
        public float mCurrVelocity;
        public int mCurrentPosition;
        public float mDeceleration;
        public int mDuration;
        public int mFinal;
        public int mOver;
        public float mPhysicalCoeff;
        public int mSplineDistance;
        public int mSplineDuration;
        public D mSpring;
        public int mStart;
        public long mStartTime;
        public int mVelocity;
        public float mFlingFriction = ViewConfiguration.getScrollFriction();
        public int mState = 0;
        public boolean mFinished = true;

        static {
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11 = RecentsState.NO_OFFSET;
            float f12 = 0.0f;
            for (int i = 0; i < 100; i++) {
                float f13 = i / 100.0f;
                float f14 = 1.0f;
                while (true) {
                    f = 2.0f;
                    f2 = ((f14 - f11) / 2.0f) + f11;
                    f3 = 3.0f;
                    f4 = 1.0f - f2;
                    f5 = f2 * 3.0f * f4;
                    f6 = f2 * f2 * f2;
                    float f15 = (((f2 * 0.35000002f) + (f4 * 0.175f)) * f5) + f6;
                    if (Math.abs(f15 - f13) < 1.0E-5d) {
                        break;
                    } else if (f15 > f13) {
                        f14 = f2;
                    } else {
                        f11 = f2;
                    }
                }
                SPLINE_POSITION[i] = (((f4 * 0.5f) + f2) * f5) + f6;
                float f16 = 1.0f;
                while (true) {
                    f7 = ((f16 - f12) / f) + f12;
                    f8 = 1.0f - f7;
                    f9 = f7 * f3 * f8;
                    f10 = f7 * f7 * f7;
                    float f17 = (((f8 * 0.5f) + f7) * f9) + f10;
                    if (Math.abs(f17 - f13) < 1.0E-5d) {
                        break;
                    }
                    if (f17 > f13) {
                        f16 = f7;
                    } else {
                        f12 = f7;
                    }
                    f = 2.0f;
                    f3 = 3.0f;
                }
                SPLINE_TIME[i] = (((f7 * 0.35000002f) + (f8 * 0.175f)) * f9) + f10;
            }
            float[] fArr = SPLINE_POSITION;
            SPLINE_TIME[100] = 1.0f;
            fArr[100] = 1.0f;
        }

        public SplineOverScroller(Context context) {
            this.mContext = context;
            this.mPhysicalCoeff = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        }

        public static float getDeceleration(int i) {
            return i > 0 ? -2000.0f : 2000.0f;
        }

        public final void adjustDuration(int i, int i2, int i3) {
            float abs = Math.abs((i3 - i) / (i2 - i));
            int i4 = (int) (abs * 100.0f);
            if (i4 < 100) {
                float f = i4 / 100.0f;
                int i5 = i4 + 1;
                float[] fArr = SPLINE_TIME;
                float f2 = fArr[i4];
                this.mDuration = (int) (this.mDuration * a.a(fArr[i5], f2, (abs - f) / ((i5 / 100.0f) - f), f2));
            }
        }

        public void finish() {
            D d2 = this.mSpring;
            if (d2 != null && d2.f) {
                d2.c();
            }
            this.mCurrentPosition = this.mFinal;
            this.mFinished = true;
        }

        public void fling(int i, int i2, int i3, int i4, int i5) {
            this.mOver = i5;
            this.mFinished = false;
            this.mVelocity = i2;
            this.mCurrVelocity = i2;
            this.mSplineDuration = 0;
            this.mDuration = 0;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStart = i;
            this.mCurrentPosition = i;
            if (i <= i4 && i >= i3) {
                this.mState = 0;
                double d2 = 0.0d;
                if (i2 != 0) {
                    int exp = (int) (Math.exp(getSplineDeceleration(i2) / (DECELERATION_RATE - 1.0d)) * 1000.0d);
                    this.mSplineDuration = exp;
                    this.mDuration = exp;
                    d2 = getSplineFlingDistance(i2);
                }
                int signum = (int) (d2 * Math.signum(r0));
                this.mSplineDistance = signum;
                int i6 = i + signum;
                this.mFinal = i6;
                if (i6 < i3) {
                    adjustDuration(this.mStart, i6, i3);
                    this.mFinal = i3;
                }
                int i7 = this.mFinal;
                if (i7 > i4) {
                    adjustDuration(this.mStart, i7, i4);
                    this.mFinal = i4;
                    return;
                }
                return;
            }
            if (i > i3 && i < i4) {
                Log.e("OverScroller", "startAfterEdge called from a valid position");
                this.mFinished = true;
                return;
            }
            boolean z = i > i4;
            int i8 = z ? i4 : i3;
            int i9 = i - i8;
            if (!(i9 * i2 >= 0)) {
                if (getSplineFlingDistance(i2) > Math.abs(i9)) {
                    fling(i, i2, z ? i3 : i, z ? i : i4, this.mOver);
                    return;
                } else {
                    startSpringback(i, i8);
                    return;
                }
            }
            if (i2 != 0) {
                i9 = i2;
            }
            this.mDeceleration = getDeceleration(i9);
            float sqrt = (float) Math.sqrt((((((r0 * r0) / 2.0f) / Math.abs(r13)) + Math.abs(i8 - i)) * 2.0d) / Math.abs(this.mDeceleration));
            this.mStartTime -= (int) ((sqrt - ((-i2) / r13)) * 1000.0f);
            this.mStart = i8;
            this.mCurrentPosition = i8;
            this.mVelocity = (int) ((-this.mDeceleration) * sqrt);
            onEdgeReached();
        }

        public final double getSplineDeceleration(int i) {
            return Math.log((Math.abs(i) * 0.35f) / (this.mFlingFriction * this.mPhysicalCoeff));
        }

        public final double getSplineFlingDistance(int i) {
            double splineDeceleration = getSplineDeceleration(i);
            float f = DECELERATION_RATE;
            return Math.exp((f / (f - 1.0d)) * splineDeceleration) * this.mFlingFriction * this.mPhysicalCoeff;
        }

        public final void onEdgeReached() {
            int i = this.mVelocity;
            float f = i * i;
            float abs = f / (Math.abs(this.mDeceleration) * 2.0f);
            float signum = Math.signum(this.mVelocity);
            int i2 = this.mOver;
            if (abs > i2) {
                this.mDeceleration = ((-signum) * f) / (i2 * 2.0f);
                abs = i2;
            }
            this.mOver = (int) abs;
            this.mState = 2;
            int i3 = this.mStart;
            if (this.mVelocity <= 0) {
                abs = -abs;
            }
            this.mFinal = i3 + ((int) abs);
            this.mDuration = -((int) ((this.mVelocity * 1000.0f) / this.mDeceleration));
        }

        public void startScroll(int i, int i2, int i3, float f) {
            this.mFinished = false;
            this.mStart = i;
            this.mCurrentPosition = i;
            this.mFinal = i + i2;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = i3;
            D d2 = this.mSpring;
            if (d2 != null) {
                d2.c();
            }
            if (this.mState == 3) {
                this.mSpring = new D(this, SPRING_PROPERTY);
                ResourceProvider provider = DynamicResource.provider(this.mContext);
                float f2 = provider.getFloat(R.dimen.horizontal_spring_stiffness);
                float f3 = provider.getFloat(R.dimen.horizontal_spring_damping_ratio);
                D d3 = this.mSpring;
                E e = new E(this.mFinal);
                e.b(f2);
                e.a(f3);
                d3.s = e;
                D d4 = this.mSpring;
                d4.f820a = f;
                d4.k(this.mFinal);
                D d5 = this.mSpring;
                v vVar = new v() { // from class: c.a.a.a1.s
                    @Override // b.h.a.v
                    public final void onAnimationEnd(b.h.a.y yVar, boolean z, float f4, float f5) {
                        OverScroller.SplineOverScroller splineOverScroller = OverScroller.SplineOverScroller.this;
                        splineOverScroller.mSpring = null;
                        splineOverScroller.finish();
                        splineOverScroller.mState = 0;
                    }
                };
                if (!d5.k.contains(vVar)) {
                    d5.k.add(vVar);
                }
            }
            this.mDeceleration = RecentsState.NO_OFFSET;
            this.mVelocity = 0;
        }

        public final void startSpringback(int i, int i2) {
            this.mFinished = false;
            this.mState = 1;
            this.mStart = i;
            this.mCurrentPosition = i;
            this.mFinal = i2;
            int i3 = i - i2;
            this.mDeceleration = getDeceleration(i3);
            this.mVelocity = -i3;
            this.mOver = Math.abs(i3);
            this.mDuration = (int) (Math.sqrt((i3 * (-2.0d)) / this.mDeceleration) * 1000.0d);
        }

        public boolean update() {
            if (this.mState == 3) {
                return this.mFinished;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
            if (currentAnimationTimeMillis == 0) {
                return this.mDuration > 0;
            }
            int i = this.mDuration;
            if (currentAnimationTimeMillis > i) {
                return false;
            }
            double d2 = 0.0d;
            int i2 = this.mState;
            if (i2 == 0) {
                float f = currentAnimationTimeMillis / this.mSplineDuration;
                int i3 = (int) (f * 100.0f);
                float f2 = 1.0f;
                float f3 = RecentsState.NO_OFFSET;
                if (i3 < 100) {
                    float f4 = i3 / 100.0f;
                    int i4 = i3 + 1;
                    float[] fArr = SPLINE_POSITION;
                    float f5 = fArr[i3];
                    f3 = (fArr[i4] - f5) / ((i4 / 100.0f) - f4);
                    f2 = a.a(f, f4, f3, f5);
                }
                int i5 = this.mSplineDistance;
                this.mCurrVelocity = ((f3 * i5) / this.mSplineDuration) * 1000.0f;
                d2 = f2 * i5;
            } else if (i2 == 1) {
                float f6 = currentAnimationTimeMillis / i;
                float f7 = f6 * f6;
                float signum = Math.signum(this.mVelocity);
                int i6 = this.mOver;
                d2 = ((3.0f * f7) - ((2.0f * f6) * f7)) * i6 * signum;
                this.mCurrVelocity = ((-f6) + f7) * signum * i6 * 6.0f;
            } else if (i2 == 2) {
                float f8 = currentAnimationTimeMillis / 1000.0f;
                int i7 = this.mVelocity;
                float f9 = this.mDeceleration;
                this.mCurrVelocity = (f9 * f8) + i7;
                d2 = (((f9 * f8) * f8) / 2.0f) + (i7 * f8);
            }
            this.mCurrentPosition = this.mStart + ((int) Math.round(d2));
            return true;
        }
    }

    public OverScroller(Context context) {
        this.mScroller = new SplineOverScroller(context);
    }

    public boolean isSpringing() {
        SplineOverScroller splineOverScroller = this.mScroller;
        return splineOverScroller.mState == 3 && !splineOverScroller.mFinished;
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        if (timeInterpolator == null) {
            this.mInterpolator = Interpolators.SCROLL;
        } else {
            this.mInterpolator = timeInterpolator;
        }
    }

    public void startScroll(int i, int i2, int i3) {
        this.mMode = 0;
        this.mScroller.startScroll(i, i2, i3, RecentsState.NO_OFFSET);
    }
}
