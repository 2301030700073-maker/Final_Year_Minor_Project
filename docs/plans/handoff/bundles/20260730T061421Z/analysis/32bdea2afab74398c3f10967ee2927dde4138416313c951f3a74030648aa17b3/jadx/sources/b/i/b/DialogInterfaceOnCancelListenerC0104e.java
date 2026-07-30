package b.i.b;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import androidx.fragment.app.DialogFragment;

/* renamed from: b.i.b.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC0104e implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogFragment f890a;

    public DialogInterfaceOnCancelListenerC0104e(DialogFragment dialogFragment) {
        this.f890a = dialogFragment;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    @SuppressLint({"SyntheticAccessor"})
    public void onCancel(DialogInterface dialogInterface) {
        DialogFragment dialogFragment = this.f890a;
        Dialog dialog = dialogFragment.mDialog;
        if (dialog != null) {
            dialogFragment.onCancel(dialog);
        }
    }
}
