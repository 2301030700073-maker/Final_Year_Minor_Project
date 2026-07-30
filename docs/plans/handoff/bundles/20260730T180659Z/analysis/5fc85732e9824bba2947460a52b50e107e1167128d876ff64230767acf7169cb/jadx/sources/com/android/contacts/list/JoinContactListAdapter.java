package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.contacts.R;

/* loaded from: classes.dex */
public class JoinContactListAdapter extends ContactListAdapter {
    private long mTargetContactId;

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindHeaderView(View view, int i, Cursor cursor) {
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return false;
    }

    public JoinContactListAdapter(Context context) {
        super(context);
        setPinnedPartitionHeadersEnabled(true);
        setSectionHeaderDisplayEnabled(true);
        setIndexedPartition(1);
        setDirectorySearchMode(0);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    protected void addPartitions() {
        addPartition(false, true);
        addPartition(createDefaultDirectoryPartition());
    }

    public void setTargetContactId(long j) {
        this.mTargetContactId = j;
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void configureLoader(CursorLoader cursorLoader, long j) {
        Uri build;
        JoinContactLoader joinContactLoader = (JoinContactLoader) cursorLoader;
        Uri.Builder buildUpon = ContactsContract.Contacts.CONTENT_URI.buildUpon();
        buildUpon.appendEncodedPath(String.valueOf(this.mTargetContactId));
        buildUpon.appendEncodedPath("suggestions");
        String queryString = getQueryString();
        if (!TextUtils.isEmpty(queryString)) {
            buildUpon.appendEncodedPath(Uri.encode(queryString));
        }
        buildUpon.appendQueryParameter("limit", String.valueOf(4));
        joinContactLoader.setSuggestionUri(buildUpon.build());
        joinContactLoader.setProjection(getProjection(false));
        if (!TextUtils.isEmpty(queryString)) {
            build = ContactListAdapter.buildSectionIndexerUri(ContactsContract.Contacts.CONTENT_FILTER_URI).buildUpon().appendEncodedPath(Uri.encode(queryString)).appendQueryParameter("directory", String.valueOf(0L)).build();
        } else {
            build = ContactListAdapter.buildSectionIndexerUri(ContactsContract.Contacts.CONTENT_URI).buildUpon().appendQueryParameter("directory", String.valueOf(0L)).build();
        }
        joinContactLoader.setUri(build);
        joinContactLoader.setSelection("_id!=?");
        joinContactLoader.setSelectionArgs(new String[]{String.valueOf(this.mTargetContactId)});
        if (getSortOrder() == 1) {
            joinContactLoader.setSortOrder("sort_key");
        } else {
            joinContactLoader.setSortOrder("sort_key_alt");
        }
    }

    public void setSuggestionsCursor(Cursor cursor) {
        changeCursor(0, cursor);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void configureDefaultPartition(boolean z, boolean z2) {
        super.configureDefaultPartition(false, true);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount();
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    public int getItemViewType(int i, int i2) {
        return super.getItemViewType(i, i2);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected View newHeaderView(Context context, int i, Cursor cursor, ViewGroup viewGroup) {
        if (i == 0) {
            View inflate = inflate(R.layout.join_contact_picker_section_header, viewGroup);
            ((TextView) inflate.findViewById(R.id.text)).setText(R.string.separatorJoinAggregateSuggestions);
            return inflate;
        }
        if (i != 1) {
            return null;
        }
        View inflate2 = inflate(R.layout.join_contact_picker_section_header, viewGroup);
        ((TextView) inflate2.findViewById(R.id.text)).setText(R.string.separatorJoinAggregateAll);
        return inflate2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactListAdapter, com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    public ContactListItemView newView(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        if (i == 0 || i == 1) {
            return super.newView(context, i, cursor, i2, viewGroup);
        }
        return null;
    }

    private View inflate(int i, ViewGroup viewGroup) {
        return LayoutInflater.from(getContext()).inflate(i, viewGroup, false);
    }

    @Override // com.android.contacts.list.MultiSelectEntryContactListAdapter, com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindView(View view, int i, Cursor cursor, int i2) {
        super.bindView(view, i, cursor, i2);
        if (i == 0) {
            ContactListItemView contactListItemView = (ContactListItemView) view;
            contactListItemView.setSectionHeader(null);
            bindPhoto(contactListItemView, i, cursor);
            bindNameAndViewId(contactListItemView, cursor);
            return;
        }
        if (i != 1) {
            return;
        }
        ContactListItemView contactListItemView2 = (ContactListItemView) view;
        bindSectionHeaderAndDivider(contactListItemView2, i2, cursor);
        bindPhoto(contactListItemView2, i, cursor);
        bindNameAndViewId(contactListItemView2, cursor);
    }

    @Override // com.android.contacts.list.ContactListAdapter
    public Uri getContactUri(int i, Cursor cursor) {
        return ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(6));
    }
}
