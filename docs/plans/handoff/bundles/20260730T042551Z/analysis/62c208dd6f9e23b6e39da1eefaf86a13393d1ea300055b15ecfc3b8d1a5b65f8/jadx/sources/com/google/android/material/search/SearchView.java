package com.google.android.material.search;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.search.SearchView;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0176Dr;
import defpackage.B4;
import defpackage.C0098Af;
import defpackage.C0242Gr;
import defpackage.C0426Pe;
import defpackage.C0593Wr;
import defpackage.C0602Xe;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2598cr;
import defpackage.C2676eA;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.C3738tL;
import defpackage.C4051yh;
import defpackage.Cpublic;
import defpackage.EH;
import defpackage.HH;
import defpackage.InterfaceC0136Bv;
import defpackage.InterfaceC0198Er;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.RB;
import defpackage.RunnableC0651Zj;
import defpackage.RunnableC2852h9;
import defpackage.SB;
import defpackage.SL;
import defpackage.TK;
import defpackage.ViewOnClickListenerC0505Sr;
import defpackage.ViewOnClickListenerC2823gh;
import defpackage.XG;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.Cif, InterfaceC0198Er {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ int f11281try = 0;

    /* renamed from: do, reason: not valid java name */
    public final C0098Af f11282do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0242Gr f11283do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f11284do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EditText f11285do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f11286do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageButton f11287do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f11288do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Toolbar f11289do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MaterialToolbar f11290do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClippableRoundedCornerLayout f11291do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TouchObserverFrameLayout f11292do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SearchBar f11293do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f11294do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f11295do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashMap f11296do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f11297do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f11298do;

    /* renamed from: for, reason: not valid java name */
    public int f11299for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final View f11300for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f11301for;

    /* renamed from: if, reason: not valid java name */
    public final View f11302if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final FrameLayout f11303if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f11304if;

    /* renamed from: new, reason: not valid java name */
    public final int f11305new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final View f11306new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f11307new;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f11308try;

    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: goto */
        public final boolean mo3689goto(CoordinatorLayout coordinatorLayout, SearchView searchView, View view) {
            SearchView searchView2 = searchView;
            if (!(searchView2.f11293do != null) && (view instanceof SearchBar)) {
                searchView2.m5858const((SearchBar) view);
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.search.SearchView$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void m5866do();
    }

    /* renamed from: com.google.android.material.search.SearchView$if, reason: invalid class name */
    public enum Cif {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchViewStyle);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f11298do) {
            this.f11292do.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5854break() {
        if (this.f11308try) {
            this.f11285do.postDelayed(new RunnableC0651Zj(this, 3), 100L);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5855case() {
        this.f11285do.post(new RB(this, 0));
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5856catch(Cif cif, boolean z) {
        if (this.f11294do.equals(cif)) {
            return;
        }
        if (z) {
            if (cif == Cif.SHOWN) {
                ViewGroup viewGroup = (ViewGroup) getRootView();
                this.f11296do = new HashMap(viewGroup.getChildCount());
                m5862super(viewGroup, true);
            } else if (cif == Cif.HIDDEN) {
                m5862super((ViewGroup) getRootView(), false);
                this.f11296do = null;
            }
        }
        this.f11294do = cif;
        Iterator it = new LinkedHashSet(this.f11297do).iterator();
        while (it.hasNext()) {
            ((Cdo) it.next()).m5866do();
        }
        m5864throw(cif);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5857class() {
        float dimension;
        View view;
        SearchBar searchBar = this.f11293do;
        if (searchBar != null) {
            C0716as c0716as = searchBar.f11269do;
            if (c0716as != null) {
                dimension = c0716as.f8253do.f8289try;
            } else {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                dimension = QK.Cnew.m1939this(searchBar);
            }
        } else {
            dimension = getResources().getDimension(R.dimen.m3_searchview_elevation);
        }
        C0098Af c0098Af = this.f11282do;
        if (c0098Af == null || (view = this.f11302if) == null) {
            return;
        }
        view.setBackgroundColor(c0098Af.m82do(dimension, this.f11305new));
    }

    /* renamed from: const, reason: not valid java name */
    public final void m5858const(SearchBar searchBar) {
        this.f11293do = searchBar;
        this.f11295do.m5870catch(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new ViewOnClickListenerC0505Sr(this, 1));
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new EH(this, 5));
                    this.f11285do.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        MaterialToolbar materialToolbar = this.f11290do;
        if (materialToolbar != null && !(C0426Pe.m1777else(materialToolbar.m3482const()) instanceof C0602Xe)) {
            if (this.f11293do == null) {
                materialToolbar.mo3483default(C3645ro.m7997extends(materialToolbar.getContext(), R.drawable.ic_arrow_back_black_24));
            } else {
                Drawable m1779goto = C0426Pe.m1779goto(C3645ro.m7997extends(getContext(), R.drawable.ic_arrow_back_black_24).mutate());
                Integer num = materialToolbar.f10466do;
                if (num != null) {
                    C0426Pe.Cdo.m1785else(m1779goto, num.intValue());
                }
                materialToolbar.mo3483default(new C4051yh(this.f11293do.m3482const(), m1779goto));
                m5865while();
            }
        }
        m5857class();
        m5864throw(this.f11294do);
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: do */
    public final void mo504do(B4 b4) {
        if (m5863this() || this.f11293do == null) {
            return;
        }
        Ctry ctry = this.f11295do;
        SearchBar searchBar = ctry.f11331do;
        C0593Wr c0593Wr = ctry.f11320do;
        ((AbstractC0176Dr) c0593Wr).f689do = b4;
        V v = ((AbstractC0176Dr) c0593Wr).f691do;
        c0593Wr.f4406do = new Rect(v.getLeft(), v.getTop() + 0, v.getRight(), v.getBottom() + 0);
        if (searchBar != null) {
            c0593Wr.f4410if = C3738tL.m8281do(v, searchBar);
        }
        c0593Wr.f4408for = b4.f201if;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5859else() {
        if (this.f11294do.equals(Cif.HIDDEN) || this.f11294do.equals(Cif.HIDING)) {
            return;
        }
        this.f11295do.m5868break();
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5860final() {
        if (this.f11294do.equals(Cif.SHOWN)) {
            return;
        }
        Cif cif = this.f11294do;
        Cif cif2 = Cif.SHOWING;
        if (cif.equals(cif2)) {
            return;
        }
        Ctry ctry = this.f11295do;
        SearchBar searchBar = ctry.f11331do;
        int i = 4;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = ctry.f11329do;
        SearchView searchView = ctry.f11332do;
        if (searchBar == null) {
            if (searchView.m5861goto()) {
                searchView.postDelayed(new RB(searchView, 1), 150L);
            }
            clippableRoundedCornerLayout.setVisibility(4);
            clippableRoundedCornerLayout.post(new RunnableC0651Zj(ctry, i));
            return;
        }
        if (searchView.m5861goto()) {
            searchView.m5854break();
        }
        searchView.m5856catch(cif2, true);
        Toolbar toolbar = ctry.f11327do;
        Ccase m3481class = toolbar.m3481class();
        if (m3481class != null) {
            m3481class.clear();
        }
        int i2 = ctry.f11331do.f11276super;
        if (i2 == -1 || !searchView.f11307new) {
            toolbar.setVisibility(8);
        } else {
            toolbar.mo3498super(i2);
            ActionMenuView m826do = HH.m826do(toolbar);
            if (m826do != null) {
                for (int i3 = 0; i3 < m826do.getChildCount(); i3++) {
                    View childAt = m826do.getChildAt(i3);
                    childAt.setClickable(false);
                    childAt.setFocusable(false);
                    childAt.setFocusableInTouchMode(false);
                }
            }
            toolbar.setVisibility(0);
        }
        CharSequence text = ctry.f11331do.f11268do.getText();
        EditText editText = ctry.f11323do;
        editText.setText(text);
        editText.setSelection(editText.getText().length());
        clippableRoundedCornerLayout.setVisibility(4);
        clippableRoundedCornerLayout.post(new RunnableC2852h9(ctry, 7));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Cif
    /* renamed from: for */
    public final CoordinatorLayout.Behavior<SearchView> mo3699for() {
        return new Behavior();
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m5861goto() {
        return this.f11299for == 48;
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: if */
    public final void mo505if() {
        long totalDuration;
        if (m5863this()) {
            return;
        }
        Ctry ctry = this.f11295do;
        C0593Wr c0593Wr = ctry.f11320do;
        B4 b4 = ((AbstractC0176Dr) c0593Wr).f689do;
        ((AbstractC0176Dr) c0593Wr).f689do = null;
        if (Build.VERSION.SDK_INT < 34 || this.f11293do == null || b4 == null) {
            m5859else();
            return;
        }
        totalDuration = ctry.m5868break().getTotalDuration();
        SearchBar searchBar = ctry.f11331do;
        C0593Wr c0593Wr2 = ctry.f11320do;
        AnimatorSet m2776do = c0593Wr2.m2776do(searchBar);
        m2776do.setDuration(totalDuration);
        m2776do.start();
        c0593Wr2.f4408for = 0.0f;
        c0593Wr2.f4406do = null;
        c0593Wr2.f4410if = null;
        if (ctry.f11321do != null) {
            ctry.m5872for(false).start();
            ctry.f11321do.resume();
        }
        ctry.f11321do = null;
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: new */
    public final void mo506new() {
        if (m5863this() || this.f11293do == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        Ctry ctry = this.f11295do;
        SearchBar searchBar = ctry.f11331do;
        C0593Wr c0593Wr = ctry.f11320do;
        B4 b4 = ((AbstractC0176Dr) c0593Wr).f689do;
        ((AbstractC0176Dr) c0593Wr).f689do = null;
        if (b4 != null) {
            AnimatorSet m2776do = c0593Wr.m2776do(searchBar);
            Object obj = ((AbstractC0176Dr) c0593Wr).f691do;
            if (obj instanceof ClippableRoundedCornerLayout) {
                final ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) obj;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.f11169do, c0593Wr.m2777if());
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: Ur
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        ClippableRoundedCornerLayout.this.m5840do(r0.getLeft(), r0.getTop(), r0.getRight(), r0.getBottom(), floatValue);
                    }
                });
                m2776do.playTogether(ofFloat);
            }
            m2776do.setDuration(((AbstractC0176Dr) c0593Wr).f692for);
            m2776do.start();
            c0593Wr.f4408for = 0.0f;
            c0593Wr.f4406do = null;
            c0593Wr.f4410if = null;
        }
        AnimatorSet animatorSet = ctry.f11321do;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        ctry.f11321do = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        Activity activity;
        super.onFinishInflate();
        Context context = getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                activity = null;
                break;
            } else {
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        Window window = activity != null ? activity.getWindow() : null;
        if (window != null) {
            this.f11299for = window.getAttributes().softInputMode;
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f6568do);
        this.f11285do.setText(savedState.f11309break);
        boolean z = savedState.f11310for == 0;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f11291do;
        boolean z2 = clippableRoundedCornerLayout.getVisibility() == 0;
        clippableRoundedCornerLayout.setVisibility(z ? 0 : 8);
        m5865while();
        m5856catch(z ? Cif.SHOWN : Cif.HIDDEN, z2 != z);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = this.f11285do.getText();
        savedState.f11309break = text == null ? null : text.toString();
        savedState.f11310for = this.f11291do.getVisibility();
        return savedState;
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        View view;
        super.setElevation(f);
        C0098Af c0098Af = this.f11282do;
        if (c0098Af == null || (view = this.f11302if) == null) {
            return;
        }
        view.setBackgroundColor(c0098Af.m82do(f, this.f11305new));
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: super, reason: not valid java name */
    public final void m5862super(ViewGroup viewGroup, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != this) {
                if (childAt.findViewById(this.f11291do.getId()) != null) {
                    m5862super((ViewGroup) childAt, z);
                } else if (z) {
                    this.f11296do.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    childAt.setImportantForAccessibility(4);
                } else {
                    HashMap hashMap = this.f11296do;
                    if (hashMap != null && hashMap.containsKey(childAt)) {
                        int intValue = ((Integer) this.f11296do.get(childAt)).intValue();
                        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                        childAt.setImportantForAccessibility(intValue);
                    }
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m5863this() {
        return this.f11294do.equals(Cif.HIDDEN) || this.f11294do.equals(Cif.HIDING);
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m5864throw(Cif cif) {
        C0242Gr.Cdo cdo;
        if (this.f11293do == null || !this.f11304if) {
            return;
        }
        boolean equals = cif.equals(Cif.SHOWN);
        C0242Gr c0242Gr = this.f11283do;
        if (equals) {
            c0242Gr.m765do(false);
        } else {
            if (!cif.equals(Cif.HIDDEN) || (cdo = c0242Gr.f1267do) == null) {
                return;
            }
            cdo.m767for(c0242Gr.f1268do);
        }
    }

    @Override // defpackage.InterfaceC0198Er
    /* renamed from: try */
    public final void mo507try(B4 b4) {
        if (m5863this() || this.f11293do == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        Ctry ctry = this.f11295do;
        ctry.getClass();
        float f = b4.f200for;
        if (f <= 0.0f) {
            return;
        }
        SearchBar searchBar = ctry.f11331do;
        float m4765catch = searchBar.f11269do.m4765catch();
        C0593Wr c0593Wr = ctry.f11320do;
        B4 b42 = ((AbstractC0176Dr) c0593Wr).f689do;
        ((AbstractC0176Dr) c0593Wr).f689do = b4;
        if (b42 != null) {
            if (searchBar.getVisibility() != 4) {
                searchBar.setVisibility(4);
            }
            boolean z = b4.f199do == 0;
            float interpolation = ((AbstractC0176Dr) c0593Wr).f690do.getInterpolation(f);
            V v = ((AbstractC0176Dr) c0593Wr).f691do;
            float width = v.getWidth();
            float height = v.getHeight();
            if (width > 0.0f && height > 0.0f) {
                LinearInterpolator linearInterpolator = C2785g1.f13028do;
                float f2 = ((-0.100000024f) * interpolation) + 1.0f;
                float f3 = c0593Wr.f4405do;
                float max = (((Math.max(0.0f, ((width - (0.9f * width)) / 2.0f) - f3) - 0.0f) * interpolation) + 0.0f) * (z ? 1 : -1);
                float min = Math.min(Math.max(0.0f, ((height - (f2 * height)) / 2.0f) - f3), c0593Wr.f4409if);
                float f4 = b4.f201if - c0593Wr.f4408for;
                float abs = (((min - 0.0f) * (Math.abs(f4) / height)) + 0.0f) * Math.signum(f4);
                v.setScaleX(f2);
                v.setScaleY(f2);
                v.setTranslationX(max);
                v.setTranslationY(abs);
                if (v instanceof ClippableRoundedCornerLayout) {
                    float m2777if = c0593Wr.m2777if();
                    ((ClippableRoundedCornerLayout) v).m5840do(r11.getLeft(), r11.getTop(), r11.getRight(), r11.getBottom(), Cpublic.m7823for(m4765catch, m2777if, interpolation, m2777if));
                }
            }
        }
        AnimatorSet animatorSet = ctry.f11321do;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (f * animatorSet.getDuration()));
            return;
        }
        SearchView searchView = ctry.f11332do;
        if (searchView.m5861goto()) {
            searchView.m5855case();
        }
        if (searchView.f11301for) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            ctry.m5874if(animatorSet2);
            animatorSet2.setDuration(250L);
            animatorSet2.setInterpolator(C2676eA.m6516do(false, C2785g1.f13026do));
            ctry.f11321do = animatorSet2;
            animatorSet2.start();
            ctry.f11321do.pause();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final void m5865while() {
        ImageButton m828if = HH.m828if(this.f11290do);
        if (m828if == null) {
            return;
        }
        int i = this.f11291do.getVisibility() == 0 ? 1 : 0;
        Drawable m1777else = C0426Pe.m1777else(m828if.getDrawable());
        if (m1777else instanceof C0602Xe) {
            C0602Xe c0602Xe = (C0602Xe) m1777else;
            float f = i;
            if (c0602Xe.f4540try != f) {
                c0602Xe.f4540try = f;
                c0602Xe.invalidateSelf();
            }
        }
        if (m1777else instanceof C4051yh) {
            ((C4051yh) m1777else).m8764do(i);
        }
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Material3_SearchView), attributeSet, i);
        this.f11283do = new C0242Gr(this);
        this.f11297do = new LinkedHashSet();
        this.f11299for = 16;
        this.f11294do = Cif.HIDDEN;
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.i, i, R.style.Widget_Material3_SearchView, new int[0]);
        this.f11305new = m3115new.getColor(11, 0);
        int resourceId = m3115new.getResourceId(16, -1);
        int resourceId2 = m3115new.getResourceId(0, -1);
        String string = m3115new.getString(3);
        String string2 = m3115new.getString(4);
        String string3 = m3115new.getString(24);
        boolean z = m3115new.getBoolean(27, false);
        this.f11301for = m3115new.getBoolean(8, true);
        this.f11307new = m3115new.getBoolean(7, true);
        boolean z2 = m3115new.getBoolean(17, false);
        this.f11308try = m3115new.getBoolean(9, true);
        this.f11304if = m3115new.getBoolean(10, true);
        m3115new.recycle();
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_view, this);
        this.f11298do = true;
        this.f11284do = findViewById(R.id.open_search_view_scrim);
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) findViewById(R.id.open_search_view_root);
        this.f11291do = clippableRoundedCornerLayout;
        this.f11302if = findViewById(R.id.open_search_view_background);
        View findViewById = findViewById(R.id.open_search_view_status_bar_spacer);
        this.f11300for = findViewById;
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.open_search_view_header_container);
        this.f11286do = frameLayout;
        this.f11303if = (FrameLayout) findViewById(R.id.open_search_view_toolbar_container);
        MaterialToolbar materialToolbar = (MaterialToolbar) findViewById(R.id.open_search_view_toolbar);
        this.f11290do = materialToolbar;
        this.f11289do = (Toolbar) findViewById(R.id.open_search_view_dummy_toolbar);
        TextView textView = (TextView) findViewById(R.id.open_search_view_search_prefix);
        this.f11288do = textView;
        EditText editText = (EditText) findViewById(R.id.open_search_view_edit_text);
        this.f11285do = editText;
        ImageButton imageButton = (ImageButton) findViewById(R.id.open_search_view_clear_button);
        this.f11287do = imageButton;
        View findViewById2 = findViewById(R.id.open_search_view_divider);
        this.f11306new = findViewById2;
        TouchObserverFrameLayout touchObserverFrameLayout = (TouchObserverFrameLayout) findViewById(R.id.open_search_view_content_container);
        this.f11292do = touchObserverFrameLayout;
        this.f11295do = new Ctry(this);
        this.f11282do = new C0098Af(context2);
        clippableRoundedCornerLayout.setOnTouchListener(new SL(1));
        m5857class();
        if (resourceId != -1) {
            frameLayout.addView(LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) frameLayout, false));
            frameLayout.setVisibility(0);
        }
        textView.setText(string3);
        textView.setVisibility(TextUtils.isEmpty(string3) ? 8 : 0);
        if (resourceId2 != -1) {
            XG.m2800for(editText, resourceId2);
        }
        editText.setText(string);
        editText.setHint(string2);
        if (z2) {
            materialToolbar.mo3483default(null);
        } else {
            materialToolbar.mo3486extends(new View.OnClickListener() { // from class: PB
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = SearchView.f11281try;
                    SearchView.this.m5859else();
                }
            });
            if (z) {
                C0602Xe c0602Xe = new C0602Xe(getContext());
                int m1587goto = O2.m1587goto(this, R.attr.colorOnSurface);
                Paint paint = c0602Xe.f4533do;
                if (m1587goto != paint.getColor()) {
                    paint.setColor(m1587goto);
                    c0602Xe.invalidateSelf();
                }
                materialToolbar.mo3483default(c0602Xe);
            }
        }
        imageButton.setOnClickListener(new ViewOnClickListenerC2823gh(this, 1));
        editText.addTextChangedListener(new SB(this));
        touchObserverFrameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: OB
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int i2 = SearchView.f11281try;
                SearchView searchView = SearchView.this;
                if (!searchView.m5861goto()) {
                    return false;
                }
                searchView.m5855case();
                return false;
            }
        });
        C3738tL.m8285if(materialToolbar, new TK(this));
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById2.getLayoutParams();
        final int i2 = marginLayoutParams.leftMargin;
        final int i3 = marginLayoutParams.rightMargin;
        InterfaceC0136Bv interfaceC0136Bv = new InterfaceC0136Bv() { // from class: QB
            @Override // defpackage.InterfaceC0136Bv
            /* renamed from: for */
            public final C3150jM mo137for(View view, C3150jM c3150jM) {
                int i4 = SearchView.f11281try;
                int m7059for = c3150jM.m7059for() + i2;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = marginLayoutParams;
                marginLayoutParams2.leftMargin = m7059for;
                marginLayoutParams2.rightMargin = c3150jM.m7062new() + i3;
                return c3150jM;
            }
        };
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cnew.m1935return(findViewById2, interfaceC0136Bv);
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", Constants.PLATFORM);
        int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
        if (findViewById.getLayoutParams().height != dimensionPixelSize) {
            findViewById.getLayoutParams().height = dimensionPixelSize;
            findViewById.requestLayout();
        }
        QK.Cnew.m1935return(findViewById, new C2598cr(this));
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public String f11309break;

        /* renamed from: for, reason: not valid java name */
        public int f11310for;

        /* renamed from: com.google.android.material.search.SearchView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11309break = parcel.readString();
            this.f11310for = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f6568do, i);
            parcel.writeString(this.f11309break);
            parcel.writeInt(this.f11310for);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
