package b.l;

import android.content.DialogInterface;
import androidx.preference.ListPreferenceDialogFragmentCompat;

/* renamed from: b.l.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnClickListenerC0149j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListPreferenceDialogFragmentCompat f1063a;

    public DialogInterfaceOnClickListenerC0149j(ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat) {
        this.f1063a = listPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = this.f1063a;
        listPreferenceDialogFragmentCompat.i = i;
        listPreferenceDialogFragmentCompat.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
