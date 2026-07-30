package b.b.f.m;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class A {

    /* renamed from: a, reason: collision with root package name */
    public final Context f360a;

    /* renamed from: b, reason: collision with root package name */
    public final o f361b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f362c;

    /* renamed from: d, reason: collision with root package name */
    public final int f363d;
    public final int e;
    public View f;
    public boolean h;
    public B i;
    public y j;
    public PopupWindow.OnDismissListener k;
    public int g = 8388611;
    public final PopupWindow.OnDismissListener l = new z(this);

    public A(Context context, o oVar, View view, boolean z, int i, int i2) {
        this.f360a = context;
        this.f361b = oVar;
        this.f = view;
        this.f362c = z;
        this.f363d = i;
        this.e = i2;
    }

    public y a() {
        if (this.j == null) {
            Display defaultDisplay = ((WindowManager) this.f360a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            y viewOnKeyListenerC0032i = Math.min(point.x, point.y) >= this.f360a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width) ? new ViewOnKeyListenerC0032i(this.f360a, this.f, this.f363d, this.e, this.f362c) : new J(this.f360a, this.f361b, this.f, this.f363d, this.e, this.f362c);
            viewOnKeyListenerC0032i.l(this.f361b);
            viewOnKeyListenerC0032i.s(this.l);
            viewOnKeyListenerC0032i.o(this.f);
            viewOnKeyListenerC0032i.h(this.i);
            viewOnKeyListenerC0032i.p(this.h);
            viewOnKeyListenerC0032i.q(this.g);
            this.j = viewOnKeyListenerC0032i;
        }
        return this.j;
    }

    public boolean b() {
        y yVar = this.j;
        return yVar != null && yVar.b();
    }

    public void c() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void d(B b2) {
        this.i = b2;
        y yVar = this.j;
        if (yVar != null) {
            yVar.h(b2);
        }
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        y a2 = a();
        a2.t(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.g, b.e.i.q.i(this.f)) & 7) == 5) {
                i -= this.f.getWidth();
            }
            a2.r(i);
            a2.u(i2);
            int i3 = (int) ((this.f360a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a2.f421a = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        a2.f();
    }

    public boolean f() {
        if (b()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        e(0, 0, false, false);
        return true;
    }
}
