package androidx.preference;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import java.util.Objects;

/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public EditText i;
    public CharSequence j;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public boolean b() {
        return true;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void c(View view) {
        super.c(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.i = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.i.setText(this.j);
        EditText editText2 = this.i;
        editText2.setSelection(editText2.getText().length());
        Objects.requireNonNull(g());
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void e(boolean z) {
        if (z) {
            String obj = this.i.getText().toString();
            EditTextPreference g = g();
            Objects.requireNonNull(g);
            g.e(obj);
        }
    }

    public final EditTextPreference g() {
        return (EditTextPreference) a();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.j = g().g;
        } else {
            this.j = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.j);
    }
}
