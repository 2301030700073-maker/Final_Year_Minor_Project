package b.l;

import android.content.DialogInterface;
import androidx.preference.MultiSelectListPreferenceDialogFragmentCompat;

/* renamed from: b.l.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnMultiChoiceClickListenerC0152m implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiSelectListPreferenceDialogFragmentCompat f1065a;

    public DialogInterfaceOnMultiChoiceClickListenerC0152m(MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat) {
        this.f1065a = multiSelectListPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        if (z) {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = this.f1065a;
            multiSelectListPreferenceDialogFragmentCompat.j |= multiSelectListPreferenceDialogFragmentCompat.i.add(multiSelectListPreferenceDialogFragmentCompat.l[i].toString());
        } else {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat2 = this.f1065a;
            multiSelectListPreferenceDialogFragmentCompat2.j |= multiSelectListPreferenceDialogFragmentCompat2.i.remove(multiSelectListPreferenceDialogFragmentCompat2.l[i].toString());
        }
    }
}
