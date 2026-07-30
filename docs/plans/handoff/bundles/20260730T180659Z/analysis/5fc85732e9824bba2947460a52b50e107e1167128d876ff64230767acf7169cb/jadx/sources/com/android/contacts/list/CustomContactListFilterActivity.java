package com.android.contacts.list;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Entity;
import android.content.EntityIterator;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.android.contacts.R;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contacts.util.EmptyService;
import com.android.contacts.util.LocalizedNameResolver;
import com.android.contacts.util.WeakAsyncTask;
import com.android.contacts.util.concurrent.ContactsExecutors;
import com.android.contacts.util.concurrent.ListenableFutureLoader;
import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CustomContactListFilterActivity extends Activity implements ExpandableListView.OnChildClickListener, LoaderManager.LoaderCallbacks<AccountSet> {
    private static Comparator<GroupDelta> sIdComparator = new Comparator<GroupDelta>() { // from class: com.android.contacts.list.CustomContactListFilterActivity.2
        @Override // java.util.Comparator
        public int compare(GroupDelta groupDelta, GroupDelta groupDelta2) {
            Long id = groupDelta.getId();
            Long id2 = groupDelta2.getId();
            if (id == null && id2 == null) {
                return 0;
            }
            if (id == null) {
                return -1;
            }
            if (id2 == null) {
                return 1;
            }
            if (id.longValue() < id2.longValue()) {
                return -1;
            }
            return id.longValue() > id2.longValue() ? 1 : 0;
        }
    };
    private DisplayAdapter mAdapter;
    private ExpandableListView mList;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.contact_list_filter_custom);
        ExpandableListView expandableListView = (ExpandableListView) findViewById(android.R.id.list);
        this.mList = expandableListView;
        expandableListView.setOnChildClickListener(this);
        this.mList.setHeaderDividersEnabled(true);
        this.mList.setChildDivider(new ColorDrawable(0));
        this.mList.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.contacts.list.CustomContactListFilterActivity.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                CustomContactListFilterActivity.this.mList.setIndicatorBounds(CustomContactListFilterActivity.this.mList.getWidth() - CustomContactListFilterActivity.this.getResources().getDimensionPixelSize(R.dimen.contact_filter_indicator_padding_end), CustomContactListFilterActivity.this.mList.getWidth() - CustomContactListFilterActivity.this.getResources().getDimensionPixelSize(R.dimen.contact_filter_indicator_padding_start));
            }
        });
        this.mAdapter = new DisplayAdapter(this);
        this.mList.setOnCreateContextMenuListener(this);
        this.mList.setAdapter(this.mAdapter);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
    }

    public static class CustomFilterConfigurationLoader extends ListenableFutureLoader<AccountSet> {
        private AccountTypeManager mAccountTypeManager;

        public CustomFilterConfigurationLoader(Context context) {
            super(context, new IntentFilter(AccountTypeManager.BROADCAST_ACCOUNTS_CHANGED));
            this.mAccountTypeManager = AccountTypeManager.getInstance(context);
        }

        @Override // com.android.contacts.util.concurrent.ListenableFutureLoader
        public ListenableFuture<AccountSet> loadData() {
            return Futures.transform(this.mAccountTypeManager.getAccountsAsync(), new Function<List<AccountInfo>, AccountSet>() { // from class: com.android.contacts.list.CustomContactListFilterActivity.CustomFilterConfigurationLoader.1
                @Override // com.google.common.base.Function
                public AccountSet apply(List<AccountInfo> list) {
                    return CustomFilterConfigurationLoader.this.createAccountSet(list);
                }
            }, ContactsExecutors.getDefaultThreadPoolExecutor());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AccountSet createAccountSet(List<AccountInfo> list) {
            ContentResolver contentResolver = getContext().getContentResolver();
            AccountSet accountSet = new AccountSet();
            for (AccountInfo accountInfo : list) {
                AccountWithDataSet account = accountInfo.getAccount();
                if (!account.isNullAccount()) {
                    AccountDisplay accountDisplay = new AccountDisplay(contentResolver, accountInfo);
                    Uri.Builder appendQueryParameter = ContactsContract.Groups.CONTENT_URI.buildUpon().appendQueryParameter("account_name", account.name).appendQueryParameter("account_type", account.type);
                    String str = account.dataSet;
                    if (str != null) {
                        appendQueryParameter.appendQueryParameter("data_set", str).build();
                    }
                    Cursor query = contentResolver.query(appendQueryParameter.build(), null, "deleted=0", null, null);
                    if (query == null) {
                        continue;
                    } else {
                        EntityIterator newEntityIterator = ContactsContract.Groups.newEntityIterator(query);
                        boolean z = false;
                        while (newEntityIterator.hasNext()) {
                            try {
                                accountDisplay.addGroup(GroupDelta.fromBefore(((Entity) newEntityIterator.next()).getEntityValues()));
                                z = true;
                            } catch (Throwable th) {
                                newEntityIterator.close();
                                throw th;
                            }
                        }
                        GroupDelta fromSettings = GroupDelta.fromSettings(contentResolver, account.name, account.type, account.dataSet, z);
                        accountDisplay.mUngrouped = fromSettings;
                        accountDisplay.addGroup(fromSettings);
                        newEntityIterator.close();
                        accountSet.add(accountDisplay);
                    }
                }
            }
            return accountSet;
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        getLoaderManager().initLoader(1, null, this);
        super.onStart();
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<AccountSet> onCreateLoader(int i, Bundle bundle) {
        return new CustomFilterConfigurationLoader(this);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoadFinished(Loader<AccountSet> loader, AccountSet accountSet) {
        this.mAdapter.setAccounts(accountSet);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<AccountSet> loader) {
        this.mAdapter.setAccounts(null);
    }

    protected static class GroupDelta extends ValuesDelta {
        private boolean mAccountHasGroups;
        private boolean mUngrouped = false;

        private GroupDelta() {
        }

        public static GroupDelta fromSettings(ContentResolver contentResolver, String str, String str2, String str3, boolean z) {
            Uri.Builder appendQueryParameter = ContactsContract.Settings.CONTENT_URI.buildUpon().appendQueryParameter("account_name", str).appendQueryParameter("account_type", str2);
            if (str3 != null) {
                appendQueryParameter.appendQueryParameter("data_set", str3);
            }
            Cursor query = contentResolver.query(appendQueryParameter.build(), new String[]{"should_sync", "ungrouped_visible"}, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("account_name", str);
                contentValues.put("account_type", str2);
                contentValues.put("data_set", str3);
                if (query != null && query.moveToFirst()) {
                    contentValues.put("should_sync", Integer.valueOf(query.getInt(0)));
                    contentValues.put("ungrouped_visible", Integer.valueOf(query.getInt(1)));
                    GroupDelta fromBefore = fromBefore(contentValues);
                    fromBefore.setUngrouped(z);
                    return fromBefore;
                }
                contentValues.put("should_sync", (Integer) 1);
                contentValues.put("ungrouped_visible", (Integer) 0);
                GroupDelta fromAfter = fromAfter(contentValues);
                fromAfter.setUngrouped(z);
                if (query != null) {
                    query.close();
                }
                return fromAfter;
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }

        public static GroupDelta fromBefore(ContentValues contentValues) {
            GroupDelta groupDelta = new GroupDelta();
            groupDelta.mBefore = contentValues;
            groupDelta.mAfter = new ContentValues();
            return groupDelta;
        }

        public static GroupDelta fromAfter(ContentValues contentValues) {
            GroupDelta groupDelta = new GroupDelta();
            groupDelta.mBefore = null;
            groupDelta.mAfter = contentValues;
            return groupDelta;
        }

        protected GroupDelta setUngrouped(boolean z) {
            this.mUngrouped = true;
            this.mAccountHasGroups = z;
            return this;
        }

        @Override // com.android.contacts.model.ValuesDelta
        public boolean beforeExists() {
            return this.mBefore != null;
        }

        public boolean getShouldSync() {
            boolean z = this.mUngrouped;
            return getAsInteger("should_sync", 1).intValue() != 0;
        }

        public boolean getVisible() {
            return getAsInteger(this.mUngrouped ? "ungrouped_visible" : "group_visible", 0).intValue() != 0;
        }

        public void putShouldSync(boolean z) {
            boolean z2 = this.mUngrouped;
            put("should_sync", z ? 1 : 0);
        }

        public void putVisible(boolean z) {
            put(this.mUngrouped ? "ungrouped_visible" : "group_visible", z ? 1 : 0);
        }

        private String getAccountType() {
            ContentValues contentValues = this.mBefore;
            if (contentValues == null) {
                contentValues = this.mAfter;
            }
            return contentValues.getAsString("account_type");
        }

        public CharSequence getTitle(Context context) {
            String asString;
            if (this.mUngrouped) {
                String allContactsName = LocalizedNameResolver.getAllContactsName(context, getAccountType());
                if (allContactsName != null) {
                    return allContactsName;
                }
                if (this.mAccountHasGroups) {
                    return context.getText(R.string.display_ungrouped);
                }
                return context.getText(R.string.display_all_contacts);
            }
            Integer asInteger = getAsInteger("title_res");
            if (asInteger != null && asInteger.intValue() != 0 && (asString = getAsString("res_package")) != null) {
                return context.getPackageManager().getText(asString, asInteger.intValue(), null);
            }
            return getAsString("title");
        }

        public ContentProviderOperation buildDiff() {
            String[] strArr;
            if (isInsert()) {
                if (this.mUngrouped) {
                    this.mAfter.remove(this.mIdColumn);
                    return ContentProviderOperation.newInsert(ContactsContract.Settings.CONTENT_URI).withValues(this.mAfter).build();
                }
                throw new IllegalStateException("Unexpected diff");
            }
            if (!isUpdate()) {
                return null;
            }
            if (this.mUngrouped) {
                String asString = getAsString("account_name");
                String asString2 = getAsString("account_type");
                String asString3 = getAsString("data_set");
                StringBuilder sb = new StringBuilder("account_name=? AND account_type=?");
                if (asString3 == null) {
                    sb.append(" AND data_set IS NULL");
                    strArr = new String[]{asString, asString2};
                } else {
                    sb.append(" AND data_set=?");
                    strArr = new String[]{asString, asString2, asString3};
                }
                return ContentProviderOperation.newUpdate(ContactsContract.Settings.CONTENT_URI).withSelection(sb.toString(), strArr).withValues(this.mAfter).build();
            }
            return ContentProviderOperation.newUpdate(CustomContactListFilterActivity.addCallerIsSyncAdapterParameter(ContactsContract.Groups.CONTENT_URI)).withSelection("_id=" + getId(), null).withValues(this.mAfter).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Uri addCallerIsSyncAdapterParameter(Uri uri) {
        return uri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
    }

    protected static class AccountSet extends ArrayList<AccountDisplay> {
        protected AccountSet() {
        }

        public ArrayList<ContentProviderOperation> buildDiff() {
            ArrayList<ContentProviderOperation> newArrayList = Lists.newArrayList();
            Iterator<AccountDisplay> it = iterator();
            while (it.hasNext()) {
                it.next().buildDiff(newArrayList);
            }
            return newArrayList;
        }
    }

    protected static class AccountDisplay {
        public final AccountInfo mAccountInfo;
        public final String mDataSet;
        public final String mType;
        public GroupDelta mUngrouped;
        public ArrayList<GroupDelta> mSyncedGroups = Lists.newArrayList();
        public ArrayList<GroupDelta> mUnsyncedGroups = Lists.newArrayList();

        public GroupDelta getGroup(int i) {
            if (i < this.mSyncedGroups.size()) {
                return this.mSyncedGroups.get(i);
            }
            return this.mUnsyncedGroups.get(i - this.mSyncedGroups.size());
        }

        public AccountDisplay(ContentResolver contentResolver, AccountInfo accountInfo) {
            String str = accountInfo.getAccount().name;
            this.mType = accountInfo.getAccount().type;
            this.mDataSet = accountInfo.getAccount().dataSet;
            this.mAccountInfo = accountInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addGroup(GroupDelta groupDelta) {
            if (groupDelta.getShouldSync()) {
                this.mSyncedGroups.add(groupDelta);
            } else {
                this.mUnsyncedGroups.add(groupDelta);
            }
        }

        public void setShouldSync(boolean z) {
            Iterator<GroupDelta> it = (z ? this.mUnsyncedGroups : this.mSyncedGroups).iterator();
            while (it.hasNext()) {
                setShouldSync(it.next(), z, false);
                it.remove();
            }
        }

        public void setShouldSync(GroupDelta groupDelta, boolean z) {
            setShouldSync(groupDelta, z, true);
        }

        public void setShouldSync(GroupDelta groupDelta, boolean z, boolean z2) {
            groupDelta.putShouldSync(z);
            if (z) {
                if (z2) {
                    this.mUnsyncedGroups.remove(groupDelta);
                }
                this.mSyncedGroups.add(groupDelta);
                Collections.sort(this.mSyncedGroups, CustomContactListFilterActivity.sIdComparator);
                return;
            }
            if (z2) {
                this.mSyncedGroups.remove(groupDelta);
            }
            this.mUnsyncedGroups.add(groupDelta);
        }

        public void buildDiff(ArrayList<ContentProviderOperation> arrayList) {
            Iterator<GroupDelta> it = this.mSyncedGroups.iterator();
            while (it.hasNext()) {
                ContentProviderOperation buildDiff = it.next().buildDiff();
                if (buildDiff != null) {
                    arrayList.add(buildDiff);
                }
            }
            Iterator<GroupDelta> it2 = this.mUnsyncedGroups.iterator();
            while (it2.hasNext()) {
                ContentProviderOperation buildDiff2 = it2.next().buildDiff();
                if (buildDiff2 != null) {
                    arrayList.add(buildDiff2);
                }
            }
        }
    }

    protected static class DisplayAdapter extends BaseExpandableListAdapter {
        private AccountSet mAccounts;
        private Context mContext;
        private LayoutInflater mInflater;

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i) {
            return i;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i, int i2) {
            return true;
        }

        public DisplayAdapter(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            AccountTypeManager.getInstance(context);
        }

        public void setAccounts(AccountSet accountSet) {
            this.mAccounts = accountSet;
            notifyDataSetChanged();
        }

        @Override // android.widget.ExpandableListAdapter
        public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
            int i2 = 0;
            if (view == null) {
                view = this.mInflater.inflate(R.layout.custom_contact_list_filter_account, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(android.R.id.text1);
            TextView textView2 = (TextView) view.findViewById(android.R.id.text2);
            AccountDisplay accountDisplay = (AccountDisplay) getGroup(i);
            textView.setText(accountDisplay.mAccountInfo.getNameLabel());
            if (accountDisplay.mAccountInfo.isDeviceAccount() && !accountDisplay.mAccountInfo.hasDistinctName()) {
                i2 = 8;
            }
            textView.setVisibility(i2);
            textView2.setText(accountDisplay.mAccountInfo.getTypeLabel());
            int color = this.mContext.getResources().getColor(z ? R.color.dialtacts_theme_color : R.color.account_filter_text_color);
            textView.setTextColor(color);
            textView2.setTextColor(color);
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mInflater.inflate(R.layout.custom_contact_list_filter_group, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(android.R.id.text1);
            TextView textView2 = (TextView) view.findViewById(android.R.id.text2);
            CheckBox checkBox = (CheckBox) view.findViewById(android.R.id.checkbox);
            this.mAccounts.get(i);
            GroupDelta groupDelta = (GroupDelta) getChild(i, i2);
            if (groupDelta != null) {
                boolean visible = groupDelta.getVisible();
                checkBox.setVisibility(0);
                checkBox.setChecked(visible);
                textView.setText(groupDelta.getTitle(this.mContext));
                textView2.setVisibility(8);
            } else {
                checkBox.setVisibility(8);
                textView.setText(R.string.display_more_groups);
                textView2.setVisibility(8);
            }
            view.findViewById(R.id.adapter_divider_bottom).setVisibility(z ? 0 : 8);
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getChild(int i, int i2) {
            AccountDisplay accountDisplay = this.mAccounts.get(i);
            if (i2 >= 0 && i2 < accountDisplay.mSyncedGroups.size() + accountDisplay.mUnsyncedGroups.size()) {
                return accountDisplay.getGroup(i2);
            }
            return null;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i, int i2) {
            Long id;
            GroupDelta groupDelta = (GroupDelta) getChild(i, i2);
            if (groupDelta == null || (id = groupDelta.getId()) == null) {
                return Long.MIN_VALUE;
            }
            return id.longValue();
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i) {
            AccountDisplay accountDisplay = this.mAccounts.get(i);
            return accountDisplay.mSyncedGroups.size() + accountDisplay.mUnsyncedGroups.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getGroup(int i) {
            return this.mAccounts.get(i);
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            AccountSet accountSet = this.mAccounts;
            if (accountSet == null) {
                return 0;
            }
            return accountSet.size();
        }
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        CheckBox checkBox = (CheckBox) view.findViewById(android.R.id.checkbox);
        GroupDelta groupDelta = (GroupDelta) this.mAdapter.getChild(i, i2);
        if (groupDelta != null) {
            checkBox.toggle();
            groupDelta.putVisible(checkBox.isChecked());
            return true;
        }
        openContextMenu(view);
        return true;
    }

    protected int getSyncMode(AccountDisplay accountDisplay) {
        return (GoogleAccountType.ACCOUNT_TYPE.equals(accountDisplay.mType) && accountDisplay.mDataSet == null) ? 2 : 0;
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (contextMenuInfo instanceof ExpandableListView.ExpandableListContextMenuInfo) {
            ExpandableListView.ExpandableListContextMenuInfo expandableListContextMenuInfo = (ExpandableListView.ExpandableListContextMenuInfo) contextMenuInfo;
            int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListContextMenuInfo.packedPosition);
            int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListContextMenuInfo.packedPosition);
            if (packedPositionChild == -1) {
                return;
            }
            AccountDisplay accountDisplay = (AccountDisplay) this.mAdapter.getGroup(packedPositionGroup);
            GroupDelta groupDelta = (GroupDelta) this.mAdapter.getChild(packedPositionGroup, packedPositionChild);
            int syncMode = getSyncMode(accountDisplay);
            if (syncMode == 0) {
                return;
            }
            if (groupDelta != null) {
                showRemoveSync(contextMenu, accountDisplay, groupDelta, syncMode);
            } else {
                showAddSync(contextMenu, accountDisplay, syncMode);
            }
        }
    }

    protected void showRemoveSync(ContextMenu contextMenu, final AccountDisplay accountDisplay, final GroupDelta groupDelta, final int i) {
        final CharSequence title = groupDelta.getTitle(this);
        contextMenu.setHeaderTitle(title);
        contextMenu.add(R.string.menu_sync_remove).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.list.CustomContactListFilterActivity.3
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                CustomContactListFilterActivity.this.handleRemoveSync(accountDisplay, groupDelta, i, title);
                return true;
            }
        });
    }

    protected void handleRemoveSync(final AccountDisplay accountDisplay, final GroupDelta groupDelta, int i, CharSequence charSequence) {
        boolean shouldSync = accountDisplay.mUngrouped.getShouldSync();
        if (i == 2 && shouldSync && !groupDelta.equals(accountDisplay.mUngrouped)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            String string = getString(R.string.display_warn_remove_ungrouped, new Object[]{charSequence});
            builder.setTitle(R.string.menu_sync_remove);
            builder.setMessage(string);
            builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
            builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.CustomContactListFilterActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    AccountDisplay accountDisplay2 = accountDisplay;
                    accountDisplay2.setShouldSync(accountDisplay2.mUngrouped, false);
                    accountDisplay.setShouldSync(groupDelta, false);
                    CustomContactListFilterActivity.this.mAdapter.notifyDataSetChanged();
                }
            });
            builder.show();
            return;
        }
        accountDisplay.setShouldSync(groupDelta, false);
        this.mAdapter.notifyDataSetChanged();
    }

    protected void showAddSync(ContextMenu contextMenu, final AccountDisplay accountDisplay, final int i) {
        contextMenu.setHeaderTitle(R.string.dialog_sync_add);
        Iterator<GroupDelta> it = accountDisplay.mUnsyncedGroups.iterator();
        while (it.hasNext()) {
            final GroupDelta next = it.next();
            if (!next.getShouldSync()) {
                contextMenu.add(next.getTitle(this)).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.list.CustomContactListFilterActivity.5
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        if (next.mUngrouped && i == 2) {
                            accountDisplay.setShouldSync(true);
                        } else {
                            accountDisplay.setShouldSync(next, true);
                        }
                        CustomContactListFilterActivity.this.mAdapter.notifyDataSetChanged();
                        return true;
                    }
                });
            }
        }
    }

    private boolean hasUnsavedChanges() {
        DisplayAdapter displayAdapter = this.mAdapter;
        if (displayAdapter == null || displayAdapter.mAccounts == null) {
            return false;
        }
        return (getCurrentListFilterType() == -3 && this.mAdapter.mAccounts.buildDiff().isEmpty()) ? false : true;
    }

    private void doSaveAction() {
        DisplayAdapter displayAdapter = this.mAdapter;
        if (displayAdapter == null || displayAdapter.mAccounts == null) {
            finish();
            return;
        }
        setResult(-1);
        ArrayList<ContentProviderOperation> buildDiff = this.mAdapter.mAccounts.buildDiff();
        if (buildDiff.isEmpty()) {
            finish();
        } else {
            new UpdateTask(this).execute(buildDiff);
        }
    }

    public static class UpdateTask extends WeakAsyncTask<ArrayList<ContentProviderOperation>, Void, Void, Activity> {
        private ProgressDialog mProgress;

        public UpdateTask(Activity activity) {
            super(activity);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public void onPreExecute(Activity activity) {
            this.mProgress = ProgressDialog.show(activity, null, activity.getText(R.string.savingDisplayGroups));
            activity.startService(new Intent(activity, (Class<?>) EmptyService.class));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public Void doInBackground(Activity activity, ArrayList<ContentProviderOperation>... arrayListArr) {
            new ContentValues();
            try {
                activity.getContentResolver().applyBatch("com.android.contacts", arrayListArr[0]);
                return null;
            } catch (OperationApplicationException e) {
                Log.e("CustomContactListFilter", "Problem saving display groups", e);
                return null;
            } catch (RemoteException e2) {
                Log.e("CustomContactListFilter", "Problem saving display groups", e2);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public void onPostExecute(Activity activity, Void r4) {
            try {
                this.mProgress.dismiss();
            } catch (Exception e) {
                Log.e("CustomContactListFilter", "Error dismissing progress dialog", e);
            }
            activity.finish();
            activity.stopService(new Intent(activity, (Class<?>) EmptyService.class));
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, R.id.menu_save, 0, R.string.menu_custom_filter_save).setShowAsAction(2);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            confirmFinish();
            return true;
        }
        if (itemId == R.id.menu_save) {
            doSaveAction();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        confirmFinish();
    }

    private void confirmFinish() {
        if (hasUnsavedChanges()) {
            new ConfirmNavigationDialogFragment().show(getFragmentManager(), "ConfirmNavigationDialog");
        } else {
            setResult(0);
            finish();
        }
    }

    private int getCurrentListFilterType() {
        return getIntent().getIntExtra("currentListFilterType", -2);
    }

    public static class ConfirmNavigationDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity(), getTheme()).setMessage(R.string.leave_customize_confirmation_dialog_message).setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.yes, this).create();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                getActivity().setResult(0);
                getActivity().finish();
            }
        }
    }
}
