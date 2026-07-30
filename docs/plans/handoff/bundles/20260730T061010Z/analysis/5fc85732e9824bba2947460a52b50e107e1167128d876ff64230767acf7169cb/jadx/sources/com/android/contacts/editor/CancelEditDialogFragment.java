package com.android.contacts.editor;

import android.R;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;

/* loaded from: classes.dex */
public class CancelEditDialogFragment extends DialogFragment {

    public interface Listener {
        void onCancelEditConfirmed();
    }

    public static void show(ContactEditorFragment contactEditorFragment) {
        CancelEditDialogFragment cancelEditDialogFragment = new CancelEditDialogFragment();
        cancelEditDialogFragment.setTargetFragment(contactEditorFragment, 0);
        cancelEditDialogFragment.show(contactEditorFragment.getFragmentManager(), "cancelEditor");
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setIconAttribute(R.attr.alertDialogIcon);
        builder.setMessage(com.android.contacts.R.string.cancel_confirmation_dialog_message);
        builder.setPositiveButton(com.android.contacts.R.string.cancel_confirmation_dialog_cancel_editing_button, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.CancelEditDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ((Listener) CancelEditDialogFragment.this.getTargetFragment()).onCancelEditConfirmed();
            }
        });
        builder.setNegativeButton(com.android.contacts.R.string.cancel_confirmation_dialog_keep_editing_button, null);
        return builder.create();
    }
}
