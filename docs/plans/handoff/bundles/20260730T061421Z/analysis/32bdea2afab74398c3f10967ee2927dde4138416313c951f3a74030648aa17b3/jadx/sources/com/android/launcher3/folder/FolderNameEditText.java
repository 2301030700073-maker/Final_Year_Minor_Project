package com.android.launcher3.folder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.ExtendedEditText;

/* loaded from: classes.dex */
public class FolderNameEditText extends ExtendedEditText {
    public boolean mEnteredCompose;

    public class FolderNameEditTextInputConnection extends InputConnectionWrapper {
        public FolderNameEditTextInputConnection(InputConnection inputConnection, boolean z) {
            super(inputConnection, z);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean setComposingText(CharSequence charSequence, int i) {
            FolderNameEditText.this.mEnteredCompose = true;
            return super.setComposingText(charSequence, i);
        }
    }

    public FolderNameEditText(Context context) {
        super(context);
    }

    public /* synthetic */ void b(CompletionInfo[] completionInfoArr) {
        ((InputMethodManager) getContext().getSystemService(InputMethodManager.class)).displayCompletions(this, completionInfoArr);
    }

    @Override // android.widget.TextView
    public void onCommitCompletion(CompletionInfo completionInfo) {
        setText(completionInfo.getText());
        setSelection(completionInfo.getText().length());
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new FolderNameEditTextInputConnection(super.onCreateInputConnection(editorInfo), true);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public FolderNameEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FolderNameEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
