package b.b.c;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import b.b.g.InterfaceC0050h;
import b.b.g.InterfaceC0053i0;
import b.b.g.k1;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class W extends AbstractC0004c implements InterfaceC0050h {

    /* renamed from: a, reason: collision with root package name */
    public Context f286a;

    /* renamed from: b, reason: collision with root package name */
    public Context f287b;

    /* renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f288c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContainer f289d;
    public InterfaceC0053i0 e;
    public ActionBarContextView f;
    public View g;
    public boolean h;
    public V i;
    public b.b.f.b j;
    public b.b.f.a k;
    public boolean l;
    public ArrayList m;
    public boolean n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public b.b.f.l t;
    public boolean u;
    public boolean v;
    public final b.e.i.u w;
    public final b.e.i.u x;
    public final U y;
    public static final Interpolator z = new AccelerateInterpolator();
    public static final Interpolator A = new DecelerateInterpolator();

    public W(Activity activity, boolean z2) {
        new ArrayList();
        this.m = new ArrayList();
        this.o = 0;
        this.p = true;
        this.s = true;
        this.w = new S(this);
        this.x = new T(this);
        this.y = new U(this);
        View decorView = activity.getWindow().getDecorView();
        l(decorView);
        if (z2) {
            return;
        }
        this.g = decorView.findViewById(R.id.content);
    }

    @Override // b.b.c.AbstractC0004c
    public boolean a() {
        InterfaceC0053i0 interfaceC0053i0 = this.e;
        if (interfaceC0053i0 == null || !interfaceC0053i0.t()) {
            return false;
        }
        this.e.collapseActionView();
        return true;
    }

    @Override // b.b.c.AbstractC0004c
    public void b(boolean z2) {
        if (z2 == this.l) {
            return;
        }
        this.l = z2;
        int size = this.m.size();
        for (int i = 0; i < size; i++) {
            ((InterfaceC0003b) this.m.get(i)).a(z2);
        }
    }

    @Override // b.b.c.AbstractC0004c
    public int c() {
        return this.e.k();
    }

    @Override // b.b.c.AbstractC0004c
    public Context d() {
        if (this.f287b == null) {
            TypedValue typedValue = new TypedValue();
            this.f286a.getTheme().resolveAttribute(com.android.systemui.shared.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f287b = new ContextThemeWrapper(this.f286a, i);
            } else {
                this.f287b = this.f286a;
            }
        }
        return this.f287b;
    }

    @Override // b.b.c.AbstractC0004c
    public void e(Configuration configuration) {
        m(this.f286a.getResources().getBoolean(com.android.systemui.shared.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // b.b.c.AbstractC0004c
    public boolean f(int i, KeyEvent keyEvent) {
        b.b.f.m.o oVar;
        V v = this.i;
        if (v == null || (oVar = v.f285d) == null) {
            return false;
        }
        oVar.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return oVar.performShortcut(i, keyEvent, 0);
    }

    @Override // b.b.c.AbstractC0004c
    public void g(boolean z2) {
        if (this.h) {
            return;
        }
        int i = z2 ? 4 : 0;
        int k = this.e.k();
        this.h = true;
        this.e.w((i & 4) | (k & (-5)));
    }

    @Override // b.b.c.AbstractC0004c
    public void h(boolean z2) {
        b.b.f.l lVar;
        this.u = z2;
        if (z2 || (lVar = this.t) == null) {
            return;
        }
        lVar.a();
    }

    @Override // b.b.c.AbstractC0004c
    public void i(CharSequence charSequence) {
        this.e.c(charSequence);
    }

    @Override // b.b.c.AbstractC0004c
    public b.b.f.b j(b.b.f.a aVar) {
        V v = this.i;
        if (v != null) {
            v.c();
        }
        this.f288c.w(false);
        this.f.h();
        V v2 = new V(this, this.f.getContext(), aVar);
        v2.f285d.y();
        try {
            if (!v2.e.c(v2, v2.f285d)) {
                return null;
            }
            this.i = v2;
            v2.i();
            this.f.f(v2);
            k(true);
            this.f.sendAccessibilityEvent(32);
            return v2;
        } finally {
            v2.f285d.x();
        }
    }

    public void k(boolean z2) {
        b.e.i.t e;
        b.e.i.t tVar;
        if (z2) {
            if (!this.r) {
                this.r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f288c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.x();
                }
                n(false);
            }
        } else if (this.r) {
            this.r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f288c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.x();
            }
            n(false);
        }
        if (!b.e.i.q.t(this.f289d)) {
            if (z2) {
                this.e.l(4);
                this.f.setVisibility(0);
                return;
            } else {
                this.e.l(0);
                this.f.setVisibility(8);
                return;
            }
        }
        if (z2) {
            e = this.e.r(4, 100L);
            tVar = this.f.e(0, 200L);
        } else {
            b.e.i.t r = this.e.r(0, 200L);
            e = this.f.e(8, 100L);
            tVar = r;
        }
        b.b.f.l lVar = new b.b.f.l();
        lVar.f356a.add(e);
        View view = (View) e.f781a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) tVar.f781a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        lVar.f356a.add(tVar);
        lVar.b();
    }

    public final void l(View view) {
        InterfaceC0053i0 interfaceC0053i0;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.android.systemui.shared.R.id.decor_content_parent);
        this.f288c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.y = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((W) actionBarOverlayLayout.y).o = actionBarOverlayLayout.f44b;
                int i = actionBarOverlayLayout.m;
                if (i != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(i);
                    b.e.i.q.B(actionBarOverlayLayout);
                }
            }
        }
        KeyEvent.Callback findViewById = view.findViewById(com.android.systemui.shared.R.id.action_bar);
        if (findViewById instanceof InterfaceC0053i0) {
            interfaceC0053i0 = (InterfaceC0053i0) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                StringBuilder f = c.a.c.a.a.f("Can't make a decor toolbar out of ");
                f.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
                throw new IllegalStateException(f.toString());
            }
            Toolbar toolbar = (Toolbar) findViewById;
            if (toolbar.I == null) {
                toolbar.I = new k1(toolbar, true);
            }
            interfaceC0053i0 = toolbar.I;
        }
        this.e = interfaceC0053i0;
        this.f = (ActionBarContextView) view.findViewById(com.android.systemui.shared.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.android.systemui.shared.R.id.action_bar_container);
        this.f289d = actionBarContainer;
        InterfaceC0053i0 interfaceC0053i02 = this.e;
        if (interfaceC0053i02 == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(W.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f286a = interfaceC0053i02.p();
        boolean z2 = (this.e.k() & 4) != 0;
        if (z2) {
            this.h = true;
        }
        Context context = this.f286a;
        this.e.o((context.getApplicationInfo().targetSdkVersion < 14) || z2);
        m(context.getResources().getBoolean(com.android.systemui.shared.R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.f286a.obtainStyledAttributes(null, b.b.b.f240a, com.android.systemui.shared.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f288c;
            if (!actionBarOverlayLayout2.h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.v = true;
            actionBarOverlayLayout2.w(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            b.e.i.q.F(this.f289d, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public final void m(boolean z2) {
        this.n = z2;
        if (z2) {
            ActionBarContainer actionBarContainer = this.f289d;
            View view = actionBarContainer.f40b;
            if (view != null) {
                actionBarContainer.removeView(view);
            }
            actionBarContainer.f40b = null;
            this.e.m(null);
        } else {
            this.e.m(null);
            ActionBarContainer actionBarContainer2 = this.f289d;
            View view2 = actionBarContainer2.f40b;
            if (view2 != null) {
                actionBarContainer2.removeView(view2);
            }
            actionBarContainer2.f40b = null;
        }
        boolean z3 = this.e.q() == 2;
        this.e.v(!this.n && z3);
        this.f288c.i = !this.n && z3;
    }

    public final void n(boolean z2) {
        View view;
        View view2;
        View view3;
        if (!(this.r || !this.q)) {
            if (this.s) {
                this.s = false;
                b.b.f.l lVar = this.t;
                if (lVar != null) {
                    lVar.a();
                }
                if (this.o != 0 || (!this.u && !z2)) {
                    this.w.a(null);
                    return;
                }
                this.f289d.setAlpha(1.0f);
                ActionBarContainer actionBarContainer = this.f289d;
                actionBarContainer.f39a = true;
                actionBarContainer.setDescendantFocusability(393216);
                b.b.f.l lVar2 = new b.b.f.l();
                float f = -this.f289d.getHeight();
                if (z2) {
                    this.f289d.getLocationInWindow(new int[]{0, 0});
                    f -= r9[1];
                }
                b.e.i.t a2 = b.e.i.q.a(this.f289d);
                a2.g(f);
                a2.f(this.y);
                if (!lVar2.e) {
                    lVar2.f356a.add(a2);
                }
                if (this.p && (view = this.g) != null) {
                    b.e.i.t a3 = b.e.i.q.a(view);
                    a3.g(f);
                    if (!lVar2.e) {
                        lVar2.f356a.add(a3);
                    }
                }
                Interpolator interpolator = z;
                if (!lVar2.e) {
                    lVar2.f358c = interpolator;
                }
                if (!lVar2.e) {
                    lVar2.f357b = 250L;
                }
                b.e.i.u uVar = this.w;
                if (!lVar2.e) {
                    lVar2.f359d = uVar;
                }
                this.t = lVar2;
                lVar2.b();
                return;
            }
            return;
        }
        if (this.s) {
            return;
        }
        this.s = true;
        b.b.f.l lVar3 = this.t;
        if (lVar3 != null) {
            lVar3.a();
        }
        this.f289d.setVisibility(0);
        if (this.o == 0 && (this.u || z2)) {
            this.f289d.setTranslationY(RecentsState.NO_OFFSET);
            float f2 = -this.f289d.getHeight();
            if (z2) {
                this.f289d.getLocationInWindow(new int[]{0, 0});
                f2 -= r9[1];
            }
            this.f289d.setTranslationY(f2);
            b.b.f.l lVar4 = new b.b.f.l();
            b.e.i.t a4 = b.e.i.q.a(this.f289d);
            a4.g(RecentsState.NO_OFFSET);
            a4.f(this.y);
            if (!lVar4.e) {
                lVar4.f356a.add(a4);
            }
            if (this.p && (view3 = this.g) != null) {
                view3.setTranslationY(f2);
                b.e.i.t a5 = b.e.i.q.a(this.g);
                a5.g(RecentsState.NO_OFFSET);
                if (!lVar4.e) {
                    lVar4.f356a.add(a5);
                }
            }
            Interpolator interpolator2 = A;
            if (!lVar4.e) {
                lVar4.f358c = interpolator2;
            }
            if (!lVar4.e) {
                lVar4.f357b = 250L;
            }
            b.e.i.u uVar2 = this.x;
            if (!lVar4.e) {
                lVar4.f359d = uVar2;
            }
            this.t = lVar4;
            lVar4.b();
        } else {
            this.f289d.setAlpha(1.0f);
            this.f289d.setTranslationY(RecentsState.NO_OFFSET);
            if (this.p && (view2 = this.g) != null) {
                view2.setTranslationY(RecentsState.NO_OFFSET);
            }
            this.x.a(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f288c;
        if (actionBarOverlayLayout != null) {
            b.e.i.q.B(actionBarOverlayLayout);
        }
    }

    public W(Dialog dialog) {
        new ArrayList();
        this.m = new ArrayList();
        this.o = 0;
        this.p = true;
        this.s = true;
        this.w = new S(this);
        this.x = new T(this);
        this.y = new U(this);
        l(dialog.getWindow().getDecorView());
    }
}
