package androidx.transition;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import defpackage.C3500pI;
import defpackage.HF;
import defpackage.KI;
import defpackage.VD;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class Slide extends Visibility {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Celse f7866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final DecelerateInterpolator f7859do = new DecelerateInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static final AccelerateInterpolator f7858do = new AccelerateInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f7861do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7863do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f7862do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f7864do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f7865do = new Ctry();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ccase f7860do = new Ccase();

    /* renamed from: androidx.transition.Slide$case, reason: invalid class name */
    public class Ccase extends Cthis {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: do, reason: not valid java name */
        public final float mo4619do(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$do, reason: invalid class name */
    public class Cdo extends Cgoto {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: if, reason: not valid java name */
        public final float mo4620if(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$else, reason: invalid class name */
    public interface Celse {
        /* renamed from: do */
        float mo4619do(ViewGroup viewGroup, View view);

        /* renamed from: if */
        float mo4620if(ViewGroup viewGroup, View view);
    }

    /* renamed from: androidx.transition.Slide$for, reason: invalid class name */
    public class Cfor extends Cthis {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: do */
        public final float mo4619do(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$goto, reason: invalid class name */
    public static abstract class Cgoto implements Celse {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: do */
        public final float mo4619do(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* renamed from: androidx.transition.Slide$if, reason: invalid class name */
    public class Cif extends Cgoto {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: if */
        public final float mo4620if(ViewGroup viewGroup, View view) {
            return viewGroup.getLayoutDirection() == 1 ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$new, reason: invalid class name */
    public class Cnew extends Cgoto {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: if */
        public final float mo4620if(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$this, reason: invalid class name */
    public static abstract class Cthis implements Celse {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: if */
        public final float mo4620if(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    /* renamed from: androidx.transition.Slide$try, reason: invalid class name */
    public class Ctry extends Cgoto {
        @Override // androidx.transition.Slide.Celse
        /* renamed from: if */
        public final float mo4620if(ViewGroup viewGroup, View view) {
            return viewGroup.getLayoutDirection() == 1 ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    }

    public Slide() {
        this.f7866do = f7860do;
        b(80);
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI == null) {
            return null;
        }
        int[] iArr = (int[]) c3500pI.f14906do.get("android:slide:screenPosition");
        return androidx.transition.Celse.m4662do(view, c3500pI, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f7866do.mo4620if(viewGroup, view), this.f7866do.mo4619do(viewGroup, view), f7858do, this);
    }

    public final void b(int i) {
        if (i == 3) {
            this.f7866do = f7861do;
        } else if (i == 5) {
            this.f7866do = f7864do;
        } else if (i == 48) {
            this.f7866do = f7862do;
        } else if (i == 80) {
            this.f7866do = f7860do;
        } else if (i == 8388611) {
            this.f7866do = f7863do;
        } else {
            if (i != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f7866do = f7865do;
        }
        VD vd = new VD();
        vd.f4057do = i;
        ((Transition) this).f7874do = vd;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4658implements(c3500pI);
        int[] iArr = new int[2];
        c3500pI.f14904do.getLocationOnScreen(iArr);
        c3500pI.f14906do.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: synchronized */
    public final Animator mo4617synchronized(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI2 == null) {
            return null;
        }
        int[] iArr = (int[]) c3500pI2.f14906do.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return androidx.transition.Celse.m4662do(view, c3500pI2, iArr[0], iArr[1], this.f7866do.mo4620if(viewGroup, view), this.f7866do.mo4619do(viewGroup, view), translationX, translationY, f7859do, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4658implements(c3500pI);
        int[] iArr = new int[2];
        c3500pI.f14904do.getLocationOnScreen(iArr);
        c3500pI.f14906do.put("android:slide:screenPosition", iArr);
    }

    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7866do = f7860do;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1326case);
        int m1135for = KI.m1135for(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        b(m1135for);
    }
}
