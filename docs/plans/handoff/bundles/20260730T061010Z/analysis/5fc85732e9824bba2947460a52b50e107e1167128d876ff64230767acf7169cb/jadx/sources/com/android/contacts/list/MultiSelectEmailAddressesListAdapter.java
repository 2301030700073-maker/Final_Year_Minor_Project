package com.android.contacts.list;

import android.R;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.group.GroupUtil;

/* loaded from: classes.dex */
public class MultiSelectEmailAddressesListAdapter extends MultiSelectEntryContactListAdapter {
    private long[] mContactIdsFilter;
    private final CharSequence mUnknownNameText;

    protected static class EmailQuery {
        public static final String[] PROJECTION_PRIMARY = {"_id", "data2", "data3", "data1", "contact_id", "lookup", "photo_id", "display_name", "photo_thumb_uri"};
        public static final String[] PROJECTION_ALTERNATIVE = {"_id", "data2", "data3", "data1", "contact_id", "lookup", "photo_id", "display_name_alt", "photo_thumb_uri"};
    }

    public MultiSelectEmailAddressesListAdapter(Context context) {
        super(context, 0);
        this.mContactIdsFilter = null;
        this.mUnknownNameText = context.getText(R.string.unknownName);
    }

    public void setArguments(Bundle bundle) {
        this.mContactIdsFilter = bundle.getLongArray("com.android.contacts.extra.SELECTION_ITEM_LIST");
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void configureLoader(CursorLoader cursorLoader, long j) {
        Uri.Builder buildUpon;
        if (isSearchMode()) {
            buildUpon = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon();
            String queryString = getQueryString();
            if (TextUtils.isEmpty(queryString)) {
                queryString = "";
            }
            buildUpon.appendPath(queryString);
        } else {
            buildUpon = ContactsContract.CommonDataKinds.Email.CONTENT_URI.buildUpon();
            if (isSectionHeaderDisplayEnabled()) {
                buildUpon.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
            }
        }
        buildUpon.appendQueryParameter("directory", String.valueOf(j));
        cursorLoader.setUri(buildUpon.build());
        if (this.mContactIdsFilter != null) {
            cursorLoader.setSelection("contact_id IN (" + GroupUtil.convertArrayToString(this.mContactIdsFilter) + ")");
        }
        if (getContactNameDisplayOrder() == 1) {
            cursorLoader.setProjection(EmailQuery.PROJECTION_PRIMARY);
        } else {
            cursorLoader.setProjection(EmailQuery.PROJECTION_ALTERNATIVE);
        }
        if (getSortOrder() == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    public ContactListItemView newView(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView newView = super.newView(context, i, cursor, i2, viewGroup);
        newView.setUnknownNameText(this.mUnknownNameText);
        newView.setQuickContactEnabled(isQuickContactEnabled());
        return newView;
    }

    @Override // com.android.contacts.list.MultiSelectEntryContactListAdapter, com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindView(View view, int i, Cursor cursor, int i2) {
        super.bindView(view, i, cursor, i2);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        cursor.moveToPosition(i2);
        boolean z = (cursor.moveToPrevious() && !cursor.isBeforeFirst() && cursor.getLong(4) == cursor.getLong(4)) ? false : true;
        cursor.moveToPosition(i2);
        bindViewId(contactListItemView, cursor, 0);
        if (z) {
            bindName(contactListItemView, cursor);
            bindPhoto(contactListItemView, cursor, 6, 5, 7);
        } else {
            unbindName(contactListItemView);
            contactListItemView.removePhotoView(true, false);
        }
        bindEmailAddress(contactListItemView, cursor);
    }

    protected void unbindName(ContactListItemView contactListItemView) {
        contactListItemView.hideDisplayName();
    }

    protected void bindEmailAddress(ContactListItemView contactListItemView, Cursor cursor) {
        CharSequence charSequence;
        if (cursor.isNull(1)) {
            charSequence = null;
        } else {
            charSequence = ContactsContract.CommonDataKinds.Email.getTypeLabel(getContext().getResources(), cursor.getInt(1), cursor.getString(2));
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.showData(cursor, 3);
    }

    protected void bindName(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.showDisplayName(cursor, 7, getContactNameDisplayOrder());
    }
}
