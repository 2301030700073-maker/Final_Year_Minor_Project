package com.android.contacts.list;

import android.R;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class PostalAddressListAdapter extends ContactEntryListAdapter {
    private final CharSequence mUnknownNameText;

    protected static class PostalQuery {
        private static final String[] PROJECTION_PRIMARY = {"_id", "data2", "data3", "data1", "photo_id", "lookup", "display_name"};
        private static final String[] PROJECTION_ALTERNATIVE = {"_id", "data2", "data3", "data1", "photo_id", "lookup", "display_name_alt"};
    }

    public PostalAddressListAdapter(Context context) {
        super(context);
        this.mUnknownNameText = context.getText(R.string.unknownName);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void configureLoader(CursorLoader cursorLoader, long j) {
        Uri.Builder appendQueryParameter = ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI.buildUpon().appendQueryParameter("remove_duplicate_entries", "true");
        if (isSectionHeaderDisplayEnabled()) {
            appendQueryParameter.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
        }
        cursorLoader.setUri(appendQueryParameter.build());
        if (getContactNameDisplayOrder() == 1) {
            cursorLoader.setProjection(PostalQuery.PROJECTION_PRIMARY);
        } else {
            cursorLoader.setProjection(PostalQuery.PROJECTION_ALTERNATIVE);
        }
        if (getSortOrder() == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    public Uri getDataUri(int i) {
        return ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, ((Cursor) getItem(i)).getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    public ContactListItemView newView(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView newView = super.newView(context, i, cursor, i2, viewGroup);
        newView.setUnknownNameText(this.mUnknownNameText);
        newView.setQuickContactEnabled(isQuickContactEnabled());
        newView.setIsSectionHeaderEnabled(isSectionHeaderDisplayEnabled());
        return newView;
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindView(View view, int i, Cursor cursor, int i2) {
        super.bindView(view, i, cursor, i2);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        bindSectionHeaderAndDivider(contactListItemView, i2);
        bindName(contactListItemView, cursor);
        bindViewId(contactListItemView, cursor, 0);
        bindPhoto(contactListItemView, cursor);
        bindPostalAddress(contactListItemView, cursor);
    }

    protected void bindPostalAddress(ContactListItemView contactListItemView, Cursor cursor) {
        CharSequence charSequence;
        if (cursor.isNull(1)) {
            charSequence = null;
        } else {
            charSequence = ContactsContract.CommonDataKinds.StructuredPostal.getTypeLabel(getContext().getResources(), cursor.getInt(1), cursor.getString(2));
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.showData(cursor, 3);
    }

    protected void bindSectionHeaderAndDivider(ContactListItemView contactListItemView, int i) {
        int sectionForPosition = getSectionForPosition(i);
        if (getPositionForSection(sectionForPosition) == i) {
            contactListItemView.setSectionHeader((String) getSections()[sectionForPosition]);
        } else {
            contactListItemView.setSectionHeader(null);
        }
    }

    protected void bindName(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.showDisplayName(cursor, 6, getContactNameDisplayOrder());
    }

    protected void bindPhoto(ContactListItemView contactListItemView, Cursor cursor) {
        long j = !cursor.isNull(4) ? cursor.getLong(4) : 0L;
        getPhotoLoader().loadThumbnail(contactListItemView.getPhotoView(), j, false, getCircularPhotos(), j == 0 ? getDefaultImageRequestFromCursor(cursor, 6, 5) : null);
    }
}
