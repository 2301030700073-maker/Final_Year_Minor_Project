package androidx.appcompat.app;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import defpackage.C0820cd;
import defpackage.C3385nL;
import defpackage.C3444oL;
import defpackage.Ctry;
import defpackage.G;
import defpackage.InterfaceC2701ed;
import defpackage.InterfaceC3562qL;
import defpackage.O4;
import defpackage.QK;
import defpackage.YF;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: androidx.appcompat.app.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase extends ActionBar implements ActionBarOverlayLayout.Cnew {

    /* renamed from: do, reason: not valid java name */
    public static final AccelerateInterpolator f5302do = new AccelerateInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final DecelerateInterpolator f5303do = new DecelerateInterpolator();

    /* renamed from: case, reason: not valid java name */
    public boolean f5304case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f5305do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public G.Cdo f5306do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f5307do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f5308do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5309do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5310do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5311do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5312do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBarContainer f5313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBarContextView f5314do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBarOverlayLayout f5315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC2701ed f5316do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<ActionBar.Cdo> f5317do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3444oL f5318do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5319do;

    /* renamed from: else, reason: not valid java name */
    public boolean f5320else;

    /* renamed from: for, reason: not valid java name */
    public boolean f5321for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f5322goto;

    /* renamed from: if, reason: not valid java name */
    public Context f5323if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Cnew f5324if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5325if;

    /* renamed from: new, reason: not valid java name */
    public boolean f5326new;

    /* renamed from: this, reason: not valid java name */
    public boolean f5327this;

    /* renamed from: try, reason: not valid java name */
    public boolean f5328try;

    /* renamed from: androidx.appcompat.app.case$do, reason: invalid class name */
    public class Cdo extends C0820cd {
        public Cdo() {
            super(1);
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do */
        public final void mo325do() {
            View view;
            Ccase ccase = Ccase.this;
            if (ccase.f5326new && (view = ccase.f5308do) != null) {
                view.setTranslationY(0.0f);
                ccase.f5313do.setTranslationY(0.0f);
            }
            ccase.f5313do.setVisibility(8);
            ActionBarContainer actionBarContainer = ccase.f5313do;
            actionBarContainer.f5555do = false;
            actionBarContainer.setDescendantFocusability(262144);
            ccase.f5318do = null;
            G.Cdo cdo = ccase.f5306do;
            if (cdo != null) {
                cdo.mo677if(ccase.f5324if);
                ccase.f5324if = null;
                ccase.f5306do = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = ccase.f5315do;
            if (actionBarOverlayLayout != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                QK.Cfor.m1903for(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.case$for, reason: invalid class name */
    public class Cfor implements InterfaceC3562qL {
        public Cfor() {
        }
    }

    /* renamed from: androidx.appcompat.app.case$if, reason: invalid class name */
    public class Cif extends C0820cd {
        public Cif() {
            super(1);
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do */
        public final void mo325do() {
            Ccase ccase = Ccase.this;
            ccase.f5318do = null;
            ccase.f5313do.requestLayout();
        }
    }

    /* renamed from: androidx.appcompat.app.case$new, reason: invalid class name */
    public class Cnew extends G implements Ccase.Cdo {

        /* renamed from: do, reason: not valid java name */
        public G.Cdo f5332do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f5333do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.appcompat.view.menu.Ccase f5335do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakReference<View> f5336do;

        public Cnew(Context context, AppCompatDelegateImpl.Cnew cnew) {
            this.f5333do = context;
            this.f5332do = cnew;
            androidx.appcompat.view.menu.Ccase ccase = new androidx.appcompat.view.menu.Ccase(context);
            ccase.f5402do = 1;
            this.f5335do = ccase;
            ccase.f5407do = this;
        }

        @Override // defpackage.G
        /* renamed from: break */
        public final boolean mo661break() {
            return Ccase.this.f5314do.f5568for;
        }

        @Override // defpackage.G
        /* renamed from: case */
        public final MenuInflater mo662case() {
            return new YF(this.f5333do);
        }

        @Override // defpackage.G
        /* renamed from: catch */
        public final void mo663catch(View view) {
            Ccase.this.f5314do.m3364break(view);
            this.f5336do = new WeakReference<>(view);
        }

        @Override // defpackage.G
        /* renamed from: class */
        public final void mo664class(int i) {
            mo665const(Ccase.this.f5307do.getResources().getString(i));
        }

        @Override // defpackage.G
        /* renamed from: const */
        public final void mo665const(CharSequence charSequence) {
            ActionBarContextView actionBarContextView = Ccase.this.f5314do;
            actionBarContextView.f5571if = charSequence;
            actionBarContextView.m3366goto();
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(androidx.appcompat.view.menu.Ccase ccase) {
            if (this.f5332do == null) {
                return;
            }
            mo672this();
            ActionMenuPresenter actionMenuPresenter = ((Ctry) Ccase.this.f5314do).f15806do;
            if (actionMenuPresenter != null) {
                actionMenuPresenter.m3393super();
            }
        }

        @Override // defpackage.G
        /* renamed from: else */
        public final CharSequence mo666else() {
            return Ccase.this.f5314do.f5571if;
        }

        @Override // defpackage.G
        /* renamed from: final */
        public final void mo667final(int i) {
            mo671super(Ccase.this.f5307do.getResources().getString(i));
        }

        @Override // defpackage.G
        /* renamed from: for */
        public final void mo668for() {
            Ccase ccase = Ccase.this;
            if (ccase.f5312do != this) {
                return;
            }
            if (!ccase.f5328try) {
                this.f5332do.mo677if(this);
            } else {
                ccase.f5324if = this;
                ccase.f5306do = this.f5332do;
            }
            this.f5332do = null;
            ccase.m3292while(false);
            ActionBarContextView actionBarContextView = ccase.f5314do;
            if (actionBarContextView.f5563do == null) {
                actionBarContextView.m3367this();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = ccase.f5315do;
            boolean z = ccase.f5327this;
            if (z != actionBarOverlayLayout.f5600new) {
                actionBarOverlayLayout.f5600new = z;
                if (!z) {
                    actionBarOverlayLayout.m3381native();
                    actionBarOverlayLayout.m3381native();
                    actionBarOverlayLayout.f5581do.setTranslationY(-Math.max(0, Math.min(0, actionBarOverlayLayout.f5581do.getHeight())));
                }
            }
            ccase.f5312do = null;
        }

        @Override // defpackage.G
        /* renamed from: goto */
        public final CharSequence mo669goto() {
            return Ccase.this.f5314do.f5566do;
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(androidx.appcompat.view.menu.Ccase ccase, MenuItem menuItem) {
            G.Cdo cdo = this.f5332do;
            if (cdo != null) {
                return cdo.mo675do(this, menuItem);
            }
            return false;
        }

        @Override // defpackage.G
        /* renamed from: new */
        public final View mo670new() {
            WeakReference<View> weakReference = this.f5336do;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // defpackage.G
        /* renamed from: super */
        public final void mo671super(CharSequence charSequence) {
            ActionBarContextView actionBarContextView = Ccase.this.f5314do;
            actionBarContextView.f5566do = charSequence;
            actionBarContextView.m3366goto();
            QK.m1860public(actionBarContextView, charSequence);
        }

        @Override // defpackage.G
        /* renamed from: this */
        public final void mo672this() {
            if (Ccase.this.f5312do != this) {
                return;
            }
            androidx.appcompat.view.menu.Ccase ccase = this.f5335do;
            ccase.m3331extends();
            try {
                this.f5332do.mo676for(this, ccase);
            } finally {
                ccase.m3328default();
            }
        }

        @Override // defpackage.G
        /* renamed from: throw */
        public final void mo673throw(boolean z) {
            ((G) this).f1113do = z;
            ActionBarContextView actionBarContextView = Ccase.this.f5314do;
            if (z != actionBarContextView.f5568for) {
                actionBarContextView.requestLayout();
            }
            actionBarContextView.f5568for = z;
        }

        @Override // defpackage.G
        /* renamed from: try */
        public final androidx.appcompat.view.menu.Ccase mo674try() {
            return this.f5335do;
        }
    }

    public Ccase(boolean z, Activity activity) {
        new ArrayList();
        this.f5317do = new ArrayList<>();
        this.f5305do = 0;
        this.f5326new = true;
        this.f5320else = true;
        this.f5309do = new Cdo();
        this.f5311do = new Cif();
        this.f5310do = new Cfor();
        View decorView = activity.getWindow().getDecorView();
        m3289import(decorView);
        if (z) {
            return;
        }
        this.f5308do = decorView.findViewById(R.id.content);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: class */
    public final void mo3212class(boolean z) {
        if (this.f5319do) {
            return;
        }
        int i = z ? 4 : 0;
        int mo3538return = this.f5316do.mo3538return();
        this.f5319do = true;
        this.f5316do.mo3539static((i & 4) | (mo3538return & (-5)));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: const */
    public final void mo3213const(boolean z) {
        C3444oL c3444oL;
        this.f5322goto = z;
        if (z || (c3444oL = this.f5318do) == null) {
            return;
        }
        c3444oL.m7707do();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: else */
    public final void mo3215else() {
        m3290native(this.f5307do.getResources().getBoolean(com.joeykrim.rootcheck.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: final */
    public final void mo3216final(String str) {
        this.f5316do.mo3543throw(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: for */
    public final void mo3217for(boolean z) {
        if (z == this.f5325if) {
            return;
        }
        this.f5325if = z;
        ArrayList<ActionBar.Cdo> arrayList = this.f5317do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m3225do();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: if */
    public final boolean mo3219if() {
        InterfaceC2701ed interfaceC2701ed = this.f5316do;
        if (interfaceC2701ed == null || !interfaceC2701ed.mo3523break()) {
            return false;
        }
        this.f5316do.mo3540super();
        return true;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3289import(View view) {
        InterfaceC2701ed interfaceC2701ed;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.joeykrim.rootcheck.R.id.decor_content_parent);
        this.f5315do = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.f5585do = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((Ccase) actionBarOverlayLayout.f5585do).f5305do = actionBarOverlayLayout.f5598new;
                int i = actionBarOverlayLayout.f5576case;
                if (i != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(i);
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    QK.Cfor.m1903for(actionBarOverlayLayout);
                }
            }
        }
        KeyEvent.Callback findViewById = view.findViewById(com.joeykrim.rootcheck.R.id.action_bar);
        if (findViewById instanceof InterfaceC2701ed) {
            interfaceC2701ed = (InterfaceC2701ed) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            Toolbar toolbar = (Toolbar) findViewById;
            if (toolbar.f5935do == null) {
                toolbar.f5935do = new androidx.appcompat.widget.Cnew(toolbar, true);
            }
            interfaceC2701ed = toolbar.f5935do;
        }
        this.f5316do = interfaceC2701ed;
        this.f5314do = (ActionBarContextView) view.findViewById(com.joeykrim.rootcheck.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.joeykrim.rootcheck.R.id.action_bar_container);
        this.f5313do = actionBarContainer;
        InterfaceC2701ed interfaceC2701ed2 = this.f5316do;
        if (interfaceC2701ed2 == null || this.f5314do == null || actionBarContainer == null) {
            throw new IllegalStateException(Ccase.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.f5307do = interfaceC2701ed2.getContext();
        if ((this.f5316do.mo3538return() & 4) != 0) {
            this.f5319do = true;
        }
        Context context = this.f5307do;
        if (context.getApplicationInfo().targetSdkVersion < 14) {
        }
        this.f5316do.mo3527const();
        m3290native(context.getResources().getBoolean(com.joeykrim.rootcheck.R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.f5307do.obtainStyledAttributes(null, O4.f2541else, com.joeykrim.rootcheck.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f5315do;
            if (!actionBarOverlayLayout2.f5597if) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f5327this = true;
            if (true != actionBarOverlayLayout2.f5600new) {
                actionBarOverlayLayout2.f5600new = true;
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f5313do;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            QK.Cnew.m1932native(actionBarContainer2, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3290native(boolean z) {
        this.f5321for = z;
        if (z) {
            this.f5313do.getClass();
            this.f5316do.mo3530final();
        } else {
            this.f5316do.mo3530final();
            this.f5313do.getClass();
        }
        boolean z2 = false;
        boolean z3 = this.f5316do.mo3546while() == 2;
        this.f5316do.mo3537public(!this.f5321for && z3);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f5315do;
        if (!this.f5321for && z3) {
            z2 = true;
        }
        actionBarOverlayLayout.f5594for = z2;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: new */
    public final int mo3220new() {
        return this.f5316do.mo3538return();
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3291public(boolean z) {
        boolean z2 = this.f5304case || !this.f5328try;
        View view = this.f5308do;
        final Cfor cfor = this.f5310do;
        if (!z2) {
            if (this.f5320else) {
                this.f5320else = false;
                C3444oL c3444oL = this.f5318do;
                if (c3444oL != null) {
                    c3444oL.m7707do();
                }
                int i = this.f5305do;
                Cdo cdo = this.f5309do;
                if (i != 0 || (!this.f5322goto && !z)) {
                    cdo.mo325do();
                    return;
                }
                this.f5313do.setAlpha(1.0f);
                ActionBarContainer actionBarContainer = this.f5313do;
                actionBarContainer.f5555do = true;
                actionBarContainer.setDescendantFocusability(393216);
                C3444oL c3444oL2 = new C3444oL();
                float f = -this.f5313do.getHeight();
                if (z) {
                    this.f5313do.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                C3385nL m1851do = QK.m1851do(this.f5313do);
                m1851do.m7567try(f);
                final View view2 = m1851do.f14510do.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(cfor != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: lL
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) androidx.appcompat.app.Ccase.this.f5313do.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z3 = c3444oL2.f14768do;
                ArrayList<C3385nL> arrayList = c3444oL2.f14765do;
                if (!z3) {
                    arrayList.add(m1851do);
                }
                if (this.f5326new && view != null) {
                    C3385nL m1851do2 = QK.m1851do(view);
                    m1851do2.m7567try(f);
                    if (!c3444oL2.f14768do) {
                        arrayList.add(m1851do2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = f5302do;
                boolean z4 = c3444oL2.f14768do;
                if (!z4) {
                    c3444oL2.f14764do = accelerateInterpolator;
                }
                if (!z4) {
                    c3444oL2.f14763do = 250L;
                }
                if (!z4) {
                    c3444oL2.f14767do = cdo;
                }
                this.f5318do = c3444oL2;
                c3444oL2.m7708if();
                return;
            }
            return;
        }
        if (this.f5320else) {
            return;
        }
        this.f5320else = true;
        C3444oL c3444oL3 = this.f5318do;
        if (c3444oL3 != null) {
            c3444oL3.m7707do();
        }
        this.f5313do.setVisibility(0);
        int i2 = this.f5305do;
        Cif cif = this.f5311do;
        if (i2 == 0 && (this.f5322goto || z)) {
            this.f5313do.setTranslationY(0.0f);
            float f2 = -this.f5313do.getHeight();
            if (z) {
                this.f5313do.getLocationInWindow(new int[]{0, 0});
                f2 -= r12[1];
            }
            this.f5313do.setTranslationY(f2);
            C3444oL c3444oL4 = new C3444oL();
            C3385nL m1851do3 = QK.m1851do(this.f5313do);
            m1851do3.m7567try(0.0f);
            final View view3 = m1851do3.f14510do.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(cfor != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: lL
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) androidx.appcompat.app.Ccase.this.f5313do.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z5 = c3444oL4.f14768do;
            ArrayList<C3385nL> arrayList2 = c3444oL4.f14765do;
            if (!z5) {
                arrayList2.add(m1851do3);
            }
            if (this.f5326new && view != null) {
                view.setTranslationY(f2);
                C3385nL m1851do4 = QK.m1851do(view);
                m1851do4.m7567try(0.0f);
                if (!c3444oL4.f14768do) {
                    arrayList2.add(m1851do4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = f5303do;
            boolean z6 = c3444oL4.f14768do;
            if (!z6) {
                c3444oL4.f14764do = decelerateInterpolator;
            }
            if (!z6) {
                c3444oL4.f14763do = 250L;
            }
            if (!z6) {
                c3444oL4.f14767do = cif;
            }
            this.f5318do = c3444oL4;
            c3444oL4.m7708if();
        } else {
            this.f5313do.setAlpha(1.0f);
            this.f5313do.setTranslationY(0.0f);
            if (this.f5326new && view != null) {
                view.setTranslationY(0.0f);
            }
            cif.mo325do();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f5315do;
        if (actionBarOverlayLayout != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(actionBarOverlayLayout);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: super */
    public final void mo3221super(CharSequence charSequence) {
        this.f5316do.mo3531for(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: this */
    public final boolean mo3222this(int i, KeyEvent keyEvent) {
        androidx.appcompat.view.menu.Ccase ccase;
        Cnew cnew = this.f5312do;
        if (cnew == null || (ccase = cnew.f5335do) == null) {
            return false;
        }
        ccase.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return ccase.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: throw */
    public final G mo3223throw(AppCompatDelegateImpl.Cnew cnew) {
        Cnew cnew2 = this.f5312do;
        if (cnew2 != null) {
            cnew2.mo668for();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f5315do;
        if (actionBarOverlayLayout.f5600new) {
            actionBarOverlayLayout.f5600new = false;
            actionBarOverlayLayout.m3381native();
            actionBarOverlayLayout.m3381native();
            actionBarOverlayLayout.f5581do.setTranslationY(-Math.max(0, Math.min(0, actionBarOverlayLayout.f5581do.getHeight())));
        }
        this.f5314do.m3367this();
        Cnew cnew3 = new Cnew(this.f5314do.getContext(), cnew);
        androidx.appcompat.view.menu.Ccase ccase = cnew3.f5335do;
        ccase.m3331extends();
        try {
            if (!cnew3.f5332do.mo678new(cnew3, ccase)) {
                return null;
            }
            this.f5312do = cnew3;
            cnew3.mo672this();
            this.f5314do.m3365else(cnew3);
            m3292while(true);
            return cnew3;
        } finally {
            ccase.m3328default();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: try */
    public final Context mo3224try() {
        if (this.f5323if == null) {
            TypedValue typedValue = new TypedValue();
            this.f5307do.getTheme().resolveAttribute(com.joeykrim.rootcheck.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f5323if = new ContextThemeWrapper(this.f5307do, i);
            } else {
                this.f5323if = this.f5307do;
            }
        }
        return this.f5323if;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m3292while(boolean z) {
        C3385nL mo3534import;
        C3385nL m8320case;
        if (z) {
            if (!this.f5304case) {
                this.f5304case = true;
                m3291public(false);
            }
        } else if (this.f5304case) {
            this.f5304case = false;
            m3291public(false);
        }
        ActionBarContainer actionBarContainer = this.f5313do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (!actionBarContainer.isLaidOut()) {
            if (z) {
                this.f5316do.setVisibility(4);
                this.f5314do.setVisibility(0);
                return;
            } else {
                this.f5316do.setVisibility(0);
                this.f5314do.setVisibility(8);
                return;
            }
        }
        if (z) {
            m8320case = this.f5316do.mo3534import(4, 100L);
            mo3534import = this.f5314do.m8320case(0, 200L);
        } else {
            mo3534import = this.f5316do.mo3534import(0, 200L);
            m8320case = this.f5314do.m8320case(8, 100L);
        }
        C3444oL c3444oL = new C3444oL();
        ArrayList<C3385nL> arrayList = c3444oL.f14765do;
        arrayList.add(m8320case);
        View view = m8320case.f14510do.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = mo3534import.f14510do.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(mo3534import);
        c3444oL.m7708if();
    }

    public Ccase(Dialog dialog) {
        new ArrayList();
        this.f5317do = new ArrayList<>();
        this.f5305do = 0;
        this.f5326new = true;
        this.f5320else = true;
        this.f5309do = new Cdo();
        this.f5311do = new Cif();
        this.f5310do = new Cfor();
        m3289import(dialog.getWindow().getDecorView());
    }
}
