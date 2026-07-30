package com.android.contacts.list;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import com.android.contacts.R;

/* loaded from: classes.dex */
public class EnableGlobalSyncDialogFragment extends DialogFragment {
    private ContactListFilter mFilter;

    public interface Listener {
        void onEnableAutoSync(ContactListFilter contactListFilter);
    }

    public static void show(DefaultContactBrowseListFragment defaultContactBrowseListFragment, ContactListFilter contactListFilter) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("filter", contactListFilter);
        EnableGlobalSyncDialogFragment enableGlobalSyncDialogFragment = new EnableGlobalSyncDialogFragment();
        enableGlobalSyncDialogFragment.setTargetFragment(defaultContactBrowseListFragment, 0);
        enableGlobalSyncDialogFragment.setArguments(bundle);
        enableGlobalSyncDialogFragment.show(defaultContactBrowseListFragment.getFragmentManager(), "globalSync");
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFilter = (ContactListFilter) getArguments().getParcelable("filter");
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final Listener listener = (Listener) getTargetFragment();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.turn_auto_sync_on_dialog_title).setMessage(R.string.turn_auto_sync_on_dialog_body).setPositiveButton(R.string.turn_auto_sync_on_dialog_confirm_btn, new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.EnableGlobalSyncDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Listener listener2 = listener;
                if (listener2 != null) {
                    listener2.onEnableAutoSync(EnableGlobalSyncDialogFragment.this.mFilter);
                }
            }
        });
        builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        return builder.create();
    }
}
