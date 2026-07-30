package com.android.contacts.list;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Loader;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.common.widget.CompositeCursorAdapter;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ContactBrowseListFragment extends MultiSelectContactsListFragment<ContactListAdapter> {
    private ContactLookupTask mContactLookupTask;
    private boolean mDelaySelection;
    private ContactListFilter mFilter;
    private Handler mHandler;
    protected OnContactBrowserActionListener mListener;
    private SharedPreferences mPrefs;
    private boolean mRefreshingContactUri;
    private long mSelectedContactDirectoryId;
    private long mSelectedContactId;
    private String mSelectedContactLookupKey;
    private Uri mSelectedContactUri;
    private boolean mSelectionPersistenceRequested;
    private boolean mSelectionRequired;
    private boolean mSelectionToScreenRequested;
    private boolean mSelectionVerified;
    private boolean mSmoothScrollRequested;
    private boolean mStartedLoading;
    private int mLastSelectedPosition = -1;
    private String mPersistentSelectionPrefix = "defaultContactBrowserSelection";

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    private final class ContactLookupTask extends AsyncTask<Void, Void, Uri> {
        private boolean mIsCancelled;
        private final Uri mUri;

        public ContactLookupTask(Uri uri) {
            this.mUri = uri;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Not initialized variable reg: 1, insn: 0x0089: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:28:0x0089 */
        /* JADX WARN: Removed duplicated region for block: B:30:0x008c  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.net.Uri doInBackground(java.lang.Void... r9) {
            /*
                r8 = this;
                java.lang.String r9 = "ContactList"
                r0 = 0
                com.android.contacts.list.ContactBrowseListFragment r1 = com.android.contacts.list.ContactBrowseListFragment.this     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                android.net.Uri r1 = r8.mUri     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                android.net.Uri r3 = com.android.contacts.util.ContactLoaderUtils.ensureIsContactUri(r2, r1)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                java.lang.String r1 = "_id"
                java.lang.String r4 = "lookup"
                java.lang.String[] r4 = new java.lang.String[]{r1, r4}     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                r5 = 0
                r6 = 0
                r7 = 0
                android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
                if (r1 == 0) goto L4c
                boolean r2 = r1.moveToFirst()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                if (r2 == 0) goto L4c
                r2 = 0
                long r2 = r1.getLong(r2)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                r4 = 1
                java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                r5 = 0
                int r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
                if (r7 == 0) goto L4c
                boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                if (r5 != 0) goto L4c
                android.net.Uri r9 = android.provider.ContactsContract.Contacts.getLookupUri(r2, r4)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                if (r1 == 0) goto L49
                r1.close()
            L49:
                return r9
            L4a:
                r2 = move-exception
                goto L6c
            L4c:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                r2.<init>()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                java.lang.String r3 = "Error: No contact ID or lookup key for contact "
                r2.append(r3)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                android.net.Uri r3 = r8.mUri     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                r2.append(r3)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                android.util.Log.e(r9, r2)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L88
                if (r1 == 0) goto L67
                r1.close()
            L67:
                return r0
            L68:
                r9 = move-exception
                goto L8a
            L6a:
                r2 = move-exception
                r1 = r0
            L6c:
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L88
                r3.<init>()     // Catch: java.lang.Throwable -> L88
                java.lang.String r4 = "Error loading the contact: "
                r3.append(r4)     // Catch: java.lang.Throwable -> L88
                android.net.Uri r4 = r8.mUri     // Catch: java.lang.Throwable -> L88
                r3.append(r4)     // Catch: java.lang.Throwable -> L88
                java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L88
                android.util.Log.e(r9, r3, r2)     // Catch: java.lang.Throwable -> L88
                if (r1 == 0) goto L87
                r1.close()
            L87:
                return r0
            L88:
                r9 = move-exception
                r0 = r1
            L8a:
                if (r0 == 0) goto L8f
                r0.close()
            L8f:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ContactBrowseListFragment.ContactLookupTask.doInBackground(java.lang.Void[]):android.net.Uri");
        }

        public void cancel() {
            super.cancel(true);
            this.mIsCancelled = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Uri uri) {
            if (this.mIsCancelled || !ContactBrowseListFragment.this.isAdded()) {
                return;
            }
            ContactBrowseListFragment.this.onContactUriQueryFinished(uri);
        }
    }

    private Handler getHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler() { // from class: com.android.contacts.list.ContactBrowseListFragment.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what != 1) {
                        return;
                    }
                    ContactBrowseListFragment.this.selectDefaultContact();
                }
            };
        }
        return this.mHandler;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(activity);
        restoreFilter();
        restoreSelectedUri(false);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void setSearchMode(boolean z) {
        if (isSearchMode() != z) {
            if (!z) {
                restoreSelectedUri(true);
            }
            super.setSearchMode(z);
        }
    }

    public void updateListFilter(ContactListFilter contactListFilter, boolean z) {
        if (this.mFilter == null && contactListFilter == null) {
            return;
        }
        ContactListFilter contactListFilter2 = this.mFilter;
        if (contactListFilter2 != null && contactListFilter2.equals(contactListFilter)) {
            setLogListEvents(false);
            return;
        }
        if (Log.isLoggable("ContactList", 2)) {
            Log.v("ContactList", "New filter: " + contactListFilter);
        }
        setListType(contactListFilter.toListType());
        setLogListEvents(true);
        this.mFilter = contactListFilter;
        this.mLastSelectedPosition = -1;
        if (z) {
            this.mSelectedContactUri = null;
            restoreSelectedUri(true);
        }
        reloadData();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void restoreSavedState(Bundle bundle) {
        super.restoreSavedState(bundle);
        if (bundle == null) {
            return;
        }
        this.mFilter = (ContactListFilter) bundle.getParcelable("filter");
        this.mSelectedContactUri = (Uri) bundle.getParcelable("selectedUri");
        this.mSelectionVerified = bundle.getBoolean("selectionVerified");
        this.mLastSelectedPosition = bundle.getInt("lastSelected");
        parseSelectedContactUri();
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("filter", this.mFilter);
        bundle.putParcelable("selectedUri", this.mSelectedContactUri);
        bundle.putBoolean("selectionVerified", this.mSelectionVerified);
        bundle.putInt("lastSelected", this.mLastSelectedPosition);
    }

    protected void refreshSelectedContactUri() {
        ContactLookupTask contactLookupTask = this.mContactLookupTask;
        if (contactLookupTask != null) {
            contactLookupTask.cancel();
        }
        if (isSelectionVisible()) {
            this.mRefreshingContactUri = true;
            Uri uri = this.mSelectedContactUri;
            if (uri == null) {
                onContactUriQueryFinished(null);
                return;
            }
            long j = this.mSelectedContactDirectoryId;
            if (j != 0 && j != 1) {
                onContactUriQueryFinished(uri);
                return;
            }
            ContactLookupTask contactLookupTask2 = new ContactLookupTask(this.mSelectedContactUri);
            this.mContactLookupTask = contactLookupTask2;
            contactLookupTask2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }

    protected void onContactUriQueryFinished(Uri uri) {
        this.mRefreshingContactUri = false;
        this.mSelectedContactUri = uri;
        parseSelectedContactUri();
        checkSelection();
    }

    public void setSelectedContactUri(Uri uri) {
        setSelectedContactUri(uri, true, false, true, false);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void setQueryString(String str, boolean z) {
        this.mDelaySelection = z;
        super.setQueryString(str, z);
    }

    private void setSelectedContactUri(Uri uri, boolean z, boolean z2, boolean z3, boolean z4) {
        Uri uri2;
        ContactListAdapter adapter;
        this.mSmoothScrollRequested = z2;
        this.mSelectionToScreenRequested = true;
        if ((this.mSelectedContactUri != null || uri == null) && ((uri2 = this.mSelectedContactUri) == null || uri2.equals(uri))) {
            return;
        }
        this.mSelectionVerified = false;
        this.mSelectionRequired = z;
        this.mSelectionPersistenceRequested = z3;
        this.mSelectedContactUri = uri;
        parseSelectedContactUri();
        if (!z4 && (adapter = getAdapter()) != null) {
            adapter.setSelectedContact(this.mSelectedContactDirectoryId, this.mSelectedContactLookupKey, this.mSelectedContactId);
            getListView().invalidateViews();
        }
        refreshSelectedContactUri();
    }

    private void parseSelectedContactUri() {
        Uri uri = this.mSelectedContactUri;
        if (uri != null) {
            String queryParameter = uri.getQueryParameter("directory");
            this.mSelectedContactDirectoryId = TextUtils.isEmpty(queryParameter) ? 0L : Long.parseLong(queryParameter);
            if (this.mSelectedContactUri.toString().startsWith(ContactsContract.Contacts.CONTENT_LOOKUP_URI.toString())) {
                List<String> pathSegments = this.mSelectedContactUri.getPathSegments();
                this.mSelectedContactLookupKey = Uri.encode(pathSegments.get(2));
                if (pathSegments.size() == 4) {
                    this.mSelectedContactId = ContentUris.parseId(this.mSelectedContactUri);
                    return;
                }
                return;
            }
            if (this.mSelectedContactUri.toString().startsWith(ContactsContract.Contacts.CONTENT_URI.toString()) && this.mSelectedContactUri.getPathSegments().size() >= 2) {
                this.mSelectedContactLookupKey = null;
                this.mSelectedContactId = ContentUris.parseId(this.mSelectedContactUri);
                return;
            }
            Log.e("ContactList", "Unsupported contact URI: " + this.mSelectedContactUri);
            this.mSelectedContactLookupKey = null;
            this.mSelectedContactId = 0L;
            return;
        }
        this.mSelectedContactDirectoryId = 0L;
        this.mSelectedContactLookupKey = null;
        this.mSelectedContactId = 0L;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public ContactListAdapter getAdapter() {
        return (ContactListAdapter) super.getAdapter();
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected void configureAdapter() {
        ContactListFilter contactListFilter;
        super.configureAdapter();
        ContactListAdapter adapter = getAdapter();
        if (adapter == null) {
            return;
        }
        boolean isSearchMode = isSearchMode();
        if (!isSearchMode && (contactListFilter = this.mFilter) != null) {
            adapter.setFilter(contactListFilter);
            if (this.mSelectionRequired || this.mFilter.filterType == -6) {
                adapter.setSelectedContact(this.mSelectedContactDirectoryId, this.mSelectedContactLookupKey, this.mSelectedContactId);
            }
        }
        adapter.setIncludeFavorites(!isSearchMode && this.mFilter.isContactsFilterType());
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        super.onLoadFinished(loader, cursor);
        this.mSelectionVerified = false;
        refreshSelectedContactUri();
    }

    private void checkSelection() {
        ContactListAdapter adapter;
        boolean z;
        int i;
        if (this.mSelectionVerified || this.mRefreshingContactUri || isLoadingDirectoryList() || (adapter = getAdapter()) == null) {
            return;
        }
        int partitionCount = adapter.getPartitionCount();
        int i2 = 0;
        while (true) {
            if (i2 >= partitionCount) {
                z = true;
                break;
            }
            CompositeCursorAdapter.Partition partition = adapter.getPartition(i2);
            if (partition instanceof DirectoryPartition) {
                DirectoryPartition directoryPartition = (DirectoryPartition) partition;
                if (directoryPartition.getDirectoryId() == this.mSelectedContactDirectoryId) {
                    z = directoryPartition.isLoading();
                    break;
                }
            }
            i2++;
        }
        if (z) {
            return;
        }
        adapter.setSelectedContact(this.mSelectedContactDirectoryId, this.mSelectedContactLookupKey, this.mSelectedContactId);
        int selectedContactPosition = adapter.getSelectedContactPosition();
        if (selectedContactPosition != -1) {
            this.mLastSelectedPosition = selectedContactPosition;
        } else {
            if (isSearchMode()) {
                if (this.mDelaySelection) {
                    selectFirstFoundContactAfterDelay();
                    OnContactBrowserActionListener onContactBrowserActionListener = this.mListener;
                    if (onContactBrowserActionListener != null) {
                        onContactBrowserActionListener.onSelectionChange();
                        return;
                    }
                    return;
                }
            } else {
                if (this.mSelectionRequired) {
                    this.mSelectionRequired = false;
                    ContactListFilter contactListFilter = this.mFilter;
                    if (contactListFilter != null && ((i = contactListFilter.filterType) == -6 || i == -2)) {
                        reloadData();
                        return;
                    } else {
                        notifyInvalidSelection();
                        return;
                    }
                }
                ContactListFilter contactListFilter2 = this.mFilter;
                if (contactListFilter2 != null && contactListFilter2.filterType == -6) {
                    notifyInvalidSelection();
                    return;
                }
            }
            saveSelectedUri(null);
            selectDefaultContact();
        }
        this.mSelectionRequired = false;
        this.mSelectionVerified = true;
        if (this.mSelectionPersistenceRequested) {
            saveSelectedUri(this.mSelectedContactUri);
            this.mSelectionPersistenceRequested = false;
        }
        if (this.mSelectionToScreenRequested) {
            requestSelectionToScreen(selectedContactPosition);
        }
        getListView().invalidateViews();
        OnContactBrowserActionListener onContactBrowserActionListener2 = this.mListener;
        if (onContactBrowserActionListener2 != null) {
            onContactBrowserActionListener2.onSelectionChange();
        }
    }

    public void selectFirstFoundContactAfterDelay() {
        Handler handler = getHandler();
        handler.removeMessages(1);
        String queryString = getQueryString();
        if (queryString != null && queryString.length() >= 2) {
            handler.sendEmptyMessageDelayed(1, 500L);
        } else {
            setSelectedContactUri(null, false, false, false, false);
        }
    }

    protected void selectDefaultContact() {
        Uri uri;
        ContactListAdapter adapter = getAdapter();
        if (this.mLastSelectedPosition != -1) {
            int count = adapter.getCount();
            int i = this.mLastSelectedPosition;
            if (i >= count && count > 0) {
                i = count - 1;
            }
            uri = adapter.getContactUri(i);
        } else {
            uri = null;
        }
        if (uri == null) {
            uri = adapter.getFirstContactUri();
        }
        setSelectedContactUri(uri, false, this.mSmoothScrollRequested, false, false);
    }

    protected void requestSelectionToScreen(int i) {
        if (i != -1) {
            AutoScrollListView autoScrollListView = (AutoScrollListView) getListView();
            autoScrollListView.requestPositionToScreen(i + autoScrollListView.getHeaderViewsCount(), this.mSmoothScrollRequested);
            this.mSelectionToScreenRequested = false;
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public boolean isLoading() {
        return this.mRefreshingContactUri || super.isLoading();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void startLoading() {
        this.mStartedLoading = true;
        this.mSelectionVerified = false;
        super.startLoading();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void reloadData() {
        if (this.mStartedLoading) {
            this.mSelectionVerified = false;
            this.mLastSelectedPosition = -1;
            super.reloadData();
        }
    }

    public void setOnContactListActionListener(OnContactBrowserActionListener onContactBrowserActionListener) {
        this.mListener = onContactBrowserActionListener;
    }

    public void viewContact(int i, Uri uri, boolean z) {
        setSelectedContactUri(uri, false, false, true, false);
        OnContactBrowserActionListener onContactBrowserActionListener = this.mListener;
        if (onContactBrowserActionListener != null) {
            onContactBrowserActionListener.onViewContactAction(i, uri, z);
        }
    }

    private void notifyInvalidSelection() {
        OnContactBrowserActionListener onContactBrowserActionListener = this.mListener;
        if (onContactBrowserActionListener != null) {
            onContactBrowserActionListener.onInvalidSelection();
        }
    }

    private void saveSelectedUri(Uri uri) {
        if (isSearchMode()) {
            return;
        }
        ContactListFilter.storeToPreferences(this.mPrefs, this.mFilter);
        SharedPreferences.Editor edit = this.mPrefs.edit();
        if (uri == null) {
            edit.remove(getPersistentSelectionKey());
        } else {
            edit.putString(getPersistentSelectionKey(), uri.toString());
        }
        edit.apply();
    }

    private void restoreSelectedUri(boolean z) {
        if (this.mSelectionRequired) {
            return;
        }
        String string = this.mPrefs.getString(getPersistentSelectionKey(), null);
        if (string == null) {
            setSelectedContactUri(null, false, false, false, z);
        } else {
            setSelectedContactUri(Uri.parse(string), false, false, false, z);
        }
    }

    private void restoreFilter() {
        this.mFilter = ContactListFilter.restoreDefaultPreferences(this.mPrefs);
    }

    private String getPersistentSelectionKey() {
        if (this.mFilter == null) {
            return this.mPersistentSelectionPrefix;
        }
        return this.mPersistentSelectionPrefix + "-" + this.mFilter.getId();
    }
}
