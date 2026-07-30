package com.android.contacts.interactions;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.PeopleActivity;

/* loaded from: classes.dex */
public class GroupDeletionDialogFragment extends DialogFragment {
    public static void show(FragmentManager fragmentManager, long j, String str) {
        GroupDeletionDialogFragment groupDeletionDialogFragment = new GroupDeletionDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putLong(ContactSaveService.EXTRA_GROUP_ID, j);
        bundle.putString("label", str);
        groupDeletionDialogFragment.setArguments(bundle);
        groupDeletionDialogFragment.show(fragmentManager, "deleteGroup");
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new AlertDialog.Builder(getActivity()).setIconAttribute(R.attr.alertDialogIcon).setMessage(getActivity().getString(com.android.contacts.R.string.delete_group_dialog_message, new Object[]{getArguments().getString("label")})).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.GroupDeletionDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GroupDeletionDialogFragment.this.deleteGroup();
            }
        }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
    }

    protected void deleteGroup() {
        long j = getArguments().getLong(ContactSaveService.EXTRA_GROUP_ID);
        PeopleActivity peopleActivity = (PeopleActivity) getActivity();
        peopleActivity.startService(ContactSaveService.createGroupDeletionIntent(getActivity(), j));
        peopleActivity.switchToAllContacts();
    }
}
