package androidx.preference;

import android.os.Bundle;
import b.b.c.C0010i;
import b.b.c.C0014m;
import b.l.DialogInterfaceOnClickListenerC0149j;
import java.util.Objects;

/* loaded from: classes.dex */
public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public int i;
    public CharSequence[] j;
    public CharSequence[] k;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void e(boolean z) {
        int i;
        if (!z || (i = this.i) < 0) {
            return;
        }
        String charSequence = this.k[i].toString();
        ListPreference listPreference = (ListPreference) a();
        Objects.requireNonNull(listPreference);
        listPreference.h(charSequence);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void f(C0014m c0014m) {
        CharSequence[] charSequenceArr = this.j;
        int i = this.i;
        DialogInterfaceOnClickListenerC0149j dialogInterfaceOnClickListenerC0149j = new DialogInterfaceOnClickListenerC0149j(this);
        C0010i c0010i = c0014m.f310a;
        c0010i.q = charSequenceArr;
        c0010i.s = dialogInterfaceOnClickListenerC0149j;
        c0010i.z = i;
        c0010i.y = true;
        c0010i.i = null;
        c0010i.j = null;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
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

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.i);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.j);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.k);
    }
}
