package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/* renamed from: b.b.g.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0081x {

    /* renamed from: a, reason: collision with root package name */
    public final View f592a;

    /* renamed from: d, reason: collision with root package name */
    public Y0 f595d;
    public Y0 e;
    public Y0 f;

    /* renamed from: c, reason: collision with root package name */
    public int f594c = -1;

    /* renamed from: b, reason: collision with root package name */
    public final D f593b = D.a();

    public C0081x(View view) {
        this.f592a = view;
    }

    public void a() {
        Drawable background = this.f592a.getBackground();
        if (background != null) {
            boolean z = true;
            if (this.f595d != null) {
                if (this.f == null) {
                    this.f = new Y0();
                }
                Y0 y0 = this.f;
                y0.f497a = null;
                y0.f500d = false;
                y0.f498b = null;
                y0.f499c = false;
                ColorStateList e = b.e.i.q.e(this.f592a);
                if (e != null) {
                    y0.f500d = true;
                    y0.f497a = e;
                }
                PorterDuff.Mode backgroundTintMode = this.f592a.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    y0.f499c = true;
                    y0.f498b = backgroundTintMode;
                }
                if (y0.f500d || y0.f499c) {
                    D.e(background, y0, this.f592a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            Y0 y02 = this.e;
            if (y02 != null) {
                D.e(background, y02, this.f592a.getDrawableState());
                return;
            }
            Y0 y03 = this.f595d;
            if (y03 != null) {
                D.e(background, y03, this.f592a.getDrawableState());
            }
        }
    }

    public void b(AttributeSet attributeSet, int i) {
        int[] iArr = b.b.b.A;
        a1 o = a1.o(this.f592a.getContext(), attributeSet, iArr, i, 0);
        View view = this.f592a;
        b.e.i.q.C(view, view.getContext(), iArr, attributeSet, o.f513b, i, 0);
        try {
            if (o.m(0)) {
                this.f594c = o.j(0, -1);
                ColorStateList c2 = this.f593b.c(this.f592a.getContext(), this.f594c);
                if (c2 != null) {
                    e(c2);
                }
            }
            if (o.m(1)) {
                this.f592a.setBackgroundTintList(o.b(1));
            }
            if (o.m(2)) {
                this.f592a.setBackgroundTintMode(C0055j0.d(o.h(2, -1), null));
            }
            o.f513b.recycle();
        } catch (Throwable th) {
            o.f513b.recycle();
            throw th;
        }
    }

    public void c() {
        this.f594c = -1;
        e(null);
        a();
    }

    public void d(int i) {
        this.f594c = i;
        D d2 = this.f593b;
        e(d2 != null ? d2.c(this.f592a.getContext(), i) : null);
        a();
    }

    public void e(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f595d == null) {
                this.f595d = new Y0();
            }
            Y0 y0 = this.f595d;
            y0.f497a = colorStateList;
            y0.f500d = true;
        } else {
            this.f595d = null;
        }
        a();
    }
}
