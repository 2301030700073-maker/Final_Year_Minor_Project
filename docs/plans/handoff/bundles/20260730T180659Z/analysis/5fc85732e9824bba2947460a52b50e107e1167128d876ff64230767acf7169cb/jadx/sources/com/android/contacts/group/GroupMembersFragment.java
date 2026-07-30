package com.android.contacts.group;

import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.android.contacts.ContactSaveService;
import com.android.contacts.ContactsUtils;
import com.android.contacts.GroupMetaDataLoader;
import com.android.contacts.R;
import com.android.contacts.activities.ActionBarAdapter;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.interactions.GroupDeletionDialogFragment;
import com.android.contacts.list.ContactsRequest;
import com.android.contacts.list.ContactsSectionIndexer;
import com.android.contacts.list.MultiSelectContactsListFragment;
import com.android.contacts.list.MultiSelectEntryContactListAdapter;
import com.android.contacts.logging.Logger;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contactsbind.FeedbackHelper;
import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class GroupMembersFragment extends MultiSelectContactsListFragment<GroupMembersAdapter> {
    private ActionBarAdapter mActionBarAdapter;
    private PeopleActivity mActivity;
    private GroupMetaData mGroupMetaData;
    private Uri mGroupUri;
    private boolean mIsEditMode;
    private final LoaderManager.LoaderCallbacks<Cursor> mGroupMetaDataCallbacks = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupMembersFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader, reason: merged with bridge method [inline-methods] */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return new GroupMetaDataLoader(GroupMembersFragment.this.mActivity, GroupMembersFragment.this.mGroupUri);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (cursor == null || cursor.isClosed() || !cursor.moveToNext()) {
                Log.e("GroupMembers", "Failed to load group metadata for " + GroupMembersFragment.this.mGroupUri);
                Toast.makeText(GroupMembersFragment.this.getContext(), R.string.groupLoadErrorToast, 0).show();
                GroupMembersFragment.this.mHandler.sendEmptyMessage(1);
                return;
            }
            GroupMembersFragment.this.mGroupMetaData = new GroupMetaData(GroupMembersFragment.this.getActivity(), cursor);
            GroupMembersFragment.this.onGroupMetadataLoaded();
        }
    };
    private Set<String> mGroupMemberContactIds = new HashSet();
    private Handler mHandler = new Handler() { // from class: com.android.contacts.group.GroupMembersFragment.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                GroupMembersFragment.this.mActivity.onBackPressed();
            }
        }
    };
    private final ActionBarAdapter.Listener mActionBarListener = new ActionBarAdapter.Listener() { // from class: com.android.contacts.group.GroupMembersFragment.3
        @Override // com.android.contacts.activities.ActionBarAdapter.Listener
        public void onAction(int i) {
            if (i == 2) {
                if (GroupMembersFragment.this.mIsEditMode) {
                    GroupMembersFragment.this.displayDeleteButtons(true);
                    GroupMembersFragment.this.mActionBarAdapter.setActionBarTitle(GroupMembersFragment.this.getString(R.string.title_edit_group));
                } else {
                    GroupMembersFragment.this.displayCheckBoxes(true);
                }
                GroupMembersFragment.this.mActivity.invalidateOptionsMenu();
                return;
            }
            if (i != 3) {
                return;
            }
            GroupMembersFragment.this.mActionBarAdapter.setSearchMode(false);
            if (GroupMembersFragment.this.mIsEditMode) {
                GroupMembersFragment.this.displayDeleteButtons(false);
            } else {
                GroupMembersFragment.this.displayCheckBoxes(false);
            }
            GroupMembersFragment.this.mActivity.invalidateOptionsMenu();
        }

        @Override // com.android.contacts.activities.ActionBarAdapter.Listener
        public void onUpButtonPressed() {
            GroupMembersFragment.this.mActivity.onBackPressed();
        }
    };
    private final MultiSelectContactsListFragment.OnCheckBoxListActionListener mCheckBoxListener = new MultiSelectContactsListFragment.OnCheckBoxListActionListener() { // from class: com.android.contacts.group.GroupMembersFragment.4
        @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
        public void onStartDisplayingCheckBoxes() {
            GroupMembersFragment.this.mActionBarAdapter.setSelectionMode(true);
        }

        @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
        public void onSelectedContactIdsChanged() {
            if (GroupMembersFragment.this.mActionBarAdapter == null) {
                return;
            }
            if (GroupMembersFragment.this.mIsEditMode) {
                GroupMembersFragment.this.mActionBarAdapter.setActionBarTitle(GroupMembersFragment.this.getString(R.string.title_edit_group));
            } else {
                GroupMembersFragment.this.mActionBarAdapter.setSelectionCount(GroupMembersFragment.this.getSelectedContactIds().size());
            }
        }

        @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
        public void onStopDisplayingCheckBoxes() {
            GroupMembersFragment.this.mActionBarAdapter.setSelectionMode(false);
        }
    };

    public static abstract class Query {
        public static final String[] EMAIL_PROJECTION = {"contact_id", "_id", "is_super_primary", "data1"};
        public static final String[] PHONE_PROJECTION = {"contact_id", "_id", "is_super_primary", "data1"};
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.LoaderManager.LoaderCallbacks
    public /* bridge */ /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        onLoadFinished((Loader<Cursor>) loader, (Cursor) obj);
    }

    private class FilterCursorWrapper extends CursorWrapper {
        private int mCount;
        private int[] mIndex;
        private int mPos;

        public FilterCursorWrapper(GroupMembersFragment groupMembersFragment, Cursor cursor) {
            super(cursor);
            int i;
            this.mCount = 0;
            this.mPos = 0;
            int count = super.getCount();
            this.mCount = count;
            this.mIndex = new int[count];
            ArrayList arrayList = new ArrayList();
            if (Log.isLoggable("GroupMembers", 2)) {
                Log.v("GroupMembers", "Group members CursorWrapper start: " + this.mCount);
            }
            Bundle extras = cursor.getExtras();
            String[] stringArray = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
            int[] intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
            ContactsSectionIndexer contactsSectionIndexer = (stringArray == null || intArray == null) ? null : new ContactsSectionIndexer(stringArray, intArray);
            groupMembersFragment.mGroupMemberContactIds.clear();
            int i2 = 0;
            while (true) {
                i = this.mCount;
                if (i2 >= i) {
                    break;
                }
                super.moveToPosition(i2);
                String string = getString(0);
                if (!groupMembersFragment.mGroupMemberContactIds.contains(string)) {
                    int[] iArr = this.mIndex;
                    int i3 = this.mPos;
                    this.mPos = i3 + 1;
                    iArr[i3] = i2;
                    groupMembersFragment.mGroupMemberContactIds.add(string);
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
            if (Log.isLoggable("GroupMembers", 2)) {
                Log.v("GroupMembers", "Group members CursorWrapper end: " + this.mCount);
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

    public static GroupMembersFragment newInstance(Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("groupUri", uri);
        GroupMembersFragment groupMembersFragment = new GroupMembersFragment();
        groupMembersFragment.setArguments(bundle);
        return groupMembersFragment;
    }

    public GroupMembersFragment() {
        setPhotoLoaderEnabled(true);
        setSectionHeaderDisplayEnabled(true);
        setHasOptionsMenu(true);
        setListType(3);
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mGroupMetaData == null) {
            return;
        }
        menuInflater.inflate(R.menu.view_group, menu);
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean isSelectionMode = this.mActionBarAdapter.isSelectionMode();
        GroupMetaData groupMetaData = this.mGroupMetaData;
        boolean z = groupMetaData != null && groupMetaData.editable;
        GroupMetaData groupMetaData2 = this.mGroupMetaData;
        boolean z2 = groupMetaData2 != null && groupMetaData2.readOnly;
        setVisible(getContext(), menu, R.id.menu_multi_send_email, (this.mIsEditMode || isGroupEmpty()) ? false : true);
        setVisible(getContext(), menu, R.id.menu_multi_send_message, (this.mIsEditMode || isGroupEmpty()) ? false : true);
        setVisible(getContext(), menu, R.id.menu_add, z && !isSelectionMode);
        setVisible(getContext(), menu, R.id.menu_rename_group, (z2 || isSelectionMode) ? false : true);
        setVisible(getContext(), menu, R.id.menu_delete_group, (z2 || isSelectionMode) ? false : true);
        setVisible(getContext(), menu, R.id.menu_edit_group, (!z || this.mIsEditMode || isSelectionMode || isGroupEmpty()) ? false : true);
        setVisible(getContext(), menu, R.id.menu_remove_from_group, z && isSelectionMode && !this.mIsEditMode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isGroupEmpty() {
        return getAdapter() != 0 && ((GroupMembersAdapter) getAdapter()).isEmpty();
    }

    private static void setVisible(Context context, Menu menu, int i, boolean z) {
        MenuItem findItem = menu.findItem(i);
        if (findItem != null) {
            findItem.setVisible(z);
            Drawable icon = findItem.getIcon();
            if (icon != null) {
                icon.mutate().setColorFilter(ContextCompat.getColor(context, R.color.actionbar_icon_color), PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    private class ContactDataHelperClass {
        private String firstItemId;
        private List<String> items;
        private String primaryItemId;

        private ContactDataHelperClass(GroupMembersFragment groupMembersFragment) {
            this.items = new ArrayList();
            this.firstItemId = null;
            this.primaryItemId = null;
        }

        public void addItem(String str, boolean z) {
            if (this.firstItemId == null) {
                this.firstItemId = str;
            }
            if (z) {
                this.primaryItemId = str;
            }
            this.items.add(str);
        }

        public boolean hasDefaultItem() {
            return this.primaryItemId != null || this.items.size() == 1;
        }

        public String getDefaultSelectionItemId() {
            String str = this.primaryItemId;
            return str != null ? str : this.firstItemId;
        }
    }

    private void sendToGroup(long[] jArr, String str, String str2) {
        String[] strArr;
        String string;
        ContactDataHelperClass contactDataHelperClass;
        if (jArr == null || jArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        String convertArrayToString = GroupUtil.convertArrayToString(jArr);
        StringBuilder sb = new StringBuilder();
        sb.append(ContactsUtils.SCHEME_MAILTO.equals(str) ? "mimetype='vnd.android.cursor.item/email_v2'" : "mimetype='vnd.android.cursor.item/phone_v2'");
        sb.append(" AND ");
        sb.append("contact_id");
        sb.append(" IN (");
        sb.append(convertArrayToString);
        sb.append(")");
        String sb2 = sb.toString();
        ContentResolver contentResolver = getContext().getContentResolver();
        Uri uri = ContactsContract.Data.CONTENT_URI;
        if (ContactsUtils.SCHEME_MAILTO.equals(str)) {
            strArr = Query.EMAIL_PROJECTION;
        } else {
            strArr = Query.PHONE_PROJECTION;
        }
        Cursor query = contentResolver.query(uri, strArr, sb2, null, null);
        if (query == null) {
            return;
        }
        try {
            query.moveToPosition(-1);
            while (true) {
                boolean z = true;
                if (!query.moveToNext()) {
                    break;
                }
                String string2 = query.getString(0);
                String string3 = query.getString(1);
                if (query.getInt(2) == 0) {
                    z = false;
                }
                String string4 = query.getString(3);
                if (!TextUtils.isEmpty(string4)) {
                    if (!hashMap.containsKey(string2)) {
                        contactDataHelperClass = new ContactDataHelperClass();
                        hashMap.put(string2, contactDataHelperClass);
                    } else {
                        contactDataHelperClass = (ContactDataHelperClass) hashMap.get(string2);
                    }
                    contactDataHelperClass.addItem(string3, z);
                    arrayList.add(string4);
                }
            }
            query.close();
            Iterator it = hashMap.values().iterator();
            while (it.hasNext()) {
                if (!((ContactDataHelperClass) it.next()).hasDefaultItem()) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = hashMap.values().iterator();
                    while (it2.hasNext()) {
                        String defaultSelectionItemId = ((ContactDataHelperClass) it2.next()).getDefaultSelectionItemId();
                        if (defaultSelectionItemId != null) {
                            arrayList2.add(Long.valueOf(Long.parseLong(defaultSelectionItemId)));
                        }
                    }
                    startSendToSelectionPickerActivity(jArr, Longs.toArray(arrayList2), str, str2);
                    return;
                }
            }
            if (arrayList.size() == 0 || hashMap.size() < jArr.length) {
                Context context = getContext();
                if (ContactsUtils.SCHEME_MAILTO.equals(str)) {
                    string = getString(R.string.groupSomeContactsNoEmailsToast);
                } else {
                    string = getString(R.string.groupSomeContactsNoPhonesToast);
                }
                Toast.makeText(context, string, 1).show();
            }
            if (arrayList.size() == 0) {
                return;
            }
            GroupUtil.startSendToSelectionActivity(this, TextUtils.join(",", arrayList), str, str2);
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    private void startSendToSelectionPickerActivity(long[] jArr, long[] jArr2, String str, String str2) {
        startActivity(GroupUtil.createSendToSelectionPickerIntent(getContext(), jArr, jArr2, str, str2));
    }

    private void startGroupAddMemberActivity() {
        startActivityForResult(GroupUtil.createPickMemberIntent(getContext(), this.mGroupMetaData, getMemberContactIds()), 100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        long[] convertStringSetToLongArray;
        long[] convertStringSetToLongArray2;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.mActivity.onBackPressed();
        } else if (itemId == R.id.menu_add) {
            startGroupAddMemberActivity();
        } else if (itemId == R.id.menu_multi_send_email) {
            if (this.mActionBarAdapter.isSelectionMode()) {
                convertStringSetToLongArray2 = ((GroupMembersAdapter) getAdapter()).getSelectedContactIdsArray();
            } else {
                convertStringSetToLongArray2 = GroupUtil.convertStringSetToLongArray(this.mGroupMemberContactIds);
            }
            sendToGroup(convertStringSetToLongArray2, ContactsUtils.SCHEME_MAILTO, getString(R.string.menu_sendEmailOption));
        } else if (itemId == R.id.menu_multi_send_message) {
            if (this.mActionBarAdapter.isSelectionMode()) {
                convertStringSetToLongArray = ((GroupMembersAdapter) getAdapter()).getSelectedContactIdsArray();
            } else {
                convertStringSetToLongArray = GroupUtil.convertStringSetToLongArray(this.mGroupMemberContactIds);
            }
            sendToGroup(convertStringSetToLongArray, ContactsUtils.SCHEME_SMSTO, getString(R.string.menu_sendMessageOption));
        } else if (itemId == R.id.menu_rename_group) {
            GroupMetaData groupMetaData = this.mGroupMetaData;
            AccountWithDataSet accountWithDataSet = new AccountWithDataSet(groupMetaData.accountName, groupMetaData.accountType, groupMetaData.dataSet);
            GroupMetaData groupMetaData2 = this.mGroupMetaData;
            GroupNameEditDialogFragment.newInstanceForUpdate(accountWithDataSet, "updateGroup", groupMetaData2.groupId, groupMetaData2.groupName).show(getFragmentManager(), "groupNameEditDialog");
        } else if (itemId == R.id.menu_delete_group) {
            deleteGroup();
        } else if (itemId == R.id.menu_edit_group) {
            this.mIsEditMode = true;
            this.mActionBarAdapter.setSelectionMode(true);
            displayDeleteButtons(true);
        } else if (itemId == R.id.menu_remove_from_group) {
            logListEvent();
            removeSelectedContacts();
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void removeSelectedContacts() {
        long[] selectedContactIdsArray = ((GroupMembersAdapter) getAdapter()).getSelectedContactIdsArray();
        Context context = getContext();
        GroupMetaData groupMetaData = this.mGroupMetaData;
        new UpdateGroupMembersAsyncTask(1, context, selectedContactIdsArray, groupMetaData.groupId, groupMetaData.accountName, groupMetaData.accountType, groupMetaData.dataSet).execute(new Void[0]);
        this.mActionBarAdapter.setSelectionMode(false);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && intent != null && i == 100) {
            long[] longArrayExtra = intent.getLongArrayExtra("com.android.contacts.action.CONTACT_IDS");
            if (longArrayExtra == null) {
                long longExtra = intent.getLongExtra("com.android.contacts.action.CONTACT_ID", -1L);
                if (longExtra > -1) {
                    longArrayExtra = new long[]{longExtra};
                }
            }
            Context context = getContext();
            GroupMetaData groupMetaData = this.mGroupMetaData;
            new UpdateGroupMembersAsyncTask(0, context, longArrayExtra, groupMetaData.groupId, groupMetaData.accountName, groupMetaData.accountType, groupMetaData.dataSet).execute(new Void[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void logListEvent() {
        Logger.logListEvent(7, getListType(), ((GroupMembersAdapter) getAdapter()).getCount(), -1, ((GroupMembersAdapter) getAdapter()).getSelectedContactIdsArray().length);
    }

    private void deleteGroup() {
        if (getMemberCount() == 0) {
            getContext().startService(ContactSaveService.createGroupDeletionIntent(getContext(), this.mGroupMetaData.groupId));
            this.mActivity.switchToAllContacts();
        } else {
            FragmentManager fragmentManager = getFragmentManager();
            GroupMetaData groupMetaData = this.mGroupMetaData;
            GroupDeletionDialogFragment.show(fragmentManager, groupMetaData.groupId, groupMetaData.groupName);
        }
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        PeopleActivity peopleActivity = (PeopleActivity) getActivity();
        this.mActivity = peopleActivity;
        ActionBarAdapter actionBarAdapter = new ActionBarAdapter(peopleActivity, this.mActionBarListener, peopleActivity.getSupportActionBar(), this.mActivity.getToolbar(), R.string.enter_contact_name);
        this.mActionBarAdapter = actionBarAdapter;
        actionBarAdapter.setShowHomeIcon(true);
        ContactsRequest contactsRequest = new ContactsRequest();
        contactsRequest.setActionCode(20);
        this.mActionBarAdapter.initialize(bundle, contactsRequest);
        GroupMetaData groupMetaData = this.mGroupMetaData;
        if (groupMetaData != null) {
            this.mActivity.setTitle(groupMetaData.groupName);
            if (this.mGroupMetaData.editable) {
                setCheckBoxListListener(this.mCheckBoxListener);
            }
        }
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment
    public ActionBarAdapter getActionBarAdapter() {
        return this.mActionBarAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void displayDeleteButtons(boolean z) {
        ((GroupMembersAdapter) getAdapter()).setDisplayDeleteButtons(z);
    }

    public ArrayList<String> getMemberContactIds() {
        return new ArrayList<>(this.mGroupMemberContactIds);
    }

    public int getMemberCount() {
        return this.mGroupMemberContactIds.size();
    }

    public boolean isEditMode() {
        return this.mIsEditMode;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mGroupUri = (Uri) getArguments().getParcelable("groupUri");
        } else {
            this.mIsEditMode = bundle.getBoolean("editMode");
            this.mGroupUri = (Uri) bundle.getParcelable("groupUri");
            this.mGroupMetaData = (GroupMetaData) bundle.getParcelable("groupMetadata");
        }
        maybeAttachCheckBoxListener();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onResume() {
        super.onResume();
        this.mActionBarAdapter.setListener(this.mActionBarListener);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void startLoading() {
        GroupMetaData groupMetaData = this.mGroupMetaData;
        if (groupMetaData == null || !groupMetaData.isValid()) {
            getLoaderManager().restartLoader(100, null, this.mGroupMetaDataCallbacks);
        } else {
            onGroupMetadataLoaded();
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null) {
            setVisibleScrollbarEnabled(true);
            FilterCursorWrapper filterCursorWrapper = new FilterCursorWrapper(this, cursor);
            bindMembersCount(filterCursorWrapper.getCount());
            super.onLoadFinished(loader, (Cursor) filterCursorWrapper);
            this.mActivity.invalidateOptionsMenu();
            this.mActionBarAdapter.updateOverflowButtonColor();
        }
    }

    private void bindMembersCount(int i) {
        View findViewById = getView().findViewById(R.id.account_filter_header_container);
        View findViewById2 = getView().findViewById(R.id.empty_group);
        if (i > 0) {
            GroupMetaData groupMetaData = this.mGroupMetaData;
            bindListHeader(getContext(), getListView(), findViewById, new AccountWithDataSet(groupMetaData.accountName, groupMetaData.accountType, groupMetaData.dataSet), i);
            findViewById2.setVisibility(8);
            return;
        }
        hideHeaderAndAddPadding(getContext(), getListView(), findViewById);
        findViewById2.setVisibility(0);
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ActionBarAdapter actionBarAdapter = this.mActionBarAdapter;
        if (actionBarAdapter != null) {
            actionBarAdapter.setListener(null);
            this.mActionBarAdapter.onSaveInstanceState(bundle);
        }
        bundle.putBoolean("editMode", this.mIsEditMode);
        bundle.putParcelable("groupUri", this.mGroupUri);
        bundle.putParcelable("groupMetadata", this.mGroupMetaData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGroupMetadataLoaded() {
        if (Log.isLoggable("GroupMembers", 2)) {
            Log.v("GroupMembers", "Loaded " + this.mGroupMetaData);
        }
        maybeAttachCheckBoxListener();
        this.mActivity.setTitle(this.mGroupMetaData.groupName);
        this.mActivity.invalidateOptionsMenu();
        this.mActivity.updateDrawerGroupMenu(this.mGroupMetaData.groupId);
        super.startLoading();
    }

    private void maybeAttachCheckBoxListener() {
        GroupMetaData groupMetaData = this.mGroupMetaData;
        if (groupMetaData == null || !groupMetaData.editable) {
            return;
        }
        setCheckBoxListListener(this.mCheckBoxListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactEntryListFragment
    public GroupMembersAdapter createListAdapter() {
        GroupMembersAdapter groupMembersAdapter = new GroupMembersAdapter(getContext());
        groupMembersAdapter.setSectionHeaderDisplayEnabled(true);
        groupMembersAdapter.setDisplayPhotos(true);
        groupMembersAdapter.setDeleteContactListener(new DeletionListener());
        return groupMembersAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected void configureAdapter() {
        super.configureAdapter();
        if (this.mGroupMetaData != null) {
            ((GroupMembersAdapter) getAdapter()).setGroupId(this.mGroupMetaData.groupId);
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected View inflateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.contact_list_content, (ViewGroup) null);
        View inflate2 = layoutInflater.inflate(R.layout.empty_group_view, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate2.findViewById(R.id.empty_group_image);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.setMargins(0, getResources().getDisplayMetrics().heightPixels / getResources().getInteger(R.integer.empty_group_view_image_margin_divisor), 0, 0);
        layoutParams.gravity = 1;
        imageView.setLayoutParams(layoutParams);
        ((FrameLayout) inflate.findViewById(R.id.contact_list)).addView(inflate2);
        ((Button) inflate2.findViewById(R.id.add_member_button)).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.GroupMembersFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GroupMembersFragment groupMembersFragment = GroupMembersFragment.this;
                groupMembersFragment.startActivityForResult(GroupUtil.createPickMemberIntent(groupMembersFragment.getContext(), GroupMembersFragment.this.mGroupMetaData, GroupMembersFragment.this.getMemberContactIds()), 100);
            }
        });
        return inflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected void onItemClick(int i, long j) {
        Uri contactUri = ((GroupMembersAdapter) getAdapter()).getContactUri(i);
        if (contactUri == null) {
            return;
        }
        if (((GroupMembersAdapter) getAdapter()).isDisplayingCheckBoxes()) {
            super.onItemClick(i, j);
        } else {
            Logger.logListEvent(2, 3, ((GroupMembersAdapter) getAdapter()).getCount(), i, 0);
            ImplicitIntentsUtil.startQuickContact(getActivity(), contactUri, 9);
        }
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected boolean onItemLongClick(int i, long j) {
        if (this.mActivity == null || !this.mIsEditMode) {
            return super.onItemLongClick(i, j);
        }
        return true;
    }

    private final class DeletionListener implements MultiSelectEntryContactListAdapter.DeleteContactListener {
        private DeletionListener() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.android.contacts.list.MultiSelectEntryContactListAdapter.DeleteContactListener
        public void onContactDeleteClicked(int i) {
            new UpdateGroupMembersAsyncTask(1, GroupMembersFragment.this.getContext(), new long[]{((GroupMembersAdapter) GroupMembersFragment.this.getAdapter()).getContactId(i)}, GroupMembersFragment.this.mGroupMetaData.groupId, GroupMembersFragment.this.mGroupMetaData.accountName, GroupMembersFragment.this.mGroupMetaData.accountType, GroupMembersFragment.this.mGroupMetaData.dataSet).execute(new Void[0]);
        }
    }

    public boolean isCurrentGroup(long j) {
        GroupMetaData groupMetaData = this.mGroupMetaData;
        return groupMetaData != null && groupMetaData.groupId == j;
    }

    public boolean isInactive() {
        return !isAdded() || isRemoving() || isDetached();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        ActionBarAdapter actionBarAdapter = this.mActionBarAdapter;
        if (actionBarAdapter != null) {
            actionBarAdapter.setListener(null);
        }
        super.onDestroy();
    }

    public void updateExistingGroupFragment(Uri uri, String str) {
        toastForSaveAction(str);
        if (isEditMode() && getGroupCount() == 1) {
            exitEditMode();
        } else {
            if (GroupUtil.ACTION_REMOVE_FROM_GROUP.equals(str)) {
                return;
            }
            this.mGroupUri = uri;
            this.mGroupMetaData = null;
            reloadData();
            this.mActivity.invalidateOptionsMenu();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void toastForSaveAction(String str) {
        char c;
        int i = -1;
        switch (str.hashCode()) {
            case -2124897071:
                if (str.equals(GroupUtil.ACTION_REMOVE_FROM_GROUP)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -595664074:
                if (str.equals("updateGroup")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -515792157:
                if (str.equals("createGroup")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 731391203:
                if (str.equals(GroupUtil.ACTION_ADD_TO_GROUP)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2107158443:
                if (str.equals(GroupUtil.ACTION_SWITCH_GROUP)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            i = R.string.groupUpdatedToast;
        } else if (c == 1) {
            i = R.string.groupMembersRemovedToast;
        } else if (c == 2) {
            i = R.string.groupCreatedToast;
        } else if (c == 3) {
            i = R.string.groupMembersAddedToast;
        } else if (c != 4) {
            FeedbackHelper.sendFeedback(getContext(), "GroupMembers", "toastForSaveAction passed unknown action: " + str, new IllegalArgumentException("Unhandled contact save action " + str));
        }
        toast(i);
    }

    private void toast(int i) {
        if (i >= 0) {
            Toast.makeText(getContext(), i, 0).show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int getGroupCount() {
        if (getAdapter() != 0) {
            return ((GroupMembersAdapter) getAdapter()).getCount();
        }
        return -1;
    }

    public void exitEditMode() {
        this.mIsEditMode = false;
        this.mActionBarAdapter.setSelectionMode(false);
        displayDeleteButtons(false);
    }
}
