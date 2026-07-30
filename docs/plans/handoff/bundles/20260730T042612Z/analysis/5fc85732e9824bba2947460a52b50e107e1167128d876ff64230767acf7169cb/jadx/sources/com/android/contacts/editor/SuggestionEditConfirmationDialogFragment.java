package com.android.contacts.editor;

import android.R;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;

/* loaded from: classes.dex */
public class SuggestionEditConfirmationDialogFragment extends DialogFragment {
    public static void show(ContactEditorFragment contactEditorFragment, Uri uri, long j) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("contactUri", uri);
        bundle.putLong("rawContactId", j);
        SuggestionEditConfirmationDialogFragment suggestionEditConfirmationDialogFragment = new SuggestionEditConfirmationDialogFragment();
        suggestionEditConfirmationDialogFragment.setArguments(bundle);
        suggestionEditConfirmationDialogFragment.setTargetFragment(contactEditorFragment, 0);
        suggestionEditConfirmationDialogFragment.show(contactEditorFragment.getFragmentManager(), "edit");
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setIconAttribute(R.attr.alertDialogIcon);
        builder.setMessage(com.android.contacts.R.string.aggregation_suggestion_edit_dialog_message);
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.SuggestionEditConfirmationDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ((ContactEditorFragment) SuggestionEditConfirmationDialogFragment.this.getTargetFragment()).doEditSuggestedContact((Uri) SuggestionEditConfirmationDialogFragment.this.getArguments().getParcelable("contactUri"), SuggestionEditConfirmationDialogFragment.this.getArguments().getLong("rawContactId"));
            }
        });
        builder.setNegativeButton(R.string.no, null);
        return builder.create();
    }
}
