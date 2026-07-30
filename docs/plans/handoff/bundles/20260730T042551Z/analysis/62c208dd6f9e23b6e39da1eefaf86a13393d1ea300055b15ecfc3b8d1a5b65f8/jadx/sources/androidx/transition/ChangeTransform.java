package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.joeykrim.rootcheck.R;
import defpackage.C0769bl;
import defpackage.C0828cl;
import defpackage.C2651dl;
import defpackage.C3385nL;
import defpackage.C3500pI;
import defpackage.C3856vL;
import defpackage.HF;
import defpackage.InterfaceC0709al;
import defpackage.KI;
import defpackage.QK;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ChangeTransform extends Transition {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Matrix f7825do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f7826for;

    /* renamed from: new, reason: not valid java name */
    public final boolean f7827new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f7823do = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7821do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7822do = new Cif();

    /* renamed from: try, reason: not valid java name */
    public static final boolean f7824try = true;

    /* renamed from: androidx.transition.ChangeTransform$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: case, reason: not valid java name */
        public final float f7828case;

        /* renamed from: do, reason: not valid java name */
        public final float f7829do;

        /* renamed from: else, reason: not valid java name */
        public final float f7830else;

        /* renamed from: for, reason: not valid java name */
        public final float f7831for;

        /* renamed from: goto, reason: not valid java name */
        public final float f7832goto;

        /* renamed from: if, reason: not valid java name */
        public final float f7833if;

        /* renamed from: new, reason: not valid java name */
        public final float f7834new;

        /* renamed from: try, reason: not valid java name */
        public final float f7835try;

        public Ccase(View view) {
            this.f7829do = view.getTranslationX();
            this.f7833if = view.getTranslationY();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            this.f7831for = QK.Cnew.m1921class(view);
            this.f7834new = view.getScaleX();
            this.f7835try = view.getScaleY();
            this.f7828case = view.getRotationX();
            this.f7830else = view.getRotationY();
            this.f7832goto = view.getRotation();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Ccase)) {
                return false;
            }
            Ccase ccase = (Ccase) obj;
            return ccase.f7829do == this.f7829do && ccase.f7833if == this.f7833if && ccase.f7831for == this.f7831for && ccase.f7834new == this.f7834new && ccase.f7835try == this.f7835try && ccase.f7828case == this.f7828case && ccase.f7830else == this.f7830else && ccase.f7832goto == this.f7832goto;
        }

        public final int hashCode() {
            float f = this.f7829do;
            int floatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
            float f2 = this.f7833if;
            int floatToIntBits2 = (floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f7831for;
            int floatToIntBits3 = (floatToIntBits2 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
            float f4 = this.f7834new;
            int floatToIntBits4 = (floatToIntBits3 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
            float f5 = this.f7835try;
            int floatToIntBits5 = (floatToIntBits4 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
            float f6 = this.f7828case;
            int floatToIntBits6 = (floatToIntBits5 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
            float f7 = this.f7830else;
            int floatToIntBits7 = (floatToIntBits6 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
            float f8 = this.f7832goto;
            return floatToIntBits7 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$do, reason: invalid class name */
    public class Cdo extends Property<Ctry, float[]> {
        public Cdo() {
            super(float[].class, "nonTranslations");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ float[] get(Ctry ctry) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Ctry ctry, float[] fArr) {
            Ctry ctry2 = ctry;
            float[] fArr2 = fArr;
            ctry2.getClass();
            System.arraycopy(fArr2, 0, ctry2.f7849do, 0, fArr2.length);
            ctry2.m4615do();
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$for, reason: invalid class name */
    public static class Cfor extends androidx.transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0709al f7836do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7837do;

        public Cfor(View view, InterfaceC0709al interfaceC0709al) {
            this.f7837do = view;
            this.f7836do = interfaceC0709al;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            transition.mo4630default(this);
            int i = Build.VERSION.SDK_INT;
            View view = this.f7837do;
            if (i == 28) {
                if (!C0828cl.f8604for) {
                    try {
                        if (!C0828cl.f8603do) {
                            try {
                                C0828cl.f8601do = Class.forName("android.view.GhostView");
                            } catch (ClassNotFoundException unused) {
                            }
                            C0828cl.f8603do = true;
                        }
                        Method declaredMethod = C0828cl.f8601do.getDeclaredMethod("removeGhost", View.class);
                        C0828cl.f8605if = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException unused2) {
                    }
                    C0828cl.f8604for = true;
                }
                Method method = C0828cl.f8605if;
                if (method != null) {
                    try {
                        method.invoke(null, view);
                    } catch (IllegalAccessException unused3) {
                    } catch (InvocationTargetException e) {
                        throw new RuntimeException(e.getCause());
                    }
                }
            } else {
                int i2 = C2651dl.f12534new;
                C2651dl c2651dl = (C2651dl) view.getTag(R.id.ghost_view);
                if (c2651dl != null) {
                    int i3 = c2651dl.f12539for - 1;
                    c2651dl.f12539for = i3;
                    if (i3 <= 0) {
                        ((C0769bl) c2651dl.getParent()).removeView(c2651dl);
                    }
                }
            }
            view.setTag(R.id.transition_transform, null);
            view.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            this.f7836do.setVisibility(0);
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            this.f7836do.setVisibility(4);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$if, reason: invalid class name */
    public class Cif extends Property<Ctry, PointF> {
        public Cif() {
            super(PointF.class, "translations");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(Ctry ctry) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Ctry ctry, PointF pointF) {
            Ctry ctry2 = ctry;
            PointF pointF2 = pointF;
            ctry2.getClass();
            ctry2.f7846do = pointF2.x;
            ctry2.f7850if = pointF2.y;
            ctry2.m4615do();
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$new, reason: invalid class name */
    public static class Cnew extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final Matrix f7838do = new Matrix();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7839do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ccase f7840do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ctry f7841do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7842do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f7843for;

        /* renamed from: if, reason: not valid java name */
        public final Matrix f7844if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final boolean f7845if;

        public Cnew(View view, Ccase ccase, Ctry ctry, Matrix matrix, boolean z, boolean z2) {
            this.f7845if = z;
            this.f7843for = z2;
            this.f7839do = view;
            this.f7840do = ccase;
            this.f7841do = ctry;
            this.f7844if = matrix;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f7842do = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            boolean z = this.f7842do;
            Ccase ccase = this.f7840do;
            View view = this.f7839do;
            if (!z) {
                if (this.f7845if && this.f7843for) {
                    Matrix matrix = this.f7838do;
                    matrix.set(this.f7844if);
                    view.setTag(R.id.transition_transform, matrix);
                    ccase.getClass();
                    String[] strArr = ChangeTransform.f7823do;
                    view.setTranslationX(ccase.f7829do);
                    view.setTranslationY(ccase.f7833if);
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    QK.Cnew.m1938switch(view, ccase.f7831for);
                    view.setScaleX(ccase.f7834new);
                    view.setScaleY(ccase.f7835try);
                    view.setRotationX(ccase.f7828case);
                    view.setRotationY(ccase.f7830else);
                    view.setRotation(ccase.f7832goto);
                } else {
                    view.setTag(R.id.transition_transform, null);
                    view.setTag(R.id.parent_matrix, null);
                }
            }
            C3856vL.f16071do.mo181try(view, null);
            ccase.getClass();
            String[] strArr2 = ChangeTransform.f7823do;
            view.setTranslationX(ccase.f7829do);
            view.setTranslationY(ccase.f7833if);
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            QK.Cnew.m1938switch(view, ccase.f7831for);
            view.setScaleX(ccase.f7834new);
            view.setScaleY(ccase.f7835try);
            view.setRotationX(ccase.f7828case);
            view.setRotationY(ccase.f7830else);
            view.setRotation(ccase.f7832goto);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            Matrix matrix = this.f7841do.f7847do;
            Matrix matrix2 = this.f7838do;
            matrix2.set(matrix);
            View view = this.f7839do;
            view.setTag(R.id.transition_transform, matrix2);
            Ccase ccase = this.f7840do;
            ccase.getClass();
            String[] strArr = ChangeTransform.f7823do;
            view.setTranslationX(ccase.f7829do);
            view.setTranslationY(ccase.f7833if);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1938switch(view, ccase.f7831for);
            view.setScaleX(ccase.f7834new);
            view.setScaleY(ccase.f7835try);
            view.setRotationX(ccase.f7828case);
            view.setRotationY(ccase.f7830else);
            view.setRotation(ccase.f7832goto);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            String[] strArr = ChangeTransform.f7823do;
            View view = this.f7839do;
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1938switch(view, 0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotationX(0.0f);
            view.setRotationY(0.0f);
            view.setRotation(0.0f);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public float f7846do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Matrix f7847do = new Matrix();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7848do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float[] f7849do;

        /* renamed from: if, reason: not valid java name */
        public float f7850if;

        public Ctry(float[] fArr, View view) {
            this.f7848do = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f7849do = fArr2;
            this.f7846do = fArr2[2];
            this.f7850if = fArr2[5];
            m4615do();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4615do() {
            float f = this.f7846do;
            float[] fArr = this.f7849do;
            fArr[2] = f;
            fArr[5] = this.f7850if;
            Matrix matrix = this.f7847do;
            matrix.setValues(fArr);
            C3856vL.f16071do.mo181try(this.f7848do, matrix);
        }
    }

    public ChangeTransform() {
        this.f7826for = true;
        this.f7827new = true;
        this.f7825do = new Matrix();
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x02e2, code lost:
    
        if (defpackage.C0769bl.Cdo.m4858do(r15) > defpackage.C0769bl.Cdo.m4858do(r0)) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x039e, code lost:
    
        if (r8.size() == r1) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
    /* JADX WARN: Type inference failed for: r11v29, types: [cl] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    @Override // androidx.transition.Transition
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo2719class(android.view.ViewGroup r26, defpackage.C3500pI r27, defpackage.C3500pI r28) {
        /*
            Method dump skipped, instructions count: 1097
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.mo2719class(android.view.ViewGroup, pI, pI):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4614implements(c3500pI);
        if (f7824try) {
            return;
        }
        View view = c3500pI.f14904do;
        ((ViewGroup) view.getParent()).startViewTransition(view);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4614implements(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (view.getVisibility() == 8) {
            return;
        }
        HashMap hashMap = c3500pI.f14906do;
        hashMap.put("android:changeTransform:parent", view.getParent());
        hashMap.put("android:changeTransform:transforms", new Ccase(view));
        Matrix matrix = view.getMatrix();
        hashMap.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.f7827new) {
            Matrix matrix2 = new Matrix();
            C3856vL.f16071do.mo176case((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r2.getScrollX(), -r2.getScrollY());
            hashMap.put("android:changeTransform:parentMatrix", matrix2);
            hashMap.put("android:changeTransform:intermediateMatrix", view.getTag(R.id.transition_transform));
            hashMap.put("android:changeTransform:intermediateParentMatrix", view.getTag(R.id.parent_matrix));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: import */
    public final String[] mo4603import() {
        return f7823do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4614implements(c3500pI);
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7826for = true;
        this.f7827new = true;
        this.f7825do = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1334try);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f7826for = !KI.m1138try(xmlPullParser, "reparentWithOverlay") ? true : obtainStyledAttributes.getBoolean(1, true);
        this.f7827new = KI.m1138try(xmlPullParser, "reparent") ? obtainStyledAttributes.getBoolean(0, true) : true;
        obtainStyledAttributes.recycle();
    }
}
