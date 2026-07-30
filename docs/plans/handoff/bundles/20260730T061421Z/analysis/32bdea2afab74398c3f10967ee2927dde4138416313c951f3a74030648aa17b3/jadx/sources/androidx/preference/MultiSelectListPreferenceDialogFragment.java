package androidx.preference;

import android.app.AlertDialog;
import android.os.Bundle;
import b.l.DialogInterfaceOnMultiChoiceClickListenerC0151l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public class MultiSelectListPreferenceDialogFragment extends PreferenceDialogFragment {
    public Set i = new HashSet();
    public boolean j;
    public CharSequence[] k;
    public CharSequence[] l;

    @Deprecated
    public MultiSelectListPreferenceDialogFragment() {
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void d(boolean z) {
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) a();
        if (z && this.j) {
            Set set = this.i;
            Objects.requireNonNull(multiSelectListPreference);
            multiSelectListPreference.e(set);
        }
        this.j = false;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void e(AlertDialog.Builder builder) {
        int length = this.l.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.i.contains(this.l[i].toString());
        }
        builder.setMultiChoiceItems(this.k, zArr, new DialogInterfaceOnMultiChoiceClickListenerC0151l(this));
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.i.clear();
            this.i.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragment.values"));
            this.j = bundle.getBoolean("MultiSelectListPreferenceDialogFragment.changed", false);
            this.k = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries");
            this.l = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) a();
        if (multiSelectListPreference.g == null || multiSelectListPreference.h == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.i.clear();
        this.i.addAll(multiSelectListPreference.i);
        this.j = false;
        this.k = multiSelectListPreference.g;
        this.l = multiSelectListPreference.h;
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragment.values", new ArrayList<>(this.i));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragment.changed", this.j);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries", this.k);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues", this.l);
    }
}
