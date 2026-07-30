package com.android.contacts.interactions;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ContactSaveService;
import com.android.contacts.R;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.ContactDisplayUtils;
import com.google.common.collect.Sets;
import java.util.HashSet;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class ContactMultiDeletionInteraction extends Fragment implements LoaderManager.LoaderCallbacks<Cursor> {
    private static final String[] RAW_CONTACT_PROJECTION = {"_id", "account_type", "data_set", "contact_id", "display_name", "display_name_alt"};
    private TreeSet<Long> mContactIds;
    private Context mContext;
    private AlertDialog mDialog;
    private boolean mIsLoaderActive;
    private MultiContactDeleteListener mListener;

    public interface MultiContactDeleteListener {
        void onDeletionFinished();
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public static ContactMultiDeletionInteraction start(Fragment fragment, TreeSet<Long> treeSet) {
        if (treeSet == null) {
            return null;
        }
        FragmentManager fragmentManager = fragment.getFragmentManager();
        ContactMultiDeletionInteraction contactMultiDeletionInteraction = (ContactMultiDeletionInteraction) fragmentManager.findFragmentByTag(ContactSaveService.ACTION_DELETE_MULTIPLE_CONTACTS);
        if (contactMultiDeletionInteraction == null) {
            ContactMultiDeletionInteraction contactMultiDeletionInteraction2 = new ContactMultiDeletionInteraction();
            contactMultiDeletionInteraction2.setContactIds(treeSet);
            fragmentManager.beginTransaction().add(contactMultiDeletionInteraction2, ContactSaveService.ACTION_DELETE_MULTIPLE_CONTACTS).commitAllowingStateLoss();
            return contactMultiDeletionInteraction2;
        }
        contactMultiDeletionInteraction.setContactIds(treeSet);
        return contactMultiDeletionInteraction;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mContext = activity;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.mDialog.setOnDismissListener(null);
        this.mDialog.dismiss();
        this.mDialog = null;
    }

    public void setContactIds(TreeSet<Long> treeSet) {
        this.mContactIds = treeSet;
        this.mIsLoaderActive = true;
        if (isStarted()) {
            Bundle bundle = new Bundle();
            bundle.putSerializable(ContactSaveService.EXTRA_CONTACT_IDS, this.mContactIds);
            getLoaderManager().restartLoader(R.id.dialog_delete_multiple_contact_loader_id, bundle, this);
        }
    }

    private boolean isStarted() {
        return isAdded();
    }

    @Override // android.app.Fragment
    public void onStart() {
        if (this.mIsLoaderActive) {
            Bundle bundle = new Bundle();
            bundle.putSerializable(ContactSaveService.EXTRA_CONTACT_IDS, this.mContactIds);
            getLoaderManager().initLoader(R.id.dialog_delete_multiple_contact_loader_id, bundle, this);
        }
        super.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.hide();
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        TreeSet treeSet = (TreeSet) bundle.getSerializable(ContactSaveService.EXTRA_CONTACT_IDS);
        Object[] array = treeSet.toArray();
        String[] strArr = new String[treeSet.size()];
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < treeSet.size(); i2++) {
            strArr[i2] = String.valueOf(array[i2]);
            sb.append("contact_id =?");
            if (i2 == treeSet.size() - 1) {
                break;
            }
            sb.append(" OR ");
        }
        return new CursorLoader(this.mContext, ContactsContract.RawContacts.CONTENT_URI, RAW_CONTACT_PROJECTION, sb.toString(), strArr, null);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        int i;
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mDialog = null;
        }
        if (this.mIsLoaderActive) {
            if (cursor == null || cursor.isClosed()) {
                Log.e("ContactMultiDeletion", "Failed to load contacts");
                return;
            }
            HashSet newHashSet = Sets.newHashSet();
            HashSet newHashSet2 = Sets.newHashSet();
            HashSet newHashSet3 = Sets.newHashSet();
            HashSet newHashSet4 = Sets.newHashSet();
            ContactsPreferences contactsPreferences = new ContactsPreferences(this.mContext);
            AccountTypeManager accountTypeManager = AccountTypeManager.getInstance(getActivity());
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long j = cursor.getLong(0);
                String string = cursor.getString(1);
                String string2 = cursor.getString(2);
                long j2 = cursor.getLong(3);
                String preferredDisplayName = ContactDisplayUtils.getPreferredDisplayName(cursor.getString(4), cursor.getString(5), contactsPreferences);
                if (!TextUtils.isEmpty(preferredDisplayName)) {
                    newHashSet4.add(preferredDisplayName);
                }
                newHashSet3.add(Long.valueOf(j2));
                AccountType accountType = accountTypeManager.getAccountType(string, string2);
                if (accountType == null || accountType.areContactsWritable()) {
                    newHashSet2.add(Long.valueOf(j));
                } else {
                    newHashSet.add(Long.valueOf(j));
                }
            }
            int size = newHashSet.size();
            int size2 = newHashSet2.size();
            int i2 = android.R.string.ok;
            if (size > 0 && size2 > 0) {
                i = R.string.batch_delete_multiple_accounts_confirmation;
            } else if (size <= 0 || size2 != 0) {
                i = size2 == 1 ? R.string.single_delete_confirmation : R.string.batch_delete_confirmation;
                i2 = R.string.deleteConfirmation_positive_button;
            } else {
                i = R.string.batch_delete_read_only_contact_confirmation;
                i2 = R.string.readOnlyContactWarning_positive_button;
            }
            Long[] lArr = (Long[]) newHashSet3.toArray(new Long[newHashSet3.size()]);
            long[] jArr = new long[newHashSet3.size()];
            for (int i3 = 0; i3 < newHashSet3.size(); i3++) {
                jArr[i3] = lArr[i3].longValue();
            }
            showDialog(i, i2, jArr, (String[]) newHashSet4.toArray(new String[newHashSet4.size()]));
            getLoaderManager().destroyLoader(R.id.dialog_delete_multiple_contact_loader_id);
        }
    }

    private void showDialog(int i, int i2, final long[] jArr, final String[] strArr) {
        AlertDialog create = new AlertDialog.Builder(getActivity()).setIconAttribute(android.R.attr.alertDialogIcon).setMessage(i).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(i2, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.ContactMultiDeletionInteraction.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                ContactMultiDeletionInteraction.this.doDeleteContact(jArr, strArr);
            }
        }).create();
        this.mDialog = create;
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.interactions.ContactMultiDeletionInteraction.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ContactMultiDeletionInteraction.this.mIsLoaderActive = false;
                ContactMultiDeletionInteraction.this.mDialog = null;
            }
        });
        this.mDialog.show();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("active", this.mIsLoaderActive);
        bundle.putSerializable(ContactSaveService.EXTRA_CONTACT_IDS, this.mContactIds);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.mIsLoaderActive = bundle.getBoolean("active");
            this.mContactIds = (TreeSet) bundle.getSerializable(ContactSaveService.EXTRA_CONTACT_IDS);
        }
    }

    protected void doDeleteContact(long[] jArr, String[] strArr) {
        Context context = this.mContext;
        context.startService(ContactSaveService.createDeleteMultipleContactsIntent(context, jArr, strArr));
        this.mListener.onDeletionFinished();
    }

    public void setListener(MultiContactDeleteListener multiContactDeleteListener) {
        this.mListener = multiContactDeleteListener;
    }
}
