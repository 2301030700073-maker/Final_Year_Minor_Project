package com.fsck.k9.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.DialogFragment;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ConfirmationDialogFragment extends DialogFragment implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
    public ConfirmationDialogFragmentListener mListener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ConfirmationDialogFragmentListener {
        void dialogCancelled(int i);

        void doNegativeClick(int i);

        void doPositiveClick(int i);
    }

    public static ConfirmationDialogFragment newInstance(int i, String str, String str2, String str3, String str4) {
        ConfirmationDialogFragment confirmationDialogFragment = new ConfirmationDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("dialog_id", i);
        bundle.putString("title", str);
        bundle.putString("message", str2);
        bundle.putString("confirm", str3);
        bundle.putString("cancel", str4);
        confirmationDialogFragment.setArguments(bundle);
        return confirmationDialogFragment;
    }

    public final ConfirmationDialogFragmentListener getListener() {
        ConfirmationDialogFragmentListener confirmationDialogFragmentListener = this.mListener;
        if (confirmationDialogFragmentListener != null) {
            return confirmationDialogFragmentListener;
        }
        try {
            return (ConfirmationDialogFragmentListener) getTargetFragment(true);
        } catch (ClassCastException unused) {
            throw new ClassCastException(getTargetFragment(true).getClass() + " must implement ConfirmationDialogFragmentListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Activity activity) {
        this.mCalled = true;
        try {
            this.mListener = (ConfirmationDialogFragmentListener) activity;
        } catch (ClassCastException unused) {
            Log.d("%s did not implement ConfirmationDialogFragmentListener", activity);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        getListener().dialogCancelled(this.mArguments.getInt("dialog_id"));
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -3) {
            getListener().doNegativeClick(this.mArguments.getInt("dialog_id"));
        } else if (i == -2) {
            getListener().doNegativeClick(this.mArguments.getInt("dialog_id"));
        } else {
            if (i != -1) {
                return;
            }
            getListener().doPositiveClick(this.mArguments.getInt("dialog_id"));
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Bundle bundle2 = this.mArguments;
        String string = bundle2.getString("title");
        String string2 = bundle2.getString("message");
        String string3 = bundle2.getString("confirm");
        String string4 = bundle2.getString("cancel");
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(getActivity());
        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
        alertParams.mTitle = string;
        alertParams.mMessage = string2;
        if (string3 != null && string4 != null) {
            materialAlertDialogBuilder.setPositiveButton(string3, this);
            alertParams.mNegativeButtonText = string4;
            alertParams.mNegativeButtonListener = this;
        } else {
            if (string4 == null) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Set at least cancelText!");
                return null;
            }
            alertParams.mNeutralButtonText = string4;
            alertParams.mNeutralButtonListener = this;
        }
        return materialAlertDialogBuilder.create();
    }
}
