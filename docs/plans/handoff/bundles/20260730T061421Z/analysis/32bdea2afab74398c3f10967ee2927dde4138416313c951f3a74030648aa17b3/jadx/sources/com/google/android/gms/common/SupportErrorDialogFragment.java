package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import b.i.b.X;

/* loaded from: classes.dex */
public class SupportErrorDialogFragment extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public Dialog f3368a = null;

    /* renamed from: b, reason: collision with root package name */
    public DialogInterface.OnCancelListener f3369b = null;

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f3369b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f3368a == null) {
            this.mShowsDialog = false;
        }
        return this.f3368a;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(X x, String str) {
        super.show(x, str);
    }
}
