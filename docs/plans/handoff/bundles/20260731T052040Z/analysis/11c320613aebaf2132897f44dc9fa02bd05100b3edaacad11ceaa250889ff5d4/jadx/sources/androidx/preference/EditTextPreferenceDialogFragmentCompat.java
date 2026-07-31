package androidx.preference;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.lifecycle.LiveData;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public EditText mEditText;
    public CharSequence mText;
    public final LiveData.AnonymousClass1 mShowSoftInputRunnable = new LiveData.AnonymousClass1(this, 11);
    public long mShowRequestTime = -1;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onBindDialogView(View view) {
        super.onBindDialogView(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.mEditText = editText;
        if (editText == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Dialog view must contain an EditText with id @android:id/edit");
            return;
        }
        editText.requestFocus();
        this.mEditText.setText(this.mText);
        EditText editText2 = this.mEditText;
        editText2.setSelection(editText2.getText().length());
        ((EditTextPreference) getPreference()).getClass();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mText = ((EditTextPreference) getPreference()).mText;
        } else {
            this.mText = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        if (z) {
            String obj = this.mEditText.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) getPreference();
            if (editTextPreference.callChangeListener(obj)) {
                editTextPreference.setText(obj);
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.mText);
    }

    public final void scheduleShowSoftInputInner() {
        long j = this.mShowRequestTime;
        if (j == -1 || j + 1000 <= SystemClock.currentThreadTimeMillis()) {
            return;
        }
        EditText editText = this.mEditText;
        if (editText == null || !editText.isFocused()) {
            this.mShowRequestTime = -1L;
            return;
        }
        if (((InputMethodManager) this.mEditText.getContext().getSystemService("input_method")).showSoftInput(this.mEditText, 0)) {
            this.mShowRequestTime = -1L;
            return;
        }
        EditText editText2 = this.mEditText;
        LiveData.AnonymousClass1 anonymousClass1 = this.mShowSoftInputRunnable;
        editText2.removeCallbacks(anonymousClass1);
        this.mEditText.postDelayed(anonymousClass1, 50L);
    }
}
