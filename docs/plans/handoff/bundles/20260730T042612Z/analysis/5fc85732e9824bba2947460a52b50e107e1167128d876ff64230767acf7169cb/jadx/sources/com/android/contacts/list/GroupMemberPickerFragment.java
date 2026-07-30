package com.android.contacts.list;

import android.app.Activity;
import android.content.Loader;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.ContactSaveService;
import com.android.contacts.R;
import com.android.contacts.activities.ContactSelectionActivity;
import com.android.contacts.group.GroupUtil;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GroupMemberPickerFragment extends MultiSelectContactsListFragment<DefaultContactListAdapter> {
    private String mAccountDataSet;
    private String mAccountName;
    private String mAccountType;
    private ArrayList<String> mContactIds;
    private Listener mListener;

    public interface Listener {
        void onGroupMemberClicked(long j);

        void onSelectGroupMembers();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.LoaderManager.LoaderCallbacks
    public /* bridge */ /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        onLoadFinished((Loader<Cursor>) loader, (Cursor) obj);
    }

    private class FilterCursorWrapper extends CursorWrapper {
        private int mCount;
        private int[] mIndex;
        private int mPos;

        public FilterCursorWrapper(GroupMemberPickerFragment groupMemberPickerFragment, Cursor cursor) {
            super(cursor);
            int i;
            this.mCount = 0;
            this.mPos = 0;
            int count = super.getCount();
            this.mCount = count;
            this.mIndex = new int[count];
            ArrayList arrayList = new ArrayList();
            if (Log.isLoggable("GroupMemberPicker", 2)) {
                Log.v("GroupMemberPicker", "RawContacts CursorWrapper start: " + this.mCount);
            }
            Bundle extras = cursor.getExtras();
            String[] stringArray = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
            int[] intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
            ContactsSectionIndexer contactsSectionIndexer = (stringArray == null || intArray == null) ? null : new ContactsSectionIndexer(stringArray, intArray);
            int i2 = 0;
            while (true) {
                i = this.mCount;
                if (i2 >= i) {
                    break;
                }
                super.moveToPosition(i2);
                if (!groupMemberPickerFragment.mContactIds.contains(getString(0))) {
                    int[] iArr = this.mIndex;
                    int i3 = this.mPos;
                    this.mPos = i3 + 1;
                    iArr[i3] = i2;
                } else {
                    arrayList.add(Integer.valueOf(i2));
                }
                i2++;
            }
            if (contactsSectionIndexer != null && GroupUtil.needTrimming(i, intArray, contactsSectionIndexer.getPositions())) {
                GroupUtil.updateBundle(extras, contactsSectionIndexer, arrayList, stringArray, intArray);
            }
            this.mCount = this.mPos;
            this.mPos = 0;
            super.moveToFirst();
            if (Log.isLoggable("GroupMemberPicker", 2)) {
                Log.v("GroupMemberPicker", "RawContacts CursorWrapper end: " + this.mCount);
            }
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean move(int i) {
            return moveToPosition(this.mPos + i);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToNext() {
            return moveToPosition(this.mPos + 1);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToPrevious() {
            return moveToPosition(this.mPos - 1);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToFirst() {
            return moveToPosition(0);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToLast() {
            return moveToPosition(this.mCount - 1);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToPosition(int i) {
            int i2 = this.mCount;
            if (i >= i2) {
                this.mPos = i2;
                return false;
            }
            if (i < 0) {
                this.mPos = -1;
                return false;
            }
            int i3 = this.mIndex[i];
            this.mPos = i3;
            return super.moveToPosition(i3);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getCount() {
            return this.mCount;
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getPosition() {
            return this.mPos;
        }
    }

    public static GroupMemberPickerFragment newInstance(String str, String str2, String str3, ArrayList<String> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putString(ContactSaveService.EXTRA_ACCOUNT_NAME, str);
        bundle.putString(ContactSaveService.EXTRA_ACCOUNT_TYPE, str2);
        bundle.putString("accountDataSet", str3);
        bundle.putStringArrayList(ContactSaveService.EXTRA_CONTACT_IDS, arrayList);
        GroupMemberPickerFragment groupMemberPickerFragment = new GroupMemberPickerFragment();
        groupMemberPickerFragment.setArguments(bundle);
        return groupMemberPickerFragment;
    }

    public GroupMemberPickerFragment() {
        setPhotoLoaderEnabled(true);
        setSectionHeaderDisplayEnabled(true);
        setHasOptionsMenu(true);
        setDisplayDirectoryHeader(false);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle == null) {
            this.mAccountName = getArguments().getString(ContactSaveService.EXTRA_ACCOUNT_NAME);
            this.mAccountType = getArguments().getString(ContactSaveService.EXTRA_ACCOUNT_TYPE);
            this.mAccountDataSet = getArguments().getString("accountDataSet");
            this.mContactIds = getArguments().getStringArrayList(ContactSaveService.EXTRA_CONTACT_IDS);
        } else {
            this.mAccountName = bundle.getString(ContactSaveService.EXTRA_ACCOUNT_NAME);
            this.mAccountType = bundle.getString(ContactSaveService.EXTRA_ACCOUNT_TYPE);
            this.mAccountDataSet = bundle.getString("accountDataSet");
            this.mContactIds = bundle.getStringArrayList(ContactSaveService.EXTRA_CONTACT_IDS);
        }
        super.onCreate(bundle);
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(ContactSaveService.EXTRA_ACCOUNT_NAME, this.mAccountName);
        bundle.putString(ContactSaveService.EXTRA_ACCOUNT_TYPE, this.mAccountType);
        bundle.putString("accountDataSet", this.mAccountDataSet);
        bundle.putStringArrayList(ContactSaveService.EXTRA_CONTACT_IDS, this.mContactIds);
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected View inflateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.contact_list_content, (ViewGroup) null);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null) {
            setVisibleScrollbarEnabled(true);
            FilterCursorWrapper filterCursorWrapper = new FilterCursorWrapper(this, cursor);
            bindListHeader(getContext(), getListView(), getView().findViewById(R.id.account_filter_header_container), new AccountWithDataSet(this.mAccountName, this.mAccountType, this.mAccountDataSet), filterCursorWrapper.getCount());
            super.onLoadFinished(loader, (Cursor) filterCursorWrapper);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactEntryListFragment
    public DefaultContactListAdapter createListAdapter() {
        DefaultContactListAdapter defaultContactListAdapter = new DefaultContactListAdapter(getActivity());
        defaultContactListAdapter.setFilter(ContactListFilter.createGroupMembersFilter(this.mAccountType, this.mAccountName, this.mAccountDataSet));
        defaultContactListAdapter.setSectionHeaderDisplayEnabled(true);
        defaultContactListAdapter.setDisplayPhotos(true);
        return defaultContactListAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected void onItemClick(int i, long j) {
        if (((DefaultContactListAdapter) getAdapter()).isDisplayingCheckBoxes()) {
            super.onItemClick(i, j);
        } else if (this.mListener != null) {
            long contactId = ((DefaultContactListAdapter) getAdapter()).getContactId(i);
            if (contactId > 0) {
                this.mListener.onGroupMemberClicked(contactId);
            }
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.group_member_picker, menu);
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        ContactSelectionActivity contactSelectionActivity = getContactSelectionActivity();
        ArrayList<String> arrayList = this.mContactIds;
        boolean z = arrayList != null && arrayList.size() > 0;
        boolean isSearchMode = contactSelectionActivity == null ? false : contactSelectionActivity.isSearchMode();
        boolean isSelectionMode = contactSelectionActivity == null ? false : contactSelectionActivity.isSelectionMode();
        setVisible(menu, R.id.menu_search, (isSearchMode || isSelectionMode) ? false : true);
        setVisible(menu, R.id.menu_select, (!z || isSearchMode || isSelectionMode) ? false : true);
    }

    private ContactSelectionActivity getContactSelectionActivity() {
        Activity activity = getActivity();
        if (activity == null || !(activity instanceof ContactSelectionActivity)) {
            return null;
        }
        return (ContactSelectionActivity) activity;
    }

    private static void setVisible(Menu menu, int i, boolean z) {
        MenuItem findItem = menu.findItem(i);
        if (findItem != null) {
            findItem.setVisible(z);
        }
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            Activity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
            }
            return true;
        }
        if (itemId == R.id.menu_select) {
            Listener listener = this.mListener;
            if (listener != null) {
                listener.onSelectGroupMembers();
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
