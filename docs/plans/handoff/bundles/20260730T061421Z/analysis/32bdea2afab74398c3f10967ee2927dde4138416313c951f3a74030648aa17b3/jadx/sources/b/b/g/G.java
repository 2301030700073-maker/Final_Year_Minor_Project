package b.b.g;

import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class G {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f449a;

    /* renamed from: b, reason: collision with root package name */
    public Y0 f450b;

    public G(ImageView imageView) {
        this.f449a = imageView;
    }

    public void a() {
        Y0 y0;
        Drawable drawable = this.f449a.getDrawable();
        if (drawable != null) {
            C0055j0.b(drawable);
        }
        if (drawable == null || (y0 = this.f450b) == null) {
            return;
        }
        D.e(drawable, y0, this.f449a.getDrawableState());
    }

    public void b(AttributeSet attributeSet, int i) {
        int j;
        int[] iArr = b.b.b.f;
        a1 o = a1.o(this.f449a.getContext(), attributeSet, iArr, i, 0);
        ImageView imageView = this.f449a;
        b.e.i.q.C(imageView, imageView.getContext(), iArr, attributeSet, o.f513b, i, 0);
        try {
            Drawable drawable = this.f449a.getDrawable();
            if (drawable == null && (j = o.j(1, -1)) != -1 && (drawable = b.b.a.a(this.f449a.getContext(), j)) != null) {
                this.f449a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                C0055j0.b(drawable);
            }
            if (o.m(2)) {
                this.f449a.setImageTintList(o.b(2));
            }
            if (o.m(3)) {
                this.f449a.setImageTintMode(C0055j0.d(o.h(3, -1), null));
            }
            o.f513b.recycle();
        } catch (Throwable th) {
            o.f513b.recycle();
            throw th;
        }
    }

    public void c(int i) {
        if (i != 0) {
            Drawable a2 = b.b.a.a(this.f449a.getContext(), i);
            if (a2 != null) {
                C0055j0.b(a2);
            }
            this.f449a.setImageDrawable(a2);
        } else {
            this.f449a.setImageDrawable(null);
        }
        a();
    }
}
