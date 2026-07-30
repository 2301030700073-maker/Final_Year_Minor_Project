package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.widget.CardView;
import com.google.android.material.card.MaterialCardView;
import com.joeykrim.rootcheck.R;
import defpackage.C3554qD;

/* renamed from: Qr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0461Qr {

    /* renamed from: do, reason: not valid java name */
    public static final double f3057do = Math.cos(Math.toRadians(45.0d));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ColorDrawable f3058do;

    /* renamed from: case, reason: not valid java name */
    public final int f3059case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f3061do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f3062do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f3063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f3064do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f3066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayerDrawable f3067do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RippleDrawable f3068do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0716as f3069do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MaterialCardView f3070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f3071do;

    /* renamed from: for, reason: not valid java name */
    public int f3073for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f3074for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public C0716as f3075for;

    /* renamed from: if, reason: not valid java name */
    public int f3076if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f3077if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f3078if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C0716as f3079if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f3080if;

    /* renamed from: new, reason: not valid java name */
    public int f3081new;

    /* renamed from: try, reason: not valid java name */
    public final int f3082try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f3065do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3072do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f3060do = 0.0f;

    static {
        f3058do = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public C0461Qr(MaterialCardView materialCardView, AttributeSet attributeSet, int i) {
        this.f3070do = materialCardView;
        C0716as c0716as = new C0716as(materialCardView.getContext(), attributeSet, i, R.style.Widget_MaterialComponents_CardView);
        this.f3069do = c0716as;
        c0716as.m4766class(materialCardView.getContext());
        c0716as.m4772import();
        C3554qD c3554qD = c0716as.f8253do.f8278do;
        c3554qD.getClass();
        C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, O2.f2493goto, i, R.style.CardView);
        if (obtainStyledAttributes.hasValue(3)) {
            cdo.m7868if(obtainStyledAttributes.getDimension(3, 0.0f));
        }
        this.f3079if = new C0716as();
        m1995case(new C3554qD(cdo));
        this.f3062do = C0222Ft.m651new(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, C2785g1.f13028do);
        this.f3082try = C0222Ft.m649for(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.f3059case = C0222Ft.m649for(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: if, reason: not valid java name */
    public static float m1994if(HQ hq, float f) {
        if (hq instanceof PA) {
            return (float) ((1.0d - f3057do) * f);
        }
        if (hq instanceof C0139Cc) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1995case(C3554qD c3554qD) {
        this.f3071do = c3554qD;
        C0716as c0716as = this.f3069do;
        c0716as.mo4768do(c3554qD);
        c0716as.f8267if = !c0716as.m4767const();
        C0716as c0716as2 = this.f3079if;
        if (c0716as2 != null) {
            c0716as2.mo4768do(c3554qD);
        }
        C0716as c0716as3 = this.f3075for;
        if (c0716as3 != null) {
            c0716as3.mo4768do(c3554qD);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final float m1996do() {
        HQ hq = this.f3071do.f15057do;
        C0716as c0716as = this.f3069do;
        return Math.max(Math.max(m1994if(hq, c0716as.m4765catch()), m1994if(this.f3071do.f15063if, c0716as.f8253do.f8278do.f15064if.mo1748do(c0716as.m4780this()))), Math.max(m1994if(this.f3071do.f15060for, c0716as.f8253do.f8278do.f15061for.mo1748do(c0716as.m4780this())), m1994if(this.f3071do.f15066new, c0716as.f8253do.f8278do.f15067new.mo1748do(c0716as.m4780this()))));
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m1997else() {
        MaterialCardView materialCardView = this.f3070do;
        return ((CardView) materialCardView).f6033if && this.f3069do.m4767const() && ((CardView) materialCardView).f6031do;
    }

    /* renamed from: for, reason: not valid java name */
    public final LayerDrawable m1998for() {
        if (this.f3068do == null) {
            this.f3075for = new C0716as(this.f3071do);
            this.f3068do = new RippleDrawable(this.f3064do, null, this.f3075for);
        }
        if (this.f3067do == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f3068do, this.f3079if, this.f3078if});
            this.f3067do = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f3067do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m1999goto() {
        View view = this.f3070do;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    /* renamed from: new, reason: not valid java name */
    public final C0439Pr m2000new(Drawable drawable) {
        int i;
        int i2;
        if (((CardView) this.f3070do).f6031do) {
            int ceil = (int) Math.ceil((((NA) ((CardView) r0).f6030do.f6034do).f2334if * 1.5f) + (m1997else() ? m1996do() : 0.0f));
            i = (int) Math.ceil(((NA) ((CardView) r0).f6030do.f6034do).f2334if + (m1997else() ? m1996do() : 0.0f));
            i2 = ceil;
        } else {
            i = 0;
            i2 = 0;
        }
        return new C0439Pr(drawable, i, i2, i, i2);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m2001this() {
        Drawable drawable = this.f3066do;
        Drawable m1998for = m1999goto() ? m1998for() : this.f3079if;
        this.f3066do = m1998for;
        if (drawable != m1998for) {
            int i = Build.VERSION.SDK_INT;
            MaterialCardView materialCardView = this.f3070do;
            if (i < 23 || !(materialCardView.getForeground() instanceof InsetDrawable)) {
                materialCardView.setForeground(m2000new(m1998for));
            } else {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(m1998for);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2002try(boolean z, boolean z2) {
        Drawable drawable = this.f3078if;
        if (drawable != null) {
            if (!z2) {
                drawable.setAlpha(z ? 255 : 0);
                this.f3060do = z ? 1.0f : 0.0f;
                return;
            }
            float f = z ? 1.0f : 0.0f;
            float f2 = z ? 1.0f - this.f3060do : this.f3060do;
            ValueAnimator valueAnimator = this.f3063do;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f3063do = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f3060do, f);
            this.f3063do = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: Or
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    C0461Qr c0461Qr = C0461Qr.this;
                    c0461Qr.getClass();
                    float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    c0461Qr.f3078if.setAlpha((int) (255.0f * floatValue));
                    c0461Qr.f3060do = floatValue;
                }
            });
            this.f3063do.setInterpolator(this.f3062do);
            this.f3063do.setDuration((long) ((z ? this.f3082try : this.f3059case) * f2));
            this.f3063do.start();
        }
    }
}
