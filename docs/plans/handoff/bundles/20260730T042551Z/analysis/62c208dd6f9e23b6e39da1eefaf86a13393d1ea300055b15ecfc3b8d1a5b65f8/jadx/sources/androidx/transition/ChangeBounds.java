package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C0782bz;
import defpackage.C3500pI;
import defpackage.C3856vL;
import defpackage.HF;
import defpackage.KI;
import defpackage.ZK;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {

    /* renamed from: for, reason: not valid java name */
    public boolean f7783for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f7782do = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7776do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7778do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f7777do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f7779do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f7780do = new Ctry();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0782bz f7781do = new C0782bz();

    /* renamed from: androidx.transition.ChangeBounds$case, reason: invalid class name */
    public class Ccase extends AnimatorListenerAdapter {
        private final Cthis mViewBounds;

        public Ccase(Cthis cthis) {
            this.mViewBounds = cthis;
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$do, reason: invalid class name */
    public class Cdo extends Property<Cthis, PointF> {
        public Cdo() {
            super(PointF.class, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(Cthis cthis) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Cthis cthis, PointF pointF) {
            Cthis cthis2 = cthis;
            PointF pointF2 = pointF;
            cthis2.getClass();
            cthis2.f7801do = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            cthis2.f7804if = round;
            int i = cthis2.f7806try + 1;
            cthis2.f7806try = i;
            if (i == cthis2.f7800case) {
                C3856vL.m8469do(cthis2.f7802do, cthis2.f7801do, round, cthis2.f7803for, cthis2.f7805new);
                cthis2.f7806try = 0;
                cthis2.f7800case = 0;
            }
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$else, reason: invalid class name */
    public static class Celse extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: case, reason: not valid java name */
        public final int f7784case;

        /* renamed from: do, reason: not valid java name */
        public final int f7785do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Rect f7786do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7787do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f7788do;

        /* renamed from: else, reason: not valid java name */
        public final int f7789else;

        /* renamed from: for, reason: not valid java name */
        public final int f7790for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f7791for;

        /* renamed from: goto, reason: not valid java name */
        public final int f7792goto;

        /* renamed from: if, reason: not valid java name */
        public final int f7793if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Rect f7794if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final boolean f7795if;

        /* renamed from: new, reason: not valid java name */
        public final int f7796new;

        /* renamed from: try, reason: not valid java name */
        public final int f7797try;

        public Celse(View view, Rect rect, boolean z, Rect rect2, boolean z2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f7787do = view;
            this.f7786do = rect;
            this.f7788do = z;
            this.f7794if = rect2;
            this.f7795if = z2;
            this.f7785do = i;
            this.f7793if = i2;
            this.f7790for = i3;
            this.f7796new = i4;
            this.f7797try = i5;
            this.f7784case = i6;
            this.f7789else = i7;
            this.f7792goto = i8;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case, reason: not valid java name */
        public final void mo4604case(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do, reason: not valid java name */
        public final void mo4605do(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else, reason: not valid java name */
        public final void mo4606else(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for, reason: not valid java name */
        public final void mo4607for(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if, reason: not valid java name */
        public final void mo4608if() {
            View view = this.f7787do;
            Rect rect = (Rect) view.getTag(R.id.transition_clip);
            view.setTag(R.id.transition_clip, null);
            view.setClipBounds(rect);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new, reason: not valid java name */
        public final void mo4609new(Transition transition) {
            this.f7791for = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try, reason: not valid java name */
        public final void mo4610try() {
            View view = this.f7787do;
            view.setTag(R.id.transition_clip, view.getClipBounds());
            view.setClipBounds(this.f7795if ? null : this.f7794if);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (this.f7791for) {
                return;
            }
            Rect rect = null;
            if (z) {
                if (!this.f7788do) {
                    rect = this.f7786do;
                }
            } else if (!this.f7795if) {
                rect = this.f7794if;
            }
            View view = this.f7787do;
            view.setClipBounds(rect);
            if (z) {
                C3856vL.m8469do(view, this.f7785do, this.f7793if, this.f7790for, this.f7796new);
            } else {
                C3856vL.m8469do(view, this.f7797try, this.f7784case, this.f7789else, this.f7792goto);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            int i = this.f7790for;
            int i2 = this.f7785do;
            int i3 = this.f7789else;
            int i4 = this.f7797try;
            int max = Math.max(i - i2, i3 - i4);
            int i5 = this.f7796new;
            int i6 = this.f7793if;
            int i7 = this.f7792goto;
            int i8 = this.f7784case;
            int max2 = Math.max(i5 - i6, i7 - i8);
            if (z) {
                i2 = i4;
            }
            if (z) {
                i6 = i8;
            }
            View view = this.f7787do;
            C3856vL.m8469do(view, i2, i6, max + i2, max2 + i6);
            view.setClipBounds(z ? this.f7794if : this.f7786do);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$for, reason: invalid class name */
    public class Cfor extends Property<View, PointF> {
        public Cfor() {
            super(PointF.class, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C3856vL.m8469do(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$goto, reason: invalid class name */
    public static class Cgoto extends androidx.transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final ViewGroup f7798do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7799do = false;

        public Cgoto(ViewGroup viewGroup) {
            this.f7798do = viewGroup;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            if (!this.f7799do) {
                ZK.m2988do(this.f7798do, false);
            }
            transition.mo4630default(this);
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            ZK.m2988do(this.f7798do, true);
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
            ZK.m2988do(this.f7798do, false);
            this.f7799do = true;
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            ZK.m2988do(this.f7798do, false);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$if, reason: invalid class name */
    public class Cif extends Property<Cthis, PointF> {
        public Cif() {
            super(PointF.class, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(Cthis cthis) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Cthis cthis, PointF pointF) {
            Cthis cthis2 = cthis;
            PointF pointF2 = pointF;
            cthis2.getClass();
            cthis2.f7803for = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            cthis2.f7805new = round;
            int i = cthis2.f7800case + 1;
            cthis2.f7800case = i;
            if (cthis2.f7806try == i) {
                C3856vL.m8469do(cthis2.f7802do, cthis2.f7801do, cthis2.f7804if, cthis2.f7803for, round);
                cthis2.f7806try = 0;
                cthis2.f7800case = 0;
            }
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$new, reason: invalid class name */
    public class Cnew extends Property<View, PointF> {
        public Cnew() {
            super(PointF.class, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C3856vL.m8469do(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$this, reason: invalid class name */
    public static class Cthis {

        /* renamed from: case, reason: not valid java name */
        public int f7800case;

        /* renamed from: do, reason: not valid java name */
        public int f7801do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7802do;

        /* renamed from: for, reason: not valid java name */
        public int f7803for;

        /* renamed from: if, reason: not valid java name */
        public int f7804if;

        /* renamed from: new, reason: not valid java name */
        public int f7805new;

        /* renamed from: try, reason: not valid java name */
        public int f7806try;

        public Cthis(View view) {
            this.f7802do = view;
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$try, reason: invalid class name */
    public class Ctry extends Property<View, PointF> {
        public Ctry() {
            super(PointF.class, "position");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            C3856vL.m8469do(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    public ChangeBounds() {
        this.f7783for = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x01ce  */
    @Override // androidx.transition.Transition
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo2719class(android.view.ViewGroup r22, defpackage.C3500pI r23, defpackage.C3500pI r24) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.mo2719class(android.view.ViewGroup, pI, pI):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        Rect rect;
        m4602implements(c3500pI);
        if (!this.f7783for || (rect = (Rect) c3500pI.f14904do.getTag(R.id.transition_clip)) == null) {
            return;
        }
        c3500pI.f14906do.put("android:changeBounds:clip", rect);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4602implements(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap hashMap = c3500pI.f14906do;
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", view.getParent());
        if (this.f7783for) {
            hashMap.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: import, reason: not valid java name */
    public final String[] mo4603import() {
        return f7782do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4602implements(c3500pI);
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7783for = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1331if);
        boolean z = KI.m1138try((XmlResourceParser) attributeSet, "resizeClip") ? obtainStyledAttributes.getBoolean(0, false) : false;
        obtainStyledAttributes.recycle();
        this.f7783for = z;
    }
}
