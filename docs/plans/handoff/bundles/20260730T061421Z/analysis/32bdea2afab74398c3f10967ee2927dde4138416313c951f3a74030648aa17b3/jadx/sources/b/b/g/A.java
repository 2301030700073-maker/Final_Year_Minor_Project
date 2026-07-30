package b.b.g;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* loaded from: classes.dex */
public class A extends CheckedTextView {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f423b = {R.attr.checkMark};

    /* renamed from: a, reason: collision with root package name */
    public final C0037a0 f424a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        X0.a(context);
        V0.a(this, getContext());
        C0037a0 c0037a0 = new C0037a0(this);
        this.f424a = c0037a0;
        c0037a0.d(attributeSet, R.attr.checkedTextViewStyle);
        this.f424a.b();
        a1 o = a1.o(getContext(), attributeSet, f423b, R.attr.checkedTextViewStyle, 0);
        setCheckMarkDrawable(o.e(0));
        o.f513b.recycle();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0037a0 c0037a0 = this.f424a;
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

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(b.b.a.a(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0037a0 c0037a0 = this.f424a;
        if (c0037a0 != null) {
            c0037a0.e(context, i);
        }
    }
}
