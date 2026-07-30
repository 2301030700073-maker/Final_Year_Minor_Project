package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C3500pI;
import defpackage.C3856vL;
import defpackage.HF;
import defpackage.KI;
import defpackage.ZK;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class Visibility extends Transition {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f7913do = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: new, reason: not valid java name */
    public int f7914new;

    /* renamed from: androidx.transition.Visibility$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f7921do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ViewGroup f7922do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7923do;

        /* renamed from: if, reason: not valid java name */
        public int f7924if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ViewGroup f7925if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7926if;
    }

    /* renamed from: androidx.transition.Visibility$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final View f7927do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ViewGroup f7928do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7930do = true;

        /* renamed from: if, reason: not valid java name */
        public final View f7931if;

        public Cif(ViewGroup viewGroup, View view, View view2) {
            this.f7928do = viewGroup;
            this.f7927do = view;
            this.f7931if = view2;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case */
        public final void mo4604case(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            transition.mo4630default(this);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for */
        public final void mo4607for(Transition transition) {
            transition.mo4630default(this);
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m4660goto() {
            this.f7931if.setTag(R.id.save_overlay_view, null);
            this.f7928do.getOverlay().remove(this.f7927do);
            this.f7930do = false;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
            if (this.f7930do) {
                m4660goto();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            m4660goto();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f7928do.getOverlay().remove(this.f7927do);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            View view = this.f7927do;
            if (view.getParent() == null) {
                this.f7928do.getOverlay().add(view);
            } else {
                Visibility.this.mo4639new();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                View view = this.f7931if;
                View view2 = this.f7927do;
                view.setTag(R.id.save_overlay_view, view2);
                this.f7928do.getOverlay().add(view2);
                this.f7930do = true;
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            m4660goto();
        }
    }

    public Visibility() {
        this.f7914new = 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /* renamed from: instanceof, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.transition.Visibility.Cfor m4657instanceof(defpackage.C3500pI r8, defpackage.C3500pI r9) {
        /*
            androidx.transition.Visibility$for r0 = new androidx.transition.Visibility$for
            r0.<init>()
            r1 = 0
            r0.f7923do = r1
            r0.f7926if = r1
            java.lang.String r2 = "android:visibility:parent"
            r3 = 0
            r4 = -1
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.f14906do
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f7921do = r7
            java.lang.Object r6 = r6.get(r2)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f7922do = r6
            goto L33
        L2f:
            r0.f7921do = r4
            r0.f7922do = r3
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.f14906do
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r3 = r6.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0.f7924if = r3
            java.lang.Object r2 = r6.get(r2)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f7925if = r2
            goto L56
        L52:
            r0.f7924if = r4
            r0.f7925if = r3
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.f7921do
            int r9 = r0.f7924if
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.f7922do
            android.view.ViewGroup r4 = r0.f7925if
            if (r3 != r4) goto L68
            return r0
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.f7926if = r1
            r0.f7923do = r2
            goto L9f
        L71:
            if (r9 != 0) goto L9f
            r0.f7926if = r2
            r0.f7923do = r2
            goto L9f
        L78:
            android.view.ViewGroup r8 = r0.f7925if
            if (r8 != 0) goto L81
            r0.f7926if = r1
            r0.f7923do = r2
            goto L9f
        L81:
            android.view.ViewGroup r8 = r0.f7922do
            if (r8 != 0) goto L9f
            r0.f7926if = r2
            r0.f7923do = r2
            goto L9f
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.f7924if
            if (r8 != 0) goto L95
            r0.f7926if = r2
            r0.f7923do = r2
            goto L9f
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.f7921do
            if (r8 != 0) goto L9f
            r0.f7926if = r1
            r0.f7923do = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.m4657instanceof(pI, pI):androidx.transition.Visibility$for");
    }

    public Animator a(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
    
        if (m4657instanceof(m4646super(r5, false), m4638native(r5, false)).f7923do != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01bc  */
    @Override // androidx.transition.Transition
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo2719class(android.view.ViewGroup r20, defpackage.C3500pI r21, defpackage.C3500pI r22) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo2719class(android.view.ViewGroup, pI, pI):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public void mo2720goto(C3500pI c3500pI) {
        m4658implements(c3500pI);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4658implements(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        int visibility = view.getVisibility();
        HashMap hashMap = c3500pI.f14906do;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    @Override // androidx.transition.Transition
    /* renamed from: import */
    public final String[] mo4603import() {
        return f7913do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: public */
    public final boolean mo4643public(C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI == null && c3500pI2 == null) {
            return false;
        }
        if (c3500pI != null && c3500pI2 != null && c3500pI2.f14906do.containsKey("android:visibility:visibility") != c3500pI.f14906do.containsKey("android:visibility:visibility")) {
            return false;
        }
        Cfor m4657instanceof = m4657instanceof(c3500pI, c3500pI2);
        if (m4657instanceof.f7923do) {
            return m4657instanceof.f7921do == 0 || m4657instanceof.f7924if == 0;
        }
        return false;
    }

    /* renamed from: synchronized */
    public Animator mo4617synchronized(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        return null;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public void mo2721try(C3500pI c3500pI) {
        m4658implements(c3500pI);
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7914new = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1329for);
        int m1135for = KI.m1135for(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (m1135for != 0) {
            if ((m1135for & (-4)) == 0) {
                this.f7914new = m1135for;
                return;
            }
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
    }

    /* renamed from: androidx.transition.Visibility$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final int f7915do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7916do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ViewGroup f7917do;

        /* renamed from: if, reason: not valid java name */
        public boolean f7920if;

        /* renamed from: for, reason: not valid java name */
        public boolean f7919for = false;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f7918do = true;

        public Cdo(View view, int i) {
            this.f7916do = view;
            this.f7915do = i;
            this.f7917do = (ViewGroup) view.getParent();
            m4659goto(true);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case */
        public final void mo4604case(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            transition.mo4630default(this);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for */
        public final void mo4607for(Transition transition) {
            transition.mo4630default(this);
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m4659goto(boolean z) {
            ViewGroup viewGroup;
            if (!this.f7918do || this.f7920if == z || (viewGroup = this.f7917do) == null) {
                return;
            }
            this.f7920if = z;
            ZK.m2988do(viewGroup, z);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            m4659goto(true);
            if (this.f7919for) {
                return;
            }
            C3856vL.m8470for(this.f7916do, 0);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f7919for = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.f7919for) {
                C3856vL.m8470for(this.f7916do, this.f7915do);
                ViewGroup viewGroup = this.f7917do;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m4659goto(false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                C3856vL.m8470for(this.f7916do, 0);
                ViewGroup viewGroup = this.f7917do;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            m4659goto(false);
            if (this.f7919for) {
                return;
            }
            C3856vL.m8470for(this.f7916do, this.f7915do);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            if (!this.f7919for) {
                C3856vL.m8470for(this.f7916do, this.f7915do);
                ViewGroup viewGroup = this.f7917do;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m4659goto(false);
        }
    }
}
