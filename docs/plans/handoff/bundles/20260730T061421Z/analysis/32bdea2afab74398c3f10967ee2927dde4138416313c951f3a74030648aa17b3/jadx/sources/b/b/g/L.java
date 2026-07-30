package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class L extends RadioButton {

    /* renamed from: a, reason: collision with root package name */
    public final B f463a;

    /* renamed from: b, reason: collision with root package name */
    public final C0081x f464b;

    /* renamed from: c, reason: collision with root package name */
    public final C0037a0 f465c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        X0.a(context);
        V0.a(this, getContext());
        B b2 = new B(this);
        this.f463a = b2;
        b2.b(attributeSet, R.attr.radioButtonStyle);
        C0081x c0081x = new C0081x(this);
        this.f464b = c0081x;
        c0081x.b(attributeSet, R.attr.radioButtonStyle);
        C0037a0 c0037a0 = new C0037a0(this);
        this.f465c = c0037a0;
        c0037a0.d(attributeSet, R.attr.radioButtonStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f464b;
        if (c0081x != null) {
            c0081x.a();
        }
        C0037a0 c0037a0 = this.f465c;
        if (c0037a0 != null) {
            c0037a0.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        B b2 = this.f463a;
        return compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f464b;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f464b;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        B b2 = this.f463a;
        if (b2 != null) {
            if (b2.f) {
                b2.f = false;
            } else {
                b2.f = true;
                b2.a();
            }
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(b.b.a.a(getContext(), i));
    }
}
