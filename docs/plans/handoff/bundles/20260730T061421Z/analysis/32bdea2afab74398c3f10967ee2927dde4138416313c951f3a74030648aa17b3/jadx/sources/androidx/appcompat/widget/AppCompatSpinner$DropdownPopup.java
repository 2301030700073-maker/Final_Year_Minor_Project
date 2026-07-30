package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import b.b.g.C0061m0;
import b.b.g.C0084y0;
import b.b.g.T;
import b.b.g.U;
import b.b.g.V;
import b.b.g.X;
import b.b.g.m1;

/* loaded from: classes.dex */
public class AppCompatSpinner$DropdownPopup extends C0084y0 implements AppCompatSpinner$SpinnerPopup {
    public CharSequence C;
    public ListAdapter D;
    public final Rect E;
    public int F;
    public final /* synthetic */ X G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatSpinner$DropdownPopup(X x, Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.G = x;
        this.E = new Rect();
        this.r = x;
        s(true);
        this.p = 0;
        this.s = new T(this, x);
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void d(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        boolean b2 = b();
        u();
        this.B.setInputMethodMode(2);
        super.f();
        C0061m0 c0061m0 = this.f601c;
        c0061m0.setChoiceMode(1);
        c0061m0.setTextDirection(i);
        c0061m0.setTextAlignment(i2);
        int selectedItemPosition = this.G.getSelectedItemPosition();
        C0061m0 c0061m02 = this.f601c;
        if (b() && c0061m02 != null) {
            c0061m02.i = false;
            c0061m02.setSelection(selectedItemPosition);
            if (c0061m02.getChoiceMode() != 0) {
                c0061m02.setItemChecked(selectedItemPosition, true);
            }
        }
        if (b2 || (viewTreeObserver = this.G.getViewTreeObserver()) == null) {
            return;
        }
        U u = new U(this);
        viewTreeObserver.addOnGlobalLayoutListener(u);
        this.B.setOnDismissListener(new V(this, u));
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public CharSequence j() {
        return this.C;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void l(CharSequence charSequence) {
        this.C = charSequence;
    }

    @Override // b.b.g.C0084y0, androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void o(ListAdapter listAdapter) {
        super.o(listAdapter);
        this.D = listAdapter;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void p(int i) {
        this.F = i;
    }

    public void u() {
        Drawable i = i();
        int i2 = 0;
        if (i != null) {
            i.getPadding(this.G.h);
            i2 = m1.b(this.G) ? this.G.h.right : -this.G.h.left;
        } else {
            Rect rect = this.G.h;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = this.G.getPaddingLeft();
        int paddingRight = this.G.getPaddingRight();
        int width = this.G.getWidth();
        X x = this.G;
        int i3 = x.g;
        if (i3 == -2) {
            int a2 = x.a((SpinnerAdapter) this.D, i());
            int i4 = this.G.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.G.h;
            int i5 = (i4 - rect2.left) - rect2.right;
            if (a2 > i5) {
                a2 = i5;
            }
            r(Math.max(a2, (width - paddingLeft) - paddingRight));
        } else if (i3 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i3);
        }
        this.f = m1.b(this.G) ? (((width - paddingRight) - this.e) - this.F) + i2 : paddingLeft + this.F + i2;
    }
}
