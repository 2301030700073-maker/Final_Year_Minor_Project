package b.b.c;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import b.b.g.InterfaceC0051h0;
import b.b.g.a1;
import b.b.g.m1;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.system.QuickStepContract;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class J extends AbstractC0018q implements b.b.f.m.m, LayoutInflater.Factory2 {
    public static final boolean a0 = false;
    public static boolean e0;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public H[] F;
    public H G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public AppCompatDelegateImpl$AutoNightModeManager Q;
    public AppCompatDelegateImpl$AutoNightModeManager R;
    public boolean S;
    public int T;
    public final Runnable U;
    public boolean V;
    public Rect W;
    public Rect X;
    public N Y;

    /* renamed from: c, reason: collision with root package name */
    public final Object f258c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f259d;
    public Window e;
    public B f;
    public final InterfaceC0017p g;
    public AbstractC0004c h;
    public MenuInflater i;
    public CharSequence j;
    public InterfaceC0051h0 k;
    public y l;
    public I m;
    public b.b.f.b n;
    public ActionBarContextView o;
    public PopupWindow p;
    public Runnable q;
    public b.e.i.t r;
    public boolean s;
    public boolean t;
    public ViewGroup u;
    public TextView v;
    public View w;
    public boolean x;
    public boolean y;
    public boolean z;
    public static final b.d.n Z = new b.d.n();
    public static final int[] b0 = {R.attr.windowBackground};
    public static final boolean c0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean d0 = true;

    static {
        if (!a0 || e0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new r(Thread.getDefaultUncaughtExceptionHandler()));
        e0 = true;
    }

    public J(Context context, Window window, InterfaceC0017p interfaceC0017p, Object obj) {
        Integer num;
        ActivityC0016o activityC0016o;
        b.d.n nVar = Z;
        this.r = null;
        this.s = true;
        this.M = -100;
        this.U = new RunnableC0019s(this);
        this.f259d = context;
        this.g = interfaceC0017p;
        this.f258c = obj;
        if (this.M == -100 && (obj instanceof Dialog)) {
            while (context != null) {
                if (!(context instanceof ActivityC0016o)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    activityC0016o = (ActivityC0016o) context;
                    break;
                }
            }
            activityC0016o = null;
            if (activityC0016o != null) {
                this.M = ((J) activityC0016o.d()).M;
            }
        }
        if (this.M == -100 && (num = (Integer) nVar.getOrDefault(this.f258c.getClass().getName(), null)) != null) {
            this.M = num.intValue();
            nVar.remove(this.f258c.getClass().getName());
        }
        if (window != null) {
            s(window);
        }
        b.b.g.D.d();
    }

    public final void A() {
        ViewGroup viewGroup;
        int[] iArr = b.b.b.j;
        if (this.t) {
            return;
        }
        TypedArray obtainStyledAttributes = this.f259d.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            l(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            l(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            l(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            l(10);
        }
        this.C = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        B();
        this.e.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f259d);
        if (this.D) {
            viewGroup = this.B ? (ViewGroup) from.inflate(com.android.systemui.shared.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(com.android.systemui.shared.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.C) {
            viewGroup = (ViewGroup) from.inflate(com.android.systemui.shared.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.A = false;
            this.z = false;
        } else if (this.z) {
            TypedValue typedValue = new TypedValue();
            this.f259d.getTheme().resolveAttribute(com.android.systemui.shared.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new b.b.f.d(this.f259d, typedValue.resourceId) : this.f259d).inflate(com.android.systemui.shared.R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC0051h0 interfaceC0051h0 = (InterfaceC0051h0) viewGroup.findViewById(com.android.systemui.shared.R.id.decor_content_parent);
            this.k = interfaceC0051h0;
            interfaceC0051h0.e(F());
            if (this.A) {
                this.k.m(109);
            }
            if (this.x) {
                this.k.m(2);
            }
            if (this.y) {
                this.k.m(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder f = c.a.c.a.a.f("AppCompat does not support the current theme features: { windowActionBar: ");
            f.append(this.z);
            f.append(", windowActionBarOverlay: ");
            f.append(this.A);
            f.append(", android:windowIsFloating: ");
            f.append(this.C);
            f.append(", windowActionModeOverlay: ");
            f.append(this.B);
            f.append(", windowNoTitle: ");
            f.append(this.D);
            f.append(" }");
            throw new IllegalArgumentException(f.toString());
        }
        b.e.i.q.H(viewGroup, new C0020t(this));
        if (this.k == null) {
            this.v = (TextView) viewGroup.findViewById(com.android.systemui.shared.R.id.title);
        }
        m1.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.android.systemui.shared.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.e.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.e.setContentView(viewGroup);
        contentFrameLayout.a(new C0021u(this));
        this.u = viewGroup;
        Object obj = this.f258c;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.j;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC0051h0 interfaceC0051h02 = this.k;
            if (interfaceC0051h02 != null) {
                interfaceC0051h02.c(title);
            } else {
                AbstractC0004c abstractC0004c = this.h;
                if (abstractC0004c != null) {
                    abstractC0004c.i(title);
                } else {
                    TextView textView = this.v;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.u.findViewById(R.id.content);
        View decorView = this.e.getDecorView();
        contentFrameLayout2.g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (b.e.i.q.t(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = this.f259d.obtainStyledAttributes(iArr);
        if (contentFrameLayout2.f56a == null) {
            contentFrameLayout2.f56a = new TypedValue();
        }
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.f56a);
        if (contentFrameLayout2.f57b == null) {
            contentFrameLayout2.f57b = new TypedValue();
        }
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.f57b);
        if (obtainStyledAttributes2.hasValue(122)) {
            if (contentFrameLayout2.f58c == null) {
                contentFrameLayout2.f58c = new TypedValue();
            }
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.f58c);
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            if (contentFrameLayout2.f59d == null) {
                contentFrameLayout2.f59d = new TypedValue();
            }
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.f59d);
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            if (contentFrameLayout2.e == null) {
                contentFrameLayout2.e = new TypedValue();
            }
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.e);
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            if (contentFrameLayout2.f == null) {
                contentFrameLayout2.f = new TypedValue();
            }
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.f);
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        J();
        this.t = true;
        H E = E(0);
        if (this.L) {
            return;
        }
        if (E == null || E.h == null) {
            H(108);
        }
    }

    public final void B() {
        if (this.e == null) {
            Object obj = this.f258c;
            if (obj instanceof Activity) {
                s(((Activity) obj).getWindow());
            }
        }
        if (this.e == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public H C(Menu menu) {
        H[] hArr = this.F;
        int length = hArr != null ? hArr.length : 0;
        for (int i = 0; i < length; i++) {
            H h = hArr[i];
            if (h != null && h.h == menu) {
                return h;
            }
        }
        return null;
    }

    public final AppCompatDelegateImpl$AutoNightModeManager D(Context context) {
        if (this.Q == null) {
            if (Q.f277d == null) {
                Context applicationContext = context.getApplicationContext();
                Q.f277d = new Q(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.Q = new E(this, Q.f277d);
        }
        return this.Q;
    }

    public H E(int i) {
        H[] hArr = this.F;
        if (hArr == null || hArr.length <= i) {
            H[] hArr2 = new H[i + 1];
            if (hArr != null) {
                System.arraycopy(hArr, 0, hArr2, 0, hArr.length);
            }
            this.F = hArr2;
            hArr = hArr2;
        }
        H h = hArr[i];
        if (h != null) {
            return h;
        }
        H h2 = new H(i);
        hArr[i] = h2;
        return h2;
    }

    public final Window.Callback F() {
        return this.e.getCallback();
    }

    public final void G() {
        A();
        if (this.z && this.h == null) {
            Object obj = this.f258c;
            if (obj instanceof Activity) {
                this.h = new W((Activity) this.f258c, this.A);
            } else if (obj instanceof Dialog) {
                this.h = new W((Dialog) this.f258c);
            }
            AbstractC0004c abstractC0004c = this.h;
            if (abstractC0004c != null) {
                abstractC0004c.g(this.V);
            }
        }
    }

    public final void H(int i) {
        this.T = (1 << i) | this.T;
        if (this.S) {
            return;
        }
        b.e.i.q.z(this.e.getDecorView(), this.U);
        this.S = true;
    }

    public int I(Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() == 0) {
                    return -1;
                }
                return D(context).c();
            }
            if (i != 1 && i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.R == null) {
                    this.R = new C(this, context);
                }
                return this.R.c();
            }
        }
        return i;
    }

    public void J() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x015f, code lost:
    
        if (r3 != null) goto L84;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(b.b.c.H r14, android.view.KeyEvent r15) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.J.K(b.b.c.H, android.view.KeyEvent):void");
    }

    public final boolean L(H h, int i, KeyEvent keyEvent, int i2) {
        b.b.f.m.o oVar;
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((h.k || M(h, keyEvent)) && (oVar = h.h) != null) {
            z = oVar.performShortcut(i, keyEvent, i2);
        }
        if (z && (i2 & 1) == 0 && this.k == null) {
            v(h, true);
        }
        return z;
    }

    public final boolean M(H h, KeyEvent keyEvent) {
        InterfaceC0051h0 interfaceC0051h0;
        Resources.Theme theme;
        InterfaceC0051h0 interfaceC0051h02;
        InterfaceC0051h0 interfaceC0051h03;
        if (this.L) {
            return false;
        }
        if (h.k) {
            return true;
        }
        H h2 = this.G;
        if (h2 != null && h2 != h) {
            v(h2, false);
        }
        Window.Callback F = F();
        if (F != null) {
            h.g = F.onCreatePanelView(h.f253a);
        }
        int i = h.f253a;
        boolean z = i == 0 || i == 108;
        if (z && (interfaceC0051h03 = this.k) != null) {
            interfaceC0051h03.h();
        }
        if (h.g == null) {
            if (h.h == null || h.p) {
                if (h.h == null) {
                    Context context = this.f259d;
                    int i2 = h.f253a;
                    if ((i2 == 0 || i2 == 108) && this.k != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(com.android.systemui.shared.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(com.android.systemui.shared.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(com.android.systemui.shared.R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            b.b.f.d dVar = new b.b.f.d(context, 0);
                            dVar.getTheme().setTo(theme);
                            context = dVar;
                        }
                    }
                    b.b.f.m.o oVar = new b.b.f.m.o(context);
                    oVar.e = this;
                    h.a(oVar);
                    if (h.h == null) {
                        return false;
                    }
                }
                if (z && this.k != null) {
                    if (this.l == null) {
                        this.l = new y(this);
                    }
                    this.k.a(h.h, this.l);
                }
                h.h.y();
                if (!F.onCreatePanelMenu(h.f253a, h.h)) {
                    h.a(null);
                    if (z && (interfaceC0051h0 = this.k) != null) {
                        interfaceC0051h0.a(null, this.l);
                    }
                    return false;
                }
                h.p = false;
            }
            h.h.y();
            Bundle bundle = h.q;
            if (bundle != null) {
                h.h.u(bundle);
                h.q = null;
            }
            if (!F.onPreparePanel(0, h.g, h.h)) {
                if (z && (interfaceC0051h02 = this.k) != null) {
                    interfaceC0051h02.a(null, this.l);
                }
                h.h.x();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            h.n = z2;
            h.h.setQwertyMode(z2);
            h.h.x();
        }
        h.k = true;
        h.l = false;
        this.G = h;
        return true;
    }

    public final boolean N() {
        ViewGroup viewGroup;
        return this.t && (viewGroup = this.u) != null && b.e.i.q.t(viewGroup);
    }

    public final void O() {
        if (this.t) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final int P(b.e.i.D d2, Rect rect) {
        boolean z;
        boolean z2;
        int d3 = d2.d();
        ActionBarContextView actionBarContextView = this.o;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            if (this.o.isShown()) {
                if (this.W == null) {
                    this.W = new Rect();
                    this.X = new Rect();
                }
                Rect rect2 = this.W;
                Rect rect3 = this.X;
                rect2.set(d2.b(), d2.d(), d2.c(), d2.a());
                m1.a(this.u, rect2, rect3);
                int i = rect2.top;
                int i2 = rect2.left;
                int i3 = rect2.right;
                b.e.i.D l = b.e.i.q.l(this.u);
                int b2 = l.b();
                int c2 = l.c();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                if (i <= 0 || this.w != null) {
                    View view = this.w;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != b2 || marginLayoutParams2.rightMargin != c2) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = b2;
                            marginLayoutParams2.rightMargin = c2;
                            this.w.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f259d);
                    this.w = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = b2;
                    layoutParams.rightMargin = c2;
                    this.u.addView(this.w, -1, layoutParams);
                }
                z = this.w != null;
                if (z && this.w.getVisibility() != 0) {
                    View view3 = this.w;
                    view3.setBackgroundColor((view3.getWindowSystemUiVisibility() & QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED) != 0 ? b.e.b.b.c(this.f259d, com.android.systemui.shared.R.color.abc_decor_view_status_guard_light) : b.e.b.b.c(this.f259d, com.android.systemui.shared.R.color.abc_decor_view_status_guard));
                }
                if (!this.B && z) {
                    d3 = 0;
                }
                r4 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                r4 = false;
            }
            if (r4) {
                this.o.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.w;
        if (view4 != null) {
            view4.setVisibility(z ? 0 : 8);
        }
        return d3;
    }

    @Override // b.b.f.m.m
    public boolean a(b.b.f.m.o oVar, MenuItem menuItem) {
        H C;
        Window.Callback F = F();
        if (F == null || this.L || (C = C(oVar.k())) == null) {
            return false;
        }
        return F.onMenuItemSelected(C.f253a, menuItem);
    }

    @Override // b.b.f.m.m
    public void b(b.b.f.m.o oVar) {
        InterfaceC0051h0 interfaceC0051h0 = this.k;
        if (interfaceC0051h0 == null || !interfaceC0051h0.i() || (ViewConfiguration.get(this.f259d).hasPermanentMenuKey() && !this.k.b())) {
            H E = E(0);
            E.o = true;
            v(E, false);
            K(E, null);
            return;
        }
        Window.Callback F = F();
        if (this.k.d()) {
            this.k.f();
            if (this.L) {
                return;
            }
            F.onPanelClosed(108, E(0).h);
            return;
        }
        if (F == null || this.L) {
            return;
        }
        if (this.S && (1 & this.T) != 0) {
            this.e.getDecorView().removeCallbacks(this.U);
            this.U.run();
        }
        H E2 = E(0);
        b.b.f.m.o oVar2 = E2.h;
        if (oVar2 == null || E2.p || !F.onPreparePanel(0, E2.g, oVar2)) {
            return;
        }
        F.onMenuOpened(108, E2.h);
        this.k.g();
    }

    @Override // b.b.c.AbstractC0018q
    public void c(View view, ViewGroup.LayoutParams layoutParams) {
        A();
        ((ViewGroup) this.u.findViewById(R.id.content)).addView(view, layoutParams);
        this.f.f246a.onContentChanged();
    }

    @Override // b.b.c.AbstractC0018q
    public void g() {
        LayoutInflater from = LayoutInflater.from(this.f259d);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            if (from.getFactory2() instanceof J) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public final AppCompatDelegateImpl$AutoNightModeManager getAutoTimeNightModeManager() {
        return D(this.f259d);
    }

    @Override // b.b.c.AbstractC0018q
    public void h() {
        G();
        AbstractC0004c abstractC0004c = this.h;
        H(0);
    }

    @Override // b.b.c.AbstractC0018q
    public void i(Bundle bundle) {
        this.I = true;
        r(false);
        B();
        Object obj = this.f258c;
        if (obj instanceof Activity) {
            String str = null;
            try {
                Activity activity = (Activity) obj;
                try {
                    str = b.e.b.d.k(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                AbstractC0004c abstractC0004c = this.h;
                if (abstractC0004c == null) {
                    this.V = true;
                } else {
                    abstractC0004c.g(true);
                }
            }
            synchronized (AbstractC0018q.f316b) {
                AbstractC0018q.k(this);
                AbstractC0018q.f315a.add(new WeakReference(this));
            }
        }
        this.J = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // b.b.c.AbstractC0018q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            r3 = this;
            b.d.n r0 = b.b.c.J.Z
            java.lang.Object r1 = r3.f258c
            boolean r1 = r1 instanceof android.app.Activity
            if (r1 == 0) goto L13
            java.lang.Object r1 = b.b.c.AbstractC0018q.f316b
            monitor-enter(r1)
            b.b.c.AbstractC0018q.k(r3)     // Catch: java.lang.Throwable -> L10
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L10
            goto L13
        L10:
            r3 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L10
            throw r3
        L13:
            boolean r1 = r3.S
            if (r1 == 0) goto L22
            android.view.Window r1 = r3.e
            android.view.View r1 = r1.getDecorView()
            java.lang.Runnable r2 = r3.U
            r1.removeCallbacks(r2)
        L22:
            r1 = 0
            r3.K = r1
            r1 = 1
            r3.L = r1
            int r1 = r3.M
            r2 = -100
            if (r1 == r2) goto L50
            java.lang.Object r1 = r3.f258c
            boolean r2 = r1 instanceof android.app.Activity
            if (r2 == 0) goto L50
            android.app.Activity r1 = (android.app.Activity) r1
            boolean r1 = r1.isChangingConfigurations()
            if (r1 == 0) goto L50
            java.lang.Object r1 = r3.f258c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.M
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5d
        L50:
            java.lang.Object r1 = r3.f258c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5d:
            b.b.c.c r0 = r3.h
            if (r0 == 0) goto L64
            java.util.Objects.requireNonNull(r0)
        L64:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager r0 = r3.Q
            if (r0 == 0) goto L6b
            r0.a()
        L6b:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager r3 = r3.R
            if (r3 == 0) goto L72
            r3.a()
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.J.j():void");
    }

    @Override // b.b.c.AbstractC0018q
    public boolean l(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.D && i == 108) {
            return false;
        }
        if (this.z && i == 1) {
            this.z = false;
        }
        if (i == 1) {
            O();
            this.D = true;
            return true;
        }
        if (i == 2) {
            O();
            this.x = true;
            return true;
        }
        if (i == 5) {
            O();
            this.y = true;
            return true;
        }
        if (i == 10) {
            O();
            this.B = true;
            return true;
        }
        if (i == 108) {
            O();
            this.z = true;
            return true;
        }
        if (i != 109) {
            return this.e.requestFeature(i);
        }
        O();
        this.A = true;
        return true;
    }

    @Override // b.b.c.AbstractC0018q
    public void m(int i) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f259d).inflate(i, viewGroup);
        this.f.f246a.onContentChanged();
    }

    @Override // b.b.c.AbstractC0018q
    public void n(View view) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f.f246a.onContentChanged();
    }

    @Override // b.b.c.AbstractC0018q
    public void o(View view, ViewGroup.LayoutParams layoutParams) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f.f246a.onContentChanged();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00e6, code lost:
    
        if (r8.equals("Spinner") != false) goto L68;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.J.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // b.b.c.AbstractC0018q
    public final void p(CharSequence charSequence) {
        this.j = charSequence;
        InterfaceC0051h0 interfaceC0051h0 = this.k;
        if (interfaceC0051h0 != null) {
            interfaceC0051h0.c(charSequence);
            return;
        }
        AbstractC0004c abstractC0004c = this.h;
        if (abstractC0004c != null) {
            abstractC0004c.i(charSequence);
            return;
        }
        TextView textView = this.v;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean q() {
        return r(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(boolean r11) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.J.r(boolean):boolean");
    }

    public final void s(Window window) {
        if (this.e != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof B) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        B b2 = new B(this, callback);
        this.f = b2;
        window.setCallback(b2);
        a1 n = a1.n(this.f259d, null, b0);
        Drawable f = n.f(0);
        if (f != null) {
            window.setBackgroundDrawable(f);
        }
        n.f513b.recycle();
        this.e = window;
    }

    public void t(int i, H h, Menu menu) {
        if (menu == null && h != null) {
            menu = h.h;
        }
        if ((h == null || h.m) && !this.L) {
            this.f.f246a.onPanelClosed(i, menu);
        }
    }

    public void u(b.b.f.m.o oVar) {
        if (this.E) {
            return;
        }
        this.E = true;
        this.k.n();
        Window.Callback F = F();
        if (F != null && !this.L) {
            F.onPanelClosed(108, oVar);
        }
        this.E = false;
    }

    public void v(H h, boolean z) {
        ViewGroup viewGroup;
        InterfaceC0051h0 interfaceC0051h0;
        if (z && h.f253a == 0 && (interfaceC0051h0 = this.k) != null && interfaceC0051h0.d()) {
            u(h.h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f259d.getSystemService("window");
        if (windowManager != null && h.m && (viewGroup = h.e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                t(h.f253a, h, null);
            }
        }
        h.k = false;
        h.l = false;
        h.m = false;
        h.f = null;
        h.o = true;
        if (this.G == h) {
            this.G = null;
        }
    }

    public final Configuration w(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = RecentsState.NO_OFFSET;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean x(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.J.x(android.view.KeyEvent):boolean");
    }

    public void y(int i) {
        H E;
        H E2 = E(i);
        if (E2.h != null) {
            Bundle bundle = new Bundle();
            E2.h.v(bundle);
            if (bundle.size() > 0) {
                E2.q = bundle;
            }
            E2.h.y();
            E2.h.clear();
        }
        E2.p = true;
        E2.o = true;
        if ((i != 108 && i != 0) || this.k == null || (E = E(0)) == null) {
            return;
        }
        E.k = false;
        M(E, null);
    }

    public void z() {
        b.e.i.t tVar = this.r;
        if (tVar != null) {
            tVar.b();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
