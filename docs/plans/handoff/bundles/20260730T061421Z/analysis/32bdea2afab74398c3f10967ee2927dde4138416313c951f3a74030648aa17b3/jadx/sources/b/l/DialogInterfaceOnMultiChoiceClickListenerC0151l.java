package b.l;

import android.content.DialogInterface;
import androidx.preference.MultiSelectListPreferenceDialogFragment;

/* renamed from: b.l.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnMultiChoiceClickListenerC0151l implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiSelectListPreferenceDialogFragment f1064a;

    public DialogInterfaceOnMultiChoiceClickListenerC0151l(MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment) {
        this.f1064a = multiSelectListPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        if (z) {
            MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = this.f1064a;
            multiSelectListPreferenceDialogFragment.j |= multiSelectListPreferenceDialogFragment.i.add(multiSelectListPreferenceDialogFragment.l[i].toString());
        } else {
            MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = this.f1064a;
            multiSelectListPreferenceDialogFragment2.j |= multiSelectListPreferenceDialogFragment2.i.remove(multiSelectListPreferenceDialogFragment2.l[i].toString());
        }
    }
}
