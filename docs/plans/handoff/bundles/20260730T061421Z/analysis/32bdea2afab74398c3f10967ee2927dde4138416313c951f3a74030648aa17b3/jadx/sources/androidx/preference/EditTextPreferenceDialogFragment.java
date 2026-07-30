package androidx.preference;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragment extends PreferenceDialogFragment {
    public EditText i;
    public CharSequence j;

    @Deprecated
    public EditTextPreferenceDialogFragment() {
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public boolean b() {
        return true;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void c(View view) {
        super.c(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.i = editText;
        editText.requestFocus();
        EditText editText2 = this.i;
        if (editText2 == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText2.setText(this.j);
        EditText editText3 = this.i;
        editText3.setSelection(editText3.getText().length());
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void d(boolean z) {
        if (z) {
            String obj = this.i.getText().toString();
            Objects.requireNonNull(f());
            f().e(obj);
        }
    }

    public final EditTextPreference f() {
        return (EditTextPreference) a();
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.j = f().g;
        } else {
            this.j = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.j);
    }
}
