package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.joeykrim.rootcheck.R;
import defpackage.C0144Ch;
import defpackage.C0156Ct;
import defpackage.C0222Ft;
import defpackage.C0315Kc;
import defpackage.C0540Ui;
import defpackage.C0584Wi;
import defpackage.C0716as;
import defpackage.C2740fF;
import defpackage.C2785g1;
import defpackage.C2834gs;
import defpackage.C3554qD;
import defpackage.C3586qn;
import defpackage.C5;
import defpackage.Cpublic;
import defpackage.InterfaceC3495pD;
import defpackage.InterfaceC3789uD;
import defpackage.O4;
import defpackage.ViewTreeObserverOnPreDrawListenerC0562Vi;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.google.android.material.floatingactionbutton.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f11098do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f11099do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C5 f11100do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0156Ct f11101do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewTreeObserverOnPreDrawListenerC0562Vi f11102do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Animator f11103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f11107do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayerDrawable f11108do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f11109do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FloatingActionButton f11110do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<Animator.AnimatorListener> f11111do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3495pD f11112do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f11113do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11114do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public float f11115for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<Ccase> f11117for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f11118if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f11119if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C0156Ct f11120if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<Animator.AnimatorListener> f11122if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public float f11123new;

    /* renamed from: do, reason: not valid java name */
    public static final C0144Ch f11089do = C2785g1.f13025do;

    /* renamed from: new, reason: not valid java name */
    public static final int f11094new = R.attr.motionDurationLong2;

    /* renamed from: try, reason: not valid java name */
    public static final int f11096try = R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: case, reason: not valid java name */
    public static final int f11087case = R.attr.motionDurationMedium1;

    /* renamed from: else, reason: not valid java name */
    public static final int f11091else = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f11090do = {android.R.attr.state_pressed, android.R.attr.state_enabled};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f11093if = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f11092for = {android.R.attr.state_focused, android.R.attr.state_enabled};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[] f11095new = {android.R.attr.state_hovered, android.R.attr.state_enabled};

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public static final int[] f11097try = {android.R.attr.state_enabled};

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public static final int[] f11088case = new int[0];

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public float f11124try = 1.0f;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f11116for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11105do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11106do = new RectF();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f11121if = new RectF();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Matrix f11104do = new Matrix();

    /* renamed from: com.google.android.material.floatingactionbutton.new$case, reason: invalid class name */
    public interface Ccase {
        /* renamed from: do */
        void mo5826do();

        /* renamed from: if */
        void mo5827if();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$do, reason: invalid class name */
    public class Cdo extends C2834gs {
        public Cdo() {
        }

        @Override // android.animation.TypeEvaluator
        public final Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            Cnew.this.f11124try = f;
            float[] fArr = ((C2834gs) this).f13222do;
            matrix.getValues(fArr);
            float[] fArr2 = this.f13223if;
            matrix2.getValues(fArr2);
            for (int i = 0; i < 9; i++) {
                float f2 = fArr2[i];
                float f3 = fArr[i];
                fArr2[i] = Cpublic.m7823for(f2, f3, f, f3);
            }
            Matrix matrix3 = ((C2834gs) this).f13221do;
            matrix3.setValues(fArr2);
            return matrix3;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$else, reason: invalid class name */
    public class Celse extends Cgoto {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f11126if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(C0584Wi c0584Wi) {
            super(c0584Wi);
            this.f11126if = c0584Wi;
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Cgoto
        /* renamed from: do, reason: not valid java name */
        public final float mo5835do() {
            return this.f11126if.f11098do;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$for, reason: invalid class name */
    public class Cfor extends Cgoto {
        public Cfor(C0584Wi c0584Wi) {
            super(c0584Wi);
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Cgoto
        /* renamed from: do */
        public final float mo5835do() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$goto, reason: invalid class name */
    public abstract class Cgoto extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public float f11127do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Cnew f11128do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11129do;

        /* renamed from: if, reason: not valid java name */
        public float f11130if;

        public Cgoto(C0584Wi c0584Wi) {
            this.f11128do = c0584Wi;
        }

        /* renamed from: do */
        public abstract float mo5835do();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            float f = (int) this.f11130if;
            C0716as c0716as = this.f11128do.f11109do;
            if (c0716as != null) {
                c0716as.m4770final(f);
            }
            this.f11129do = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            boolean z = this.f11129do;
            Cnew cnew = this.f11128do;
            if (!z) {
                C0716as c0716as = cnew.f11109do;
                this.f11127do = c0716as == null ? 0.0f : c0716as.f8253do.f8289try;
                this.f11130if = mo5835do();
                this.f11129do = true;
            }
            float f = this.f11127do;
            float animatedFraction = (int) ((valueAnimator.getAnimatedFraction() * (this.f11130if - f)) + f);
            C0716as c0716as2 = cnew.f11109do;
            if (c0716as2 != null) {
                c0716as2.m4770final(animatedFraction);
            }
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ float f11131case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f11132do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Matrix f11133do;

        /* renamed from: else, reason: not valid java name */
        public final /* synthetic */ float f11135else;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f11136for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f11137if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f11138new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f11139try;

        public Cif(float f, float f2, float f3, float f4, float f5, float f6, float f7, Matrix matrix) {
            this.f11132do = f;
            this.f11137if = f2;
            this.f11136for = f3;
            this.f11138new = f4;
            this.f11139try = f5;
            this.f11131case = f6;
            this.f11135else = f7;
            this.f11133do = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cnew cnew = Cnew.this;
            cnew.f11110do.setAlpha(C2785g1.m6709do(this.f11132do, this.f11137if, 0.0f, 0.2f, floatValue));
            FloatingActionButton floatingActionButton = cnew.f11110do;
            float f = this.f11138new;
            float f2 = this.f11136for;
            floatingActionButton.setScaleX(((f - f2) * floatValue) + f2);
            FloatingActionButton floatingActionButton2 = cnew.f11110do;
            float f3 = this.f11139try;
            floatingActionButton2.setScaleY(((f - f3) * floatValue) + f3);
            float f4 = this.f11135else;
            float f5 = this.f11131case;
            cnew.f11124try = Cpublic.m7823for(f4, f5, floatValue, f5);
            float m7823for = Cpublic.m7823for(f4, f5, floatValue, f5);
            Matrix matrix = this.f11133do;
            cnew.m5831do(m7823for, matrix);
            cnew.f11110do.setImageMatrix(matrix);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$new, reason: invalid class name and collision with other inner class name */
    public class C0071new extends Cgoto {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f11140if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0071new(C0584Wi c0584Wi) {
            super(c0584Wi);
            this.f11140if = c0584Wi;
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Cgoto
        /* renamed from: do */
        public final float mo5835do() {
            Cnew cnew = this.f11140if;
            return cnew.f11098do + cnew.f11118if;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.new$try, reason: invalid class name */
    public class Ctry extends Cgoto {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f11141if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(C0584Wi c0584Wi) {
            super(c0584Wi);
            this.f11141if = c0584Wi;
        }

        @Override // com.google.android.material.floatingactionbutton.Cnew.Cgoto
        /* renamed from: do */
        public final float mo5835do() {
            Cnew cnew = this.f11141if;
            return cnew.f11098do + cnew.f11115for;
        }
    }

    public Cnew(FloatingActionButton floatingActionButton, FloatingActionButton.Cdo cdo) {
        this.f11110do = floatingActionButton;
        this.f11112do = cdo;
        C2740fF c2740fF = new C2740fF();
        C0584Wi c0584Wi = (C0584Wi) this;
        c2740fF.m6645do(f11090do, m5828new(new Ctry(c0584Wi)));
        c2740fF.m6645do(f11093if, m5828new(new C0071new(c0584Wi)));
        c2740fF.m6645do(f11092for, m5828new(new C0071new(c0584Wi)));
        c2740fF.m6645do(f11095new, m5828new(new C0071new(c0584Wi)));
        c2740fF.m6645do(f11097try, m5828new(new Celse(c0584Wi)));
        c2740fF.m6645do(f11088case, m5828new(new Cfor(c0584Wi)));
        this.f11123new = floatingActionButton.getRotation();
    }

    /* renamed from: new, reason: not valid java name */
    public static ValueAnimator m5828new(Cgoto cgoto) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f11089do);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(cgoto);
        valueAnimator.addUpdateListener(cgoto);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: break */
    public void mo2750break(float f, float f2, float f3) {
        throw null;
    }

    /* renamed from: case */
    public void mo2751case(Rect rect) {
        int i = 0;
        if (this.f11114do) {
            int i2 = this.f11099do;
            FloatingActionButton floatingActionButton = this.f11110do;
            i = Math.max((i2 - floatingActionButton.m5821else(floatingActionButton.f11074new)) / 2, 0);
        }
        int max = Math.max(i, (int) Math.ceil(mo2758try() + this.f11115for));
        int max2 = Math.max(i, (int) Math.ceil(r0 * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5829catch() {
        ArrayList<Ccase> arrayList = this.f11117for;
        if (arrayList != null) {
            Iterator<Ccase> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo5827if();
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5830class(C3554qD c3554qD) {
        this.f11113do = c3554qD;
        C0716as c0716as = this.f11109do;
        if (c0716as != null) {
            c0716as.mo4768do(c3554qD);
        }
        Object obj = this.f11107do;
        if (obj instanceof InterfaceC3789uD) {
            ((InterfaceC3789uD) obj).mo4768do(c3554qD);
        }
        C5 c5 = this.f11100do;
        if (c5 != null) {
            c5.f323do = c3554qD;
            c5.invalidateSelf();
        }
    }

    /* renamed from: const */
    public boolean mo2752const() {
        throw null;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5831do(float f, Matrix matrix) {
        matrix.reset();
        if (this.f11110do.getDrawable() == null || this.f11119if == 0) {
            return;
        }
        RectF rectF = this.f11106do;
        RectF rectF2 = this.f11121if;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i = this.f11119if;
        rectF2.set(0.0f, 0.0f, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.f11119if;
        matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
    }

    /* renamed from: else */
    public void mo2753else(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        throw null;
    }

    /* renamed from: final */
    public void mo2754final() {
        throw null;
    }

    /* renamed from: for, reason: not valid java name */
    public final AnimatorSet m5832for(float f, float f2, float f3, int i, int i2) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.f11110do;
        ofFloat.addUpdateListener(new Cif(floatingActionButton.getAlpha(), f, floatingActionButton.getScaleX(), f2, floatingActionButton.getScaleY(), this.f11124try, f3, new Matrix(this.f11104do)));
        arrayList.add(ofFloat);
        C0315Kc.m1183throws(animatorSet, arrayList);
        animatorSet.setDuration(C0222Ft.m649for(floatingActionButton.getContext(), i, floatingActionButton.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(C0222Ft.m651new(floatingActionButton.getContext(), i2, C2785g1.f13026do));
        return animatorSet;
    }

    /* renamed from: goto */
    public void mo2755goto() {
        throw null;
    }

    /* renamed from: if, reason: not valid java name */
    public final AnimatorSet m5833if(C0156Ct c0156Ct, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f};
        FloatingActionButton floatingActionButton = this.f11110do;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        c0156Ct.m311case("opacity").m508do(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f2);
        c0156Ct.m311case("scale").m508do(ofFloat2);
        int i = Build.VERSION.SDK_INT;
        if (i == 26) {
            ofFloat2.setEvaluator(new C0540Ui());
        }
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f2);
        c0156Ct.m311case("scale").m508do(ofFloat3);
        if (i == 26) {
            ofFloat3.setEvaluator(new C0540Ui());
        }
        arrayList.add(ofFloat3);
        Matrix matrix = this.f11104do;
        m5831do(f3, matrix);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(floatingActionButton, new C3586qn(), new Cdo(), new Matrix(matrix));
        c0156Ct.m311case("iconScale").m508do(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C0315Kc.m1183throws(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m5834super() {
        Rect rect = this.f11105do;
        mo2751case(rect);
        O4.m1627this(this.f11108do, "Didn't initialize content background");
        boolean mo2752const = mo2752const();
        InterfaceC3495pD interfaceC3495pD = this.f11112do;
        if (mo2752const) {
            super/*android.widget.ImageButton*/.setBackgroundDrawable(new InsetDrawable((Drawable) this.f11108do, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            LayerDrawable layerDrawable = this.f11108do;
            FloatingActionButton.Cdo cdo = (FloatingActionButton.Cdo) interfaceC3495pD;
            if (layerDrawable != null) {
                super/*android.widget.ImageButton*/.setBackgroundDrawable(layerDrawable);
            } else {
                cdo.getClass();
            }
        }
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        floatingActionButton.f11070do.set(i, i2, i3, i4);
        int i5 = floatingActionButton.f11064case;
        floatingActionButton.setPadding(i + i5, i2 + i5, i3 + i5, i4 + i5);
    }

    /* renamed from: this */
    public void mo2756this(int[] iArr) {
        throw null;
    }

    /* renamed from: try */
    public float mo2758try() {
        throw null;
    }
}
