package com.jakewharton.rxbinding4.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextViewTextChangesObservable$Listener extends MainThreadDisposable implements TextWatcher {
    public final Observer observer;
    public final EditText view;

    public TextViewTextChangesObservable$Listener(EditText editText, Observer observer) {
        this.view = editText;
        this.observer = observer;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        editable.getClass();
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        charSequence.getClass();
    }

    @Override // io.reactivex.rxjava3.android.MainThreadDisposable
    public final void onDispose() {
        this.view.removeTextChangedListener(this);
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        charSequence.getClass();
        if (this.unsubscribed.get()) {
            return;
        }
        this.observer.onNext(charSequence);
    }
}
