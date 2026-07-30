package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import b.l.DialogInterfaceOnClickListenerC0148i;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public class ListPreferenceDialogFragment extends PreferenceDialogFragment {
    public int i;
    public CharSequence[] j;
    public CharSequence[] k;

    @Deprecated
    public ListPreferenceDialogFragment() {
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void d(boolean z) {
        int i;
        ListPreference listPreference = (ListPreference) a();
        if (!z || (i = this.i) < 0) {
            return;
        }
        String charSequence = this.k[i].toString();
        Objects.requireNonNull(listPreference);
        listPreference.h(charSequence);
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void e(AlertDialog.Builder builder) {
        builder.setSingleChoiceItems(this.j, this.i, new DialogInterfaceOnClickListenerC0148i(this));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.i = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.j = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.k = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) a();
        if (listPreference.g == null || listPreference.h == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.i = listPreference.e(listPreference.i);
        this.j = listPreference.g;
        this.k = listPreference.h;
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.i);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.j);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.k);
    }
}
