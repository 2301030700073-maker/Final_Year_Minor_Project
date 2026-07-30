package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.R;

/* loaded from: classes.dex */
public class HeaderEntryContactListAdapter extends DefaultContactListAdapter {
    private boolean mShowCreateContact;

    public HeaderEntryContactListAdapter(Context context) {
        super(context);
    }

    private int getHeaderEntryCount() {
        return (isSearchMode() || !this.mShowCreateContact) ? 0 : 1;
    }

    public void setShowCreateContact(boolean z) {
        this.mShowCreateContact = z;
        invalidate();
    }

    @Override // com.android.common.widget.CompositeCursorAdapter, android.widget.Adapter
    public int getCount() {
        return super.getCount() + getHeaderEntryCount();
    }

    @Override // com.android.common.widget.CompositeCursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ContactListItemView contactListItemView;
        if (i == 0 && getHeaderEntryCount() > 0) {
            if (view == null) {
                contactListItemView = newView(getContext(), 0, getCursor(0), 0, viewGroup);
            } else {
                contactListItemView = (ContactListItemView) view;
            }
            contactListItemView.setDrawableResource(R.drawable.quantum_ic_person_add_vd_theme_24);
            contactListItemView.setDisplayName(getContext().getResources().getString(R.string.header_entry_contact_list_adapter_header_title));
            return contactListItemView;
        }
        return super.getView(i - getHeaderEntryCount(), view, viewGroup);
    }

    @Override // com.android.common.widget.CompositeCursorAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return super.getItem(i - getHeaderEntryCount());
    }

    @Override // com.android.common.widget.CompositeCursorAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return i < getHeaderEntryCount() || super.isEnabled(i - getHeaderEntryCount());
    }

    @Override // com.android.common.widget.CompositeCursorAdapter
    public int getPartitionForPosition(int i) {
        return super.getPartitionForPosition(i - getHeaderEntryCount());
    }

    @Override // com.android.contacts.list.DefaultContactListAdapter, com.android.contacts.list.MultiSelectEntryContactListAdapter, com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindView(View view, int i, Cursor cursor, int i2) {
        super.bindView(view, i, cursor, i2 + getHeaderEntryCount());
    }

    @Override // com.android.common.widget.CompositeCursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i == 0 && getHeaderEntryCount() > 0) {
            return getViewTypeCount() - 1;
        }
        return super.getItemViewType(i - getHeaderEntryCount());
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    protected boolean getExtraStartingSection() {
        return getHeaderEntryCount() > 0;
    }
}
