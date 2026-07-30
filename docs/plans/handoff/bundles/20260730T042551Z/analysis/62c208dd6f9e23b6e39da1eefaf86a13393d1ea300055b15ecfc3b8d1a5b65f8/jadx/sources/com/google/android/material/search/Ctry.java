package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.search.Ctry;
import defpackage.C0166Dh;
import defpackage.C0332Kt;
import defpackage.C0426Pe;
import defpackage.C0472Rg;
import defpackage.C0593Wr;
import defpackage.C0602Xe;
import defpackage.C0624Ye;
import defpackage.C0723az;
import defpackage.C2676eA;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.C3459oe;
import defpackage.C3738tL;
import defpackage.C4051yh;
import defpackage.C4110zh;
import defpackage.Cpackage;
import defpackage.HH;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: com.google.android.material.search.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    public final C0593Wr f11320do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AnimatorSet f11321do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f11322do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EditText f11323do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f11324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageButton f11325do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f11326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Toolbar f11327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MaterialToolbar f11328do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClippableRoundedCornerLayout f11329do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TouchObserverFrameLayout f11330do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SearchBar f11331do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SearchView f11332do;

    /* renamed from: if, reason: not valid java name */
    public final View f11333if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final FrameLayout f11334if;

    /* renamed from: com.google.android.material.search.try$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ boolean f11336do;

        public Cdo(boolean z) {
            this.f11336do = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            float f = this.f11336do ? 1.0f : 0.0f;
            Ctry ctry = Ctry.this;
            Ctry.m5867do(ctry, f);
            ClippableRoundedCornerLayout clippableRoundedCornerLayout = ctry.f11329do;
            clippableRoundedCornerLayout.f11170do = null;
            clippableRoundedCornerLayout.f11169do = 0.0f;
            clippableRoundedCornerLayout.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            Ctry.m5867do(Ctry.this, this.f11336do ? 0.0f : 1.0f);
        }
    }

    public Ctry(SearchView searchView) {
        this.f11332do = searchView;
        this.f11322do = searchView.f11284do;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f11291do;
        this.f11329do = clippableRoundedCornerLayout;
        this.f11324do = searchView.f11286do;
        this.f11334if = searchView.f11303if;
        this.f11328do = searchView.f11290do;
        this.f11327do = searchView.f11289do;
        this.f11326do = searchView.f11288do;
        this.f11323do = searchView.f11285do;
        this.f11325do = searchView.f11287do;
        this.f11333if = searchView.f11306new;
        this.f11330do = searchView.f11292do;
        this.f11320do = new C0593Wr(clippableRoundedCornerLayout);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5867do(Ctry ctry, float f) {
        ActionMenuView m826do;
        ctry.f11325do.setAlpha(f);
        ctry.f11333if.setAlpha(f);
        ctry.f11330do.setAlpha(f);
        if (!ctry.f11332do.f11307new || (m826do = HH.m826do(ctry.f11328do)) == null) {
            return;
        }
        m826do.setAlpha(f);
    }

    /* renamed from: break, reason: not valid java name */
    public final AnimatorSet m5868break() {
        SearchBar searchBar = this.f11331do;
        SearchView searchView = this.f11332do;
        if (searchBar != null) {
            if (searchView.m5861goto()) {
                searchView.m5855case();
            }
            AnimatorSet m5875new = m5875new(false);
            m5875new.addListener(new Cif(this));
            m5875new.start();
            return m5875new;
        }
        if (searchView.m5861goto()) {
            searchView.m5855case();
        }
        AnimatorSet m5873goto = m5873goto(false);
        m5873goto.addListener(new Cnew(this));
        m5873goto.start();
        return m5873goto;
    }

    /* renamed from: case, reason: not valid java name */
    public final int m5869case(View view) {
        int marginStart = ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).getMarginStart();
        SearchBar searchBar = this.f11331do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int paddingStart = searchBar.getPaddingStart();
        return C3738tL.m8282else(this.f11331do) ? ((this.f11331do.getWidth() - this.f11331do.getRight()) + marginStart) - paddingStart : (this.f11331do.getLeft() - marginStart) + paddingStart;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5870catch(SearchBar searchBar) {
        this.f11331do = searchBar;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m5871else() {
        FrameLayout frameLayout = this.f11334if;
        return ((this.f11331do.getBottom() + this.f11331do.getTop()) / 2) - ((frameLayout.getBottom() + frameLayout.getTop()) / 2);
    }

    /* renamed from: for, reason: not valid java name */
    public final AnimatorSet m5872for(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        MaterialToolbar materialToolbar = this.f11328do;
        ImageButton m828if = HH.m828if(materialToolbar);
        int i = 8;
        if (m828if != null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(m5869case(m828if), 0.0f);
            ofFloat.addUpdateListener(new C0332Kt(new C0472Rg(i), m828if));
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(m5871else(), 0.0f);
            ofFloat2.addUpdateListener(C0332Kt.m1219do(m828if));
            animatorSet.playTogether(ofFloat, ofFloat2);
        }
        ActionMenuView m826do = HH.m826do(materialToolbar);
        if (m826do != null) {
            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(m5877try(m826do), 0.0f);
            ofFloat3.addUpdateListener(new C0332Kt(new C0472Rg(i), m826do));
            ValueAnimator ofFloat4 = ValueAnimator.ofFloat(m5871else(), 0.0f);
            ofFloat4.addUpdateListener(C0332Kt.m1219do(m826do));
            animatorSet.playTogether(ofFloat3, ofFloat4);
        }
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(C2676eA.m6516do(z, C2785g1.f13026do));
        return animatorSet;
    }

    /* renamed from: goto, reason: not valid java name */
    public final AnimatorSet m5873goto(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f11329do;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getHeight(), 0.0f);
        ofFloat.addUpdateListener(C0332Kt.m1219do(clippableRoundedCornerLayout));
        animatorSet.playTogether(ofFloat);
        m5874if(animatorSet);
        animatorSet.setInterpolator(C2676eA.m6516do(z, C2785g1.f13026do));
        animatorSet.setDuration(z ? 350L : 300L);
        return animatorSet;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5874if(AnimatorSet animatorSet) {
        ImageButton m828if = HH.m828if(this.f11328do);
        if (m828if == null) {
            return;
        }
        Drawable m1777else = C0426Pe.m1777else(m828if.getDrawable());
        if (!this.f11332do.f11301for) {
            if (m1777else instanceof C0602Xe) {
                C0602Xe c0602Xe = (C0602Xe) m1777else;
                if (c0602Xe.f4540try != 1.0f) {
                    c0602Xe.f4540try = 1.0f;
                    c0602Xe.invalidateSelf();
                }
            }
            if (m1777else instanceof C4051yh) {
                ((C4051yh) m1777else).m8764do(1.0f);
                return;
            }
            return;
        }
        if (m1777else instanceof C0602Xe) {
            final C0602Xe c0602Xe2 = (C0602Xe) m1777else;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: TB
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    C0602Xe c0602Xe3 = C0602Xe.this;
                    if (c0602Xe3.f4540try != floatValue) {
                        c0602Xe3.f4540try = floatValue;
                        c0602Xe3.invalidateSelf();
                    }
                }
            });
            animatorSet.playTogether(ofFloat);
        }
        if (m1777else instanceof C4051yh) {
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat2.addUpdateListener(new C0624Ye((C4051yh) m1777else, 1));
            animatorSet.playTogether(ofFloat2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final AnimatorSet m5875new(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (!(this.f11321do != null)) {
            Animator[] animatorArr = new Animator[2];
            AnimatorSet animatorSet2 = new AnimatorSet();
            m5874if(animatorSet2);
            animatorSet2.setDuration(z ? 300L : 250L);
            animatorSet2.setInterpolator(C2676eA.m6516do(z, C2785g1.f13026do));
            animatorArr[0] = animatorSet2;
            animatorArr[1] = m5872for(z);
            animatorSet.playTogether(animatorArr);
        }
        Animator[] animatorArr2 = new Animator[9];
        Interpolator interpolator = z ? C2785g1.f13028do : C2785g1.f13026do;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(z ? 300L : 250L);
        ofFloat.setInterpolator(C2676eA.m6516do(z, interpolator));
        int i = 3;
        ofFloat.addUpdateListener(new C0332Kt(new Cpackage(i), this.f11322do));
        animatorArr2[0] = ofFloat;
        C0593Wr c0593Wr = this.f11320do;
        Rect rect = c0593Wr.f4406do;
        Rect rect2 = c0593Wr.f4410if;
        SearchView searchView = this.f11332do;
        if (rect == null) {
            rect = new Rect(searchView.getLeft(), searchView.getTop() + 0, searchView.getRight(), searchView.getBottom() + 0);
        }
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f11329do;
        if (rect2 == null) {
            rect2 = C3738tL.m8281do(clippableRoundedCornerLayout, this.f11331do);
        }
        final Rect rect3 = new Rect(rect2);
        final float m4765catch = this.f11331do.f11269do.m4765catch();
        final float max = Math.max(clippableRoundedCornerLayout.f11169do, c0593Wr.m2777if());
        ValueAnimator ofObject = ValueAnimator.ofObject(new C0723az(rect3), rect2, rect);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: UB
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Ctry ctry = Ctry.this;
                ctry.getClass();
                float animatedFraction = valueAnimator.getAnimatedFraction();
                LinearInterpolator linearInterpolator = C2785g1.f13028do;
                float f = max;
                float f2 = m4765catch;
                float m7823for = Cpublic.m7823for(f, f2, animatedFraction, f2);
                ClippableRoundedCornerLayout clippableRoundedCornerLayout2 = ctry.f11329do;
                clippableRoundedCornerLayout2.getClass();
                Rect rect4 = rect3;
                clippableRoundedCornerLayout2.m5840do(rect4.left, rect4.top, rect4.right, rect4.bottom, m7823for);
            }
        });
        ofObject.setDuration(z ? 300L : 250L);
        C0166Dh c0166Dh = C2785g1.f13026do;
        ofObject.setInterpolator(C2676eA.m6516do(z, c0166Dh));
        animatorArr2[1] = ofObject;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setDuration(z ? 50L : 42L);
        ofFloat2.setStartDelay(z ? 250L : 0L);
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        ofFloat2.setInterpolator(C2676eA.m6516do(z, linearInterpolator));
        ofFloat2.addUpdateListener(new C0332Kt(new Cpackage(i), this.f11325do));
        animatorArr2[2] = ofFloat2;
        AnimatorSet animatorSet3 = new AnimatorSet();
        Animator[] animatorArr3 = new Animator[3];
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat3.setDuration(z ? 150L : 83L);
        ofFloat3.setStartDelay(z ? 75L : 0L);
        ofFloat3.setInterpolator(C2676eA.m6516do(z, linearInterpolator));
        View view = this.f11333if;
        TouchObserverFrameLayout touchObserverFrameLayout = this.f11330do;
        ofFloat3.addUpdateListener(new C0332Kt(new Cpackage(i), view, touchObserverFrameLayout));
        animatorArr3[0] = ofFloat3;
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat((touchObserverFrameLayout.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        ofFloat4.setDuration(z ? 300L : 250L);
        ofFloat4.setInterpolator(C2676eA.m6516do(z, c0166Dh));
        ofFloat4.addUpdateListener(C0332Kt.m1219do(view));
        animatorArr3[1] = ofFloat4;
        ValueAnimator ofFloat5 = ValueAnimator.ofFloat(0.95f, 1.0f);
        ofFloat5.setDuration(z ? 300L : 250L);
        ofFloat5.setInterpolator(C2676eA.m6516do(z, c0166Dh));
        ofFloat5.addUpdateListener(new C0332Kt(new C3459oe(5), touchObserverFrameLayout));
        animatorArr3[2] = ofFloat5;
        animatorSet3.playTogether(animatorArr3);
        animatorArr2[3] = animatorSet3;
        animatorArr2[4] = m5876this(this.f11324do, z, false);
        Toolbar toolbar = this.f11327do;
        animatorArr2[5] = m5876this(toolbar, z, false);
        ValueAnimator ofFloat6 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat6.setDuration(z ? 300L : 250L);
        ofFloat6.setInterpolator(C2676eA.m6516do(z, c0166Dh));
        if (searchView.f11307new) {
            ofFloat6.addUpdateListener(new C4110zh(HH.m826do(toolbar), HH.m826do(this.f11328do)));
        }
        animatorArr2[6] = ofFloat6;
        animatorArr2[7] = m5876this(this.f11323do, z, true);
        animatorArr2[8] = m5876this(this.f11326do, z, true);
        animatorSet.playTogether(animatorArr2);
        animatorSet.addListener(new Cdo(z));
        return animatorSet;
    }

    /* renamed from: this, reason: not valid java name */
    public final AnimatorSet m5876this(View view, boolean z, boolean z2) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(z2 ? m5869case(view) : m5877try(view), 0.0f);
        ofFloat.addUpdateListener(new C0332Kt(new C0472Rg(8), view));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(m5871else(), 0.0f);
        ofFloat2.addUpdateListener(C0332Kt.m1219do(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(C2676eA.m6516do(z, C2785g1.f13026do));
        return animatorSet;
    }

    /* renamed from: try, reason: not valid java name */
    public final int m5877try(View view) {
        int marginEnd = ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).getMarginEnd();
        return C3738tL.m8282else(this.f11331do) ? this.f11331do.getLeft() - marginEnd : (this.f11331do.getRight() - this.f11332do.getWidth()) + marginEnd;
    }
}
