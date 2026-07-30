package com.heinrichreimersoftware.materialintro.view;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.viewpager.widget.ViewPager;
import defpackage.C0348Ln;
import defpackage.C0369Mn;
import defpackage.C3850vF;
import defpackage.Cpublic;
import defpackage.V0;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class InkPageIndicator extends View implements ViewPager.Cgoto, View.OnAttachStateChangeListener {

    /* renamed from: goto, reason: not valid java name */
    public static final /* synthetic */ int f12171goto = 0;

    /* renamed from: break, reason: not valid java name */
    public float f12172break;

    /* renamed from: case, reason: not valid java name */
    public float f12173case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f12174case;

    /* renamed from: do, reason: not valid java name */
    public final float f12175do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f12176do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f12177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f12178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f12179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Interpolator f12180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPager f12181do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f12182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f12184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor[] f12185do;

    /* renamed from: else, reason: not valid java name */
    public float f12186else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public int f12187else;

    /* renamed from: for, reason: not valid java name */
    public float f12188for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f12189for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Path f12190for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f12191for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public float[] f12192for;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public float f12193goto;

    /* renamed from: if, reason: not valid java name */
    public final float f12194if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f12195if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Paint f12196if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Path f12197if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f12198if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float[] f12199if;

    /* renamed from: new, reason: not valid java name */
    public float f12200new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int f12201new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final Path f12202new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f12203new;

    /* renamed from: this, reason: not valid java name */
    public float f12204this;

    /* renamed from: try, reason: not valid java name */
    public float f12205try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f12206try;

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$case, reason: invalid class name */
    public abstract class Ccase {

        /* renamed from: do, reason: not valid java name */
        public final float f12207do;

        public Ccase(float f) {
            this.f12207do = f;
        }

        /* renamed from: do, reason: not valid java name */
        public abstract boolean mo6378do(float f);
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$do, reason: invalid class name */
    public class Cdo extends Ccase {
        public Cdo(float f) {
            super(f);
        }

        @Override // com.heinrichreimersoftware.materialintro.view.InkPageIndicator.Ccase
        /* renamed from: do */
        public final boolean mo6378do(float f) {
            return f < this.f12207do;
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$for, reason: invalid class name */
    public class Cfor extends Cnew {

        /* renamed from: for, reason: not valid java name */
        public final int f12209for;

        /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$for$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {
            public Cdo() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Cfor cfor = Cfor.this;
                InkPageIndicator inkPageIndicator = InkPageIndicator.this;
                inkPageIndicator.f12192for[cfor.f12209for] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                inkPageIndicator.postInvalidateOnAnimation();
            }
        }

        /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$for$if, reason: invalid class name */
        public class Cif extends AnimatorListenerAdapter {
            public Cif() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                Cfor cfor = Cfor.this;
                InkPageIndicator inkPageIndicator = InkPageIndicator.this;
                inkPageIndicator.f12192for[cfor.f12209for] = 0.0f;
                inkPageIndicator.postInvalidateOnAnimation();
                InkPageIndicator.this.postInvalidateOnAnimation();
            }
        }

        public Cfor(int i, Ccase ccase) {
            super(ccase);
            setFloatValues(1.0E-5f, 1.0f);
            this.f12209for = i;
            setDuration(InkPageIndicator.this.f12195if);
            setInterpolator(InkPageIndicator.this.f12180do);
            addUpdateListener(new Cdo());
            addListener(new Cif());
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$if, reason: invalid class name */
    public class Cif extends Cnew {

        /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$if$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {
            public Cdo() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Cif cif = Cif.this;
                InkPageIndicator.this.f12186else = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                InkPageIndicator.this.postInvalidateOnAnimation();
                for (Cfor cfor : InkPageIndicator.this.f12185do) {
                    cfor.m6379do(InkPageIndicator.this.f12186else);
                }
            }
        }

        /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$if$for, reason: invalid class name */
        public class Cfor extends AnimatorListenerAdapter {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ float f12214do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ int[] f12216do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ float f12217if;

            public Cfor(int[] iArr, float f, float f2) {
                this.f12216do = iArr;
                this.f12214do = f;
                this.f12217if = f2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                InkPageIndicator inkPageIndicator = InkPageIndicator.this;
                inkPageIndicator.f12186else = -1.0f;
                inkPageIndicator.f12193goto = -1.0f;
                inkPageIndicator.postInvalidateOnAnimation();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                Cif cif = Cif.this;
                InkPageIndicator inkPageIndicator = InkPageIndicator.this;
                Arrays.fill(inkPageIndicator.f12199if, 0.0f);
                inkPageIndicator.postInvalidateOnAnimation();
                int[] iArr = this.f12216do;
                int length = iArr.length;
                int i = 0;
                while (true) {
                    InkPageIndicator inkPageIndicator2 = InkPageIndicator.this;
                    if (i >= length) {
                        inkPageIndicator2.f12186else = this.f12214do;
                        inkPageIndicator2.f12193goto = this.f12217if;
                        inkPageIndicator2.postInvalidateOnAnimation();
                        return;
                    } else {
                        inkPageIndicator2.f12192for[iArr[i]] = 1.0E-5f;
                        inkPageIndicator2.postInvalidateOnAnimation();
                        i++;
                    }
                }
            }
        }

        /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$if$if, reason: invalid class name and collision with other inner class name */
        public class C0081if implements ValueAnimator.AnimatorUpdateListener {
            public C0081if() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Cif cif = Cif.this;
                InkPageIndicator.this.f12193goto = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                InkPageIndicator.this.postInvalidateOnAnimation();
                for (Cfor cfor : InkPageIndicator.this.f12185do) {
                    cfor.m6379do(InkPageIndicator.this.f12193goto);
                }
            }
        }

        public Cif(int i, int i2, int i3, Ccase ccase) {
            super(ccase);
            setDuration(InkPageIndicator.this.f12195if);
            setInterpolator(InkPageIndicator.this.f12180do);
            float min = i2 > i ? Math.min(InkPageIndicator.this.f12184do[i], InkPageIndicator.this.f12173case) : InkPageIndicator.this.f12184do[i2];
            float f = InkPageIndicator.this.f12175do;
            float f2 = min - f;
            float f3 = (i2 > i ? InkPageIndicator.this.f12184do[i2] : InkPageIndicator.this.f12184do[i2]) - f;
            float max = (i2 > i ? InkPageIndicator.this.f12184do[i2] : Math.max(InkPageIndicator.this.f12184do[i], InkPageIndicator.this.f12173case)) + f;
            float f4 = (i2 > i ? InkPageIndicator.this.f12184do[i2] : InkPageIndicator.this.f12184do[i2]) + f;
            InkPageIndicator.this.f12185do = new Cfor[i3];
            int[] iArr = new int[i3];
            int i4 = 0;
            if (f2 != f3) {
                setFloatValues(f2, f3);
                while (i4 < i3) {
                    int i5 = i + i4;
                    InkPageIndicator.this.f12185do[i4] = InkPageIndicator.this.new Cfor(i5, new Ctry(InkPageIndicator.this.f12184do[i5]));
                    iArr[i4] = i5;
                    i4++;
                }
                addUpdateListener(new Cdo());
            } else {
                setFloatValues(max, f4);
                while (i4 < i3) {
                    int i6 = i - i4;
                    InkPageIndicator.this.f12185do[i4] = InkPageIndicator.this.new Cfor(i6, new Cdo(InkPageIndicator.this.f12184do[i6]));
                    iArr[i4] = i6;
                    i4++;
                }
                addUpdateListener(new C0081if());
            }
            addListener(new Cfor(iArr, f2, max));
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$new, reason: invalid class name */
    public abstract class Cnew extends ValueAnimator {

        /* renamed from: do, reason: not valid java name */
        public final Ccase f12219do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f12220do = false;

        public Cnew(Ccase ccase) {
            this.f12219do = ccase;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m6379do(float f) {
            if (this.f12220do || !this.f12219do.mo6378do(f)) {
                return;
            }
            start();
            this.f12220do = true;
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.InkPageIndicator$try, reason: invalid class name */
    public class Ctry extends Ccase {
        public Ctry(float f) {
            super(f);
        }

        @Override // com.heinrichreimersoftware.materialintro.view.InkPageIndicator.Ccase
        /* renamed from: do */
        public final boolean mo6378do(float f) {
            return f > this.f12207do;
        }
    }

    public InkPageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6375case() {
        ViewPager viewPager = this.f12181do;
        if (viewPager != null) {
            this.f12174case = viewPager.f8038new;
        } else {
            this.f12174case = 0;
        }
        float[] fArr = this.f12184do;
        if (fArr != null) {
            this.f12173case = fArr[Math.max(0, Math.min(this.f12174case, fArr.length - 1))];
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.Cgoto
    /* renamed from: do */
    public final void mo4671do(float f, int i, int i2) {
        if (this.f12198if) {
            int i3 = this.f12191for ? this.f12187else : this.f12174case;
            if (i3 != i) {
                f = 1.0f - f;
                if (f == 1.0f) {
                    i = Math.min(i3, i);
                }
            }
            float[] fArr = this.f12199if;
            if (i < fArr.length) {
                fArr[i] = f;
                postInvalidateOnAnimation();
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.Cgoto
    /* renamed from: for */
    public final void mo4672for(int i) {
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6376if(int i, int i2) {
        if (this.f12203new) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            float paddingBottom = ((i2 - getPaddingBottom()) / 2.0f) + paddingTop;
            float paddingRight = ((i - getPaddingRight()) / 2.0f) + paddingLeft;
            int i3 = this.f12206try;
            int i4 = this.f12189for;
            int i5 = this.f12201new;
            float f = this.f12175do;
            float f2 = (paddingRight - ((((i3 - 1) * i5) + (i4 * i3)) / 2.0f)) + f;
            this.f12184do = new float[Math.max(1, i3)];
            for (int i6 = 0; i6 < this.f12206try; i6++) {
                this.f12184do[i6] = ((i4 + i5) * i6) + f2;
            }
            this.f12188for = paddingBottom - f;
            this.f12200new = paddingBottom;
            this.f12205try = paddingBottom + f;
            m6375case();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.Cgoto
    /* renamed from: new */
    public final void mo1557new(int i) {
        if (!this.f12198if) {
            m6375case();
            return;
        }
        int min = Math.min(i, this.f12206try - 1);
        int i2 = this.f12174case;
        if (min == i2) {
            return;
        }
        this.f12191for = true;
        this.f12187else = i2;
        this.f12174case = min;
        int abs = Math.abs(min - i2);
        if (abs > 1) {
            if (min > this.f12187else) {
                for (int i3 = 0; i3 < abs; i3++) {
                    int i4 = this.f12187else + i3;
                    float[] fArr = this.f12199if;
                    if (i4 < fArr.length) {
                        fArr[i4] = 1.0f;
                        postInvalidateOnAnimation();
                    }
                }
            } else {
                for (int i5 = -1; i5 > (-abs); i5--) {
                    int i6 = this.f12187else + i5;
                    float[] fArr2 = this.f12199if;
                    if (i6 < fArr2.length) {
                        fArr2[i6] = 1.0f;
                        postInvalidateOnAnimation();
                    }
                }
            }
        }
        if (getVisibility() == 0) {
            float f = this.f12184do[min];
            int i7 = this.f12187else;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f12173case, f);
            Cif cif = new Cif(i7, min, abs, min > i7 ? new Ctry(f - ((f - this.f12173case) * 0.25f)) : new Cdo(Cpublic.m7823for(this.f12173case, f, 0.25f, f)));
            this.f12182do = cif;
            cif.addListener(new C0348Ln(this));
            ofFloat.addUpdateListener(new com.heinrichreimersoftware.materialintro.view.Cif(this));
            ofFloat.addListener(new C0369Mn(this));
            boolean z = this.f12183do;
            long j = this.f12176do;
            ofFloat.setStartDelay(z ? j / 4 : 0L);
            ofFloat.setDuration((j * 3) / 4);
            ofFloat.setInterpolator(this.f12180do);
            ofFloat.start();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        RectF rectF;
        Path path;
        float f;
        int i;
        Path path2;
        float f2;
        float f3;
        if (this.f12181do == null || this.f12206try == 0) {
            return;
        }
        Path path3 = this.f12178do;
        path3.rewind();
        int i2 = 0;
        while (true) {
            int i3 = this.f12206try;
            rectF = this.f12179do;
            path = this.f12197if;
            f = this.f12175do;
            if (i2 >= i3) {
                break;
            }
            int i4 = i3 - 1;
            int i5 = i2 == i4 ? i2 : i2 + 1;
            float[] fArr = this.f12184do;
            float f4 = fArr[i2];
            float f5 = fArr[i5];
            float f6 = i2 == i4 ? -1.0f : this.f12199if[i2];
            float f7 = this.f12192for[i2];
            path.rewind();
            if ((f6 == 0.0f || f6 == -1.0f) && f7 == 0.0f && (i2 != this.f12174case || !this.f12183do)) {
                path.addCircle(this.f12184do[i2], this.f12200new, f, Path.Direction.CW);
            }
            int i6 = this.f12201new;
            if (f6 <= 0.0f || f6 > 0.5f || this.f12186else != -1.0f) {
                i = i2;
            } else {
                Path path4 = this.f12190for;
                path4.rewind();
                path4.moveTo(f4, this.f12205try);
                float f8 = f4 + f;
                rectF.set(f4 - f, this.f12188for, f8, this.f12205try);
                path4.arcTo(rectF, 90.0f, 180.0f, true);
                float f9 = i6 * f6;
                float f10 = f8 + f9;
                this.f12204this = f10;
                float f11 = this.f12200new;
                this.f12172break = f11;
                float f12 = this.f12194if;
                float f13 = f4 + f12;
                path4.cubicTo(f13, this.f12188for, f10, f11 - f12, f10, f11);
                float f14 = this.f12205try;
                path4.cubicTo(this.f12204this, this.f12172break + f12, f13, f14, f4, f14);
                path.op(path4, Path.Op.UNION);
                Path path5 = this.f12202new;
                path5.rewind();
                path5.moveTo(f5, this.f12205try);
                float f15 = f5 - f;
                i = i2;
                rectF.set(f15, this.f12188for, f5 + f, this.f12205try);
                path5.arcTo(rectF, 90.0f, -180.0f, true);
                float f16 = f15 - f9;
                this.f12204this = f16;
                float f17 = this.f12200new;
                this.f12172break = f17;
                float f18 = f5 - f12;
                path5.cubicTo(f18, this.f12188for, f16, f17 - f12, f16, f17);
                float f19 = this.f12205try;
                path5.cubicTo(this.f12204this, this.f12172break + f12, f18, f19, f5, f19);
                path.op(path5, Path.Op.UNION);
            }
            if (f6 <= 0.5f || f6 >= 1.0f || this.f12186else != -1.0f) {
                path2 = path3;
                f2 = f5;
                f3 = f4;
            } else {
                float f20 = (f6 - 0.2f) * 1.25f;
                path.moveTo(f4, this.f12205try);
                float f21 = f4 + f;
                rectF.set(f4 - f, this.f12188for, f21, this.f12205try);
                path.arcTo(rectF, 90.0f, 180.0f, true);
                float f22 = f21 + (i6 / 2);
                this.f12204this = f22;
                float f23 = f20 * f;
                float f24 = this.f12200new - f23;
                this.f12172break = f24;
                float f25 = (1.0f - f20) * f;
                path2 = path3;
                f2 = f5;
                f3 = f4;
                path.cubicTo(f22 - f23, this.f12188for, f22 - f25, f24, f22, f24);
                float f26 = this.f12188for;
                float f27 = this.f12204this;
                path.cubicTo(f25 + f27, this.f12172break, f23 + f27, f26, f2, f26);
                rectF.set(f2 - f, this.f12188for, f2 + f, this.f12205try);
                path.arcTo(rectF, 270.0f, 180.0f, true);
                float f28 = f23 + this.f12200new;
                this.f12172break = f28;
                float f29 = this.f12204this;
                path.cubicTo(f23 + f29, this.f12205try, f25 + f29, f28, f29, f28);
                float f30 = this.f12205try;
                float f31 = this.f12204this;
                path.cubicTo(f31 - f25, this.f12172break, f31 - f23, f30, f3, f30);
            }
            if (f6 == 1.0f && this.f12186else == -1.0f) {
                rectF.set(f3 - f, this.f12188for, f2 + f, this.f12205try);
                path.addRoundRect(rectF, f, f, Path.Direction.CW);
            }
            if (f7 > 1.0E-5f) {
                path.addCircle(f3, this.f12200new, f7 * f, Path.Direction.CW);
            }
            path3 = path2;
            path3.op(path, Path.Op.UNION);
            i2 = i + 1;
        }
        if (this.f12186else != -1.0f) {
            path.rewind();
            rectF.set(this.f12186else, this.f12188for, this.f12193goto, this.f12205try);
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
            path3.op(path, Path.Op.UNION);
        }
        canvas.drawPath(path3, this.f12177do);
        canvas.drawCircle(this.f12173case, this.f12200new, f, this.f12196if);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingTop = getPaddingTop();
        int i3 = this.f12189for;
        int paddingBottom = getPaddingBottom() + paddingTop + i3;
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            paddingBottom = Math.min(paddingBottom, View.MeasureSpec.getSize(i2));
        } else if (mode == 1073741824) {
            paddingBottom = View.MeasureSpec.getSize(i2);
        }
        int paddingLeft = getPaddingLeft();
        int i4 = this.f12206try;
        int paddingRight = getPaddingRight() + ((i4 - 1) * this.f12201new) + (i3 * i4) + paddingLeft;
        int mode2 = View.MeasureSpec.getMode(i);
        if (mode2 == Integer.MIN_VALUE) {
            paddingRight = Math.min(paddingRight, View.MeasureSpec.getSize(i));
        } else if (mode2 == 1073741824) {
            paddingRight = View.MeasureSpec.getSize(i);
        }
        setMeasuredDimension(paddingRight, paddingBottom);
        if (this.f12203new) {
            return;
        }
        this.f12203new = true;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        m6376if(i, i2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f12198if = true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f12198if = false;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6377try() {
        float[] fArr = new float[Math.max(this.f12206try - 1, 0)];
        this.f12199if = fArr;
        Arrays.fill(fArr, 0.0f);
        float[] fArr2 = new float[this.f12206try];
        this.f12192for = fArr2;
        Arrays.fill(fArr2, 0.0f);
        this.f12186else = -1.0f;
        this.f12193goto = -1.0f;
        this.f12183do = true;
    }

    public InkPageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12206try = 0;
        this.f12174case = 0;
        this.f12203new = false;
        int i2 = (int) context.getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3850vF.f16044do, i, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, i2 * 8);
        this.f12189for = dimensionPixelSize;
        float f = dimensionPixelSize / 2;
        this.f12175do = f;
        this.f12194if = f / 2.0f;
        this.f12201new = obtainStyledAttributes.getDimensionPixelSize(3, i2 * 12);
        long integer = obtainStyledAttributes.getInteger(0, 400);
        this.f12176do = integer;
        this.f12195if = integer / 2;
        int color = obtainStyledAttributes.getColor(4, -2130706433);
        int color2 = obtainStyledAttributes.getColor(1, -1);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f12177do = paint;
        paint.setColor(color);
        Paint paint2 = new Paint(1);
        this.f12196if = paint2;
        paint2.setColor(color2);
        if (V0.f4017do == null) {
            V0.f4017do = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_slow_in);
        }
        this.f12180do = V0.f4017do;
        this.f12178do = new Path();
        this.f12197if = new Path();
        this.f12190for = new Path();
        this.f12202new = new Path();
        this.f12179do = new RectF();
        addOnAttachStateChangeListener(this);
    }
}
