package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class E extends EditText {

    /* renamed from: a, reason: collision with root package name */
    public final C0081x f436a;

    /* renamed from: b, reason: collision with root package name */
    public final C0037a0 f437b;

    /* renamed from: c, reason: collision with root package name */
    public final Y f438c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        X0.a(context);
        V0.a(this, getContext());
        C0081x c0081x = new C0081x(this);
        this.f436a = c0081x;
        c0081x.b(attributeSet, R.attr.editTextStyle);
        C0037a0 c0037a0 = new C0037a0(this);
        this.f437b = c0037a0;
        c0037a0.d(attributeSet, R.attr.editTextStyle);
        this.f437b.b();
        this.f438c = new Y(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f436a;
        if (c0081x != null) {
            c0081x.a();
        }
        C0037a0 c0037a0 = this.f437b;
        if (c0037a0 != null) {
            c0037a0.b();
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        return super.getTextClassifier();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        b.b.a.b(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f436a;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f436a;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0037a0 c0037a0 = this.f437b;
        if (c0037a0 != null) {
            c0037a0.e(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        super.setTextClassifier(textClassifier);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public CharSequence getText() {
        return super.getText();
    }
}
