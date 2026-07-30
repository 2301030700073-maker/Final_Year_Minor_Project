package b.b.g;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* renamed from: b.b.g.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0049g0 extends ToggleButton {

    /* renamed from: a, reason: collision with root package name */
    public final C0081x f538a;

    /* renamed from: b, reason: collision with root package name */
    public final C0037a0 f539b;

    public C0049g0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        V0.a(this, getContext());
        C0081x c0081x = new C0081x(this);
        this.f538a = c0081x;
        c0081x.b(attributeSet, R.attr.buttonStyleToggle);
        C0037a0 c0037a0 = new C0037a0(this);
        this.f539b = c0037a0;
        c0037a0.d(attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f538a;
        if (c0081x != null) {
            c0081x.a();
        }
        C0037a0 c0037a0 = this.f539b;
        if (c0037a0 != null) {
            c0037a0.b();
        }
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f538a;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f538a;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }
}
