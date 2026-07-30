package b.b.g;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* loaded from: classes.dex */
public class I extends MultiAutoCompleteTextView {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f454c = {R.attr.popupBackground};

    /* renamed from: a, reason: collision with root package name */
    public final C0081x f455a;

    /* renamed from: b, reason: collision with root package name */
    public final C0037a0 f456b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.android.systemui.shared.R.attr.autoCompleteTextViewStyle);
        X0.a(context);
        V0.a(this, getContext());
        a1 o = a1.o(getContext(), attributeSet, f454c, com.android.systemui.shared.R.attr.autoCompleteTextViewStyle, 0);
        if (o.m(0)) {
            setDropDownBackgroundDrawable(o.e(0));
        }
        o.f513b.recycle();
        C0081x c0081x = new C0081x(this);
        this.f455a = c0081x;
        c0081x.b(attributeSet, com.android.systemui.shared.R.attr.autoCompleteTextViewStyle);
        C0037a0 c0037a0 = new C0037a0(this);
        this.f456b = c0037a0;
        c0037a0.d(attributeSet, com.android.systemui.shared.R.attr.autoCompleteTextViewStyle);
        this.f456b.b();
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f455a;
        if (c0081x != null) {
            c0081x.a();
        }
        C0037a0 c0037a0 = this.f456b;
        if (c0037a0 != null) {
            c0037a0.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        b.b.a.b(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f455a;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f455a;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(b.b.a.a(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0037a0 c0037a0 = this.f456b;
        if (c0037a0 != null) {
            c0037a0.e(context, i);
        }
    }
}
