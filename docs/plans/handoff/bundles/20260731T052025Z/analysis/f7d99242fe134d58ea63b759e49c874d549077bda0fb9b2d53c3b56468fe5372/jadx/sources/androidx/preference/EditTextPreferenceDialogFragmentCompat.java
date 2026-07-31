package androidx.preference;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.Fragment;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public EditText mEditText;
    public CharSequence mText;
    public final Fragment.AnonymousClass1 mShowSoftInputRunnable = new Fragment.AnonymousClass1(17, this);
    public long mShowRequestTime = -1;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onBindDialogView(View view) {
        View findViewById;
        super.onBindDialogView(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.mEditText = editText;
        if (editText == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Dialog view must contain an EditText with id @android:id/edit");
            return;
        }
        editText.requestFocus();
        this.mEditText.setText(this.mText);
        EditText editText2 = this.mEditText;
        editText2.setSelection(editText2.getText().length());
        if (((EditTextPreference) getPreference()).mOnBindEditTextListener != null) {
            ConnectionPool connectionPool = ((EditTextPreference) getPreference()).mOnBindEditTextListener;
            EditText editText3 = this.mEditText;
            com.takisoft.preferencex.EditTextPreference editTextPreference = (com.takisoft.preferencex.EditTextPreference) connectionPool.delegate;
            SparseArrayCompat sparseArrayCompat = editTextPreference.editTextAttributes;
            if (!editTextPreference.disableMessagePaddingFix) {
                ViewParent parent = editText3.getParent();
                if ((parent instanceof ViewGroup) && (findViewById = ((ViewGroup) parent).findViewById(R.id.message)) != null) {
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams.bottomMargin = 0;
                        findViewById.setLayoutParams(marginLayoutParams);
                    }
                }
            }
            int size = sparseArrayCompat.size();
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArrayCompat.keyAt(i);
                int i2 = ((TypedValue) sparseArrayCompat.valueAt(i)).data;
                switch (keyAt) {
                    case R.attr.maxLines:
                        editText3.setMaxLines(i2);
                        break;
                    case R.attr.lines:
                        editText3.setLines(i2);
                        break;
                    case R.attr.minLines:
                        editText3.setMinLines(i2);
                        break;
                    case R.attr.maxEms:
                        editText3.setMaxEms(i2);
                        break;
                    case R.attr.ems:
                        editText3.setEms(i2);
                        break;
                    case R.attr.minEms:
                        editText3.setMinEms(i2);
                        break;
                    case R.attr.inputType:
                        editText3.setInputType(i2);
                        break;
                    case R.attr.textAllCaps:
                        editText3.setAllCaps(i2 == 1);
                        break;
                }
            }
        }
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
            editTextPreference.callChangeListener(obj);
            editTextPreference.setText(obj);
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
        Fragment.AnonymousClass1 anonymousClass1 = this.mShowSoftInputRunnable;
        editText2.removeCallbacks(anonymousClass1);
        this.mEditText.postDelayed(anonymousClass1, 50L);
    }
}
