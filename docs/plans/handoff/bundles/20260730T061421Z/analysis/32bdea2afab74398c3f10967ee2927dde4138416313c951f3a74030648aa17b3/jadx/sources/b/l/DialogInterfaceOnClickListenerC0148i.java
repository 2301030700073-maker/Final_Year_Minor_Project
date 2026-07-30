package b.l;

import android.content.DialogInterface;
import androidx.preference.ListPreferenceDialogFragment;

/* renamed from: b.l.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnClickListenerC0148i implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListPreferenceDialogFragment f1062a;

    public DialogInterfaceOnClickListenerC0148i(ListPreferenceDialogFragment listPreferenceDialogFragment) {
        this.f1062a = listPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ListPreferenceDialogFragment listPreferenceDialogFragment = this.f1062a;
        listPreferenceDialogFragment.i = i;
        listPreferenceDialogFragment.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
