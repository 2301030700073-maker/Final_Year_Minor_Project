package b.i.b;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import androidx.fragment.app.DialogFragment;

/* renamed from: b.i.b.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnDismissListenerC0106f implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogFragment f892a;

    public DialogInterfaceOnDismissListenerC0106f(DialogFragment dialogFragment) {
        this.f892a = dialogFragment;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    @SuppressLint({"SyntheticAccessor"})
    public void onDismiss(DialogInterface dialogInterface) {
        DialogFragment dialogFragment = this.f892a;
        Dialog dialog = dialogFragment.mDialog;
        if (dialog != null) {
            dialogFragment.onDismiss(dialog);
        }
    }
}
