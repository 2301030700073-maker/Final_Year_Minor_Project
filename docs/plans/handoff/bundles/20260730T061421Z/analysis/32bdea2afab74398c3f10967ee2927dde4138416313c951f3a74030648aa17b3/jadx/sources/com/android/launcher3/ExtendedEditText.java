package com.android.launcher3;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.util.UiThreadHelper;

/* loaded from: classes.dex */
public class ExtendedEditText extends EditText {
    public OnBackKeyListener mBackKeyListener;
    public boolean mForceDisableSuggestions;
    public boolean mShowImeAfterFirstLayout;

    public interface OnBackKeyListener {
        boolean onBackKey();
    }

    public ExtendedEditText(Context context) {
        super(context);
        this.mForceDisableSuggestions = false;
    }

    public /* synthetic */ void a() {
        showSoftInput();
        this.mShowImeAfterFirstLayout = false;
    }

    public void dispatchBackKey() {
        hideKeyboard();
        OnBackKeyListener onBackKeyListener = this.mBackKeyListener;
        if (onBackKeyListener != null) {
            onBackKeyListener.onBackKey();
        }
    }

    public void hideKeyboard() {
        Context context = getContext();
        Message.obtain((Handler) UiThreadHelper.HANDLER.b(context), 1, getWindowToken()).sendToTarget();
    }

    @Override // android.widget.TextView
    public boolean isSuggestionsEnabled() {
        return !this.mForceDisableSuggestions && super.isSuggestionsEnabled();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 1) {
            return super.onKeyPreIme(i, keyEvent);
        }
        OnBackKeyListener onBackKeyListener = this.mBackKeyListener;
        if (onBackKeyListener != null) {
            return onBackKeyListener.onBackKey();
        }
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mShowImeAfterFirstLayout) {
            post(new Runnable() { // from class: c.a.a.p
                @Override // java.lang.Runnable
                public final void run() {
                    ExtendedEditText.this.a();
                }
            });
        }
    }

    public void reset() {
        View focusSearch;
        if (!TextUtils.isEmpty(getText())) {
            setText("");
        }
        if (isFocused() && (focusSearch = focusSearch(130)) != null) {
            focusSearch.requestFocus();
        }
        hideKeyboard();
    }

    public void showKeyboard() {
        this.mShowImeAfterFirstLayout = !showSoftInput();
    }

    public final boolean showSoftInput() {
        return requestFocus() && ((InputMethodManager) getContext().getSystemService(InputMethodManager.class)).showSoftInput(this, 1);
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mForceDisableSuggestions = false;
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mForceDisableSuggestions = false;
    }
}
