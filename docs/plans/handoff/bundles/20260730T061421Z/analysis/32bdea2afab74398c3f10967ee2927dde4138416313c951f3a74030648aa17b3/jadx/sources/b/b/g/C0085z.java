package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.android.systemui.shared.R;

/* renamed from: b.b.g.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0085z extends CheckBox {

    /* renamed from: a, reason: collision with root package name */
    public final B f603a;

    /* renamed from: b, reason: collision with root package name */
    public final C0081x f604b;

    /* renamed from: c, reason: collision with root package name */
    public final C0037a0 f605c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0085z(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkboxStyle);
        X0.a(context);
        V0.a(this, getContext());
        B b2 = new B(this);
        this.f603a = b2;
        b2.b(attributeSet, R.attr.checkboxStyle);
        C0081x c0081x = new C0081x(this);
        this.f604b = c0081x;
        c0081x.b(attributeSet, R.attr.checkboxStyle);
        C0037a0 c0037a0 = new C0037a0(this);
        this.f605c = c0037a0;
        c0037a0.d(attributeSet, R.attr.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f604b;
        if (c0081x != null) {
            c0081x.a();
        }
        C0037a0 c0037a0 = this.f605c;
        if (c0037a0 != null) {
            c0037a0.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        B b2 = this.f603a;
        return compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f604b;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f604b;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        B b2 = this.f603a;
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
