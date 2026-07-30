package androidx.preference;

import android.os.Bundle;
import b.b.c.C0010i;
import b.b.c.C0014m;
import b.l.DialogInterfaceOnMultiChoiceClickListenerC0152m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class MultiSelectListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public Set i = new HashSet();
    public boolean j;
    public CharSequence[] k;
    public CharSequence[] l;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void e(boolean z) {
        if (z && this.j) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) a();
            Objects.requireNonNull(multiSelectListPreference);
            multiSelectListPreference.e(this.i);
        }
        this.j = false;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void f(C0014m c0014m) {
        int length = this.l.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.i.contains(this.l[i].toString());
        }
        CharSequence[] charSequenceArr = this.k;
        DialogInterfaceOnMultiChoiceClickListenerC0152m dialogInterfaceOnMultiChoiceClickListenerC0152m = new DialogInterfaceOnMultiChoiceClickListenerC0152m(this);
        C0010i c0010i = c0014m.f310a;
        c0010i.q = charSequenceArr;
        c0010i.A = dialogInterfaceOnMultiChoiceClickListenerC0152m;
        c0010i.w = zArr;
        c0010i.x = true;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.i.clear();
            this.i.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.j = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.k = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.l = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
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

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.i));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.j);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.k);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.l);
    }
}
