package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.CallUtil;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.ContactsUtils;
import com.android.contacts.GeoUtil;
import com.android.contacts.R;
import com.android.contacts.compat.CallableCompat;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.compat.DirectoryCompat;
import com.android.contacts.compat.PhoneCompat;
import com.android.contacts.extensions.ExtendedPhoneDirectoriesManager;
import com.android.contacts.extensions.ExtensionsFactory;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.IndexerListAdapter;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PhoneNumberListAdapter extends ContactEntryListAdapter {
    private static final String TAG = PhoneNumberListAdapter.class.getSimpleName();
    private final String mCountryIso;
    private final List<DirectoryPartition> mExtendedDirectories;
    private long mFirstExtendedDirectoryId;
    private boolean mIsPresenceEnabled;
    private boolean mIsVideoEnabled;
    private Listener mListener;
    private ContactListItemView.PhotoPosition mPhotoPosition;
    private final CharSequence mUnknownNameText;
    private boolean mUseCallableUri;

    public interface Listener {
        void onVideoCallIconClicked(int i);
    }

    public static class PhoneQuery {
        public static final String[] PROJECTION_ALTERNATIVE;
        public static final String[] PROJECTION_ALTERNATIVE_INTERNAL;
        public static final String[] PROJECTION_PRIMARY;
        public static final String[] PROJECTION_PRIMARY_INTERNAL;

        static {
            String[] strArr = {"_id", "data2", "data3", "data1", "contact_id", "lookup", "photo_id", "display_name", "photo_thumb_uri"};
            PROJECTION_PRIMARY_INTERNAL = strArr;
            ArrayList newArrayList = Lists.newArrayList(strArr);
            if (CompatUtils.isMarshmallowCompatible()) {
                newArrayList.add("carrier_presence");
            }
            PROJECTION_PRIMARY = (String[]) newArrayList.toArray(new String[newArrayList.size()]);
            String[] strArr2 = {"_id", "data2", "data3", "data1", "contact_id", "lookup", "photo_id", "display_name_alt", "photo_thumb_uri"};
            PROJECTION_ALTERNATIVE_INTERNAL = strArr2;
            ArrayList newArrayList2 = Lists.newArrayList(strArr2);
            if (CompatUtils.isMarshmallowCompatible()) {
                newArrayList2.add("carrier_presence");
            }
            PROJECTION_ALTERNATIVE = (String[]) newArrayList2.toArray(new String[newArrayList2.size()]);
        }
    }

    public PhoneNumberListAdapter(Context context) {
        super(context);
        this.mFirstExtendedDirectoryId = Long.MAX_VALUE;
        setDefaultFilterHeaderText(R.string.list_filter_phones);
        this.mUnknownNameText = context.getText(android.R.string.unknownName);
        this.mCountryIso = GeoUtil.getCurrentCountryIso(context);
        ExtendedPhoneDirectoriesManager extendedPhoneDirectoriesManager = ExtensionsFactory.getExtendedPhoneDirectoriesManager();
        if (extendedPhoneDirectoriesManager != null) {
            this.mExtendedDirectories = extendedPhoneDirectoriesManager.getExtendedDirectories(((IndexerListAdapter) this).mContext);
        } else {
            this.mExtendedDirectories = new ArrayList();
        }
        int videoCallingAvailability = CallUtil.getVideoCallingAvailability(context);
        this.mIsVideoEnabled = (videoCallingAvailability & 1) != 0;
        this.mIsPresenceEnabled = (videoCallingAvailability & 2) != 0;
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void configureLoader(CursorLoader cursorLoader, long j) {
        Uri.Builder appendQueryParameter;
        Uri contentFilterUri;
        String queryString = getQueryString();
        if (queryString == null) {
            queryString = "";
        }
        if (isExtendedDirectory(j)) {
            DirectoryPartition extendedDirectoryFromId = getExtendedDirectoryFromId(j);
            String contentUri = extendedDirectoryFromId.getContentUri();
            if (contentUri == null) {
                throw new IllegalStateException("Extended directory must have a content URL: " + extendedDirectoryFromId);
            }
            Uri.Builder buildUpon = Uri.parse(contentUri).buildUpon();
            buildUpon.appendPath(queryString);
            buildUpon.appendQueryParameter("limit", String.valueOf(getDirectoryResultLimit(extendedDirectoryFromId)));
            cursorLoader.setUri(buildUpon.build());
            cursorLoader.setProjection(PhoneQuery.PROJECTION_PRIMARY);
            return;
        }
        boolean isRemoteDirectoryId = DirectoryCompat.isRemoteDirectoryId(j);
        if (isSearchMode()) {
            if (isRemoteDirectoryId) {
                contentFilterUri = PhoneCompat.getContentFilterUri();
            } else if (this.mUseCallableUri) {
                contentFilterUri = CallableCompat.getContentFilterUri();
            } else {
                contentFilterUri = PhoneCompat.getContentFilterUri();
            }
            appendQueryParameter = contentFilterUri.buildUpon();
            appendQueryParameter.appendPath(queryString);
            appendQueryParameter.appendQueryParameter("directory", String.valueOf(j));
            if (isRemoteDirectoryId) {
                appendQueryParameter.appendQueryParameter("limit", String.valueOf(getDirectoryResultLimit(getDirectoryById(j))));
            }
        } else {
            appendQueryParameter = (this.mUseCallableUri ? ContactsContract.CommonDataKinds.Callable.CONTENT_URI : ContactsContract.CommonDataKinds.Phone.CONTENT_URI).buildUpon().appendQueryParameter("directory", String.valueOf(0L));
            if (isSectionHeaderDisplayEnabled()) {
                appendQueryParameter.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
            }
            applyFilter(cursorLoader, appendQueryParameter, j, getFilter());
        }
        String selection = cursorLoader.getSelection();
        String str = "length(data1) < 1000";
        if (!TextUtils.isEmpty(selection)) {
            str = selection + " AND length(data1) < 1000";
        }
        cursorLoader.setSelection(str);
        appendQueryParameter.appendQueryParameter("remove_duplicate_entries", "true");
        cursorLoader.setUri(appendQueryParameter.build());
        if (getContactNameDisplayOrder() == 1) {
            cursorLoader.setProjection(PhoneQuery.PROJECTION_PRIMARY);
        } else {
            cursorLoader.setProjection(PhoneQuery.PROJECTION_ALTERNATIVE);
        }
        if (getSortOrder() == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    protected boolean isExtendedDirectory(long j) {
        return j >= this.mFirstExtendedDirectoryId;
    }

    private DirectoryPartition getExtendedDirectoryFromId(long j) {
        return this.mExtendedDirectories.get((int) (j - this.mFirstExtendedDirectoryId));
    }

    private void applyFilter(CursorLoader cursorLoader, Uri.Builder builder, long j, ContactListFilter contactListFilter) {
        if (contactListFilter == null || j != 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int i = contactListFilter.filterType;
        if (i != -5) {
            if (i == -3) {
                sb.append("in_visible_group=1");
                sb.append(" AND has_phone_number=1");
            } else if (i != -2 && i != -1) {
                if (i == 0) {
                    contactListFilter.addAccountQueryParameterToUrl(builder);
                } else {
                    Log.w(TAG, "Unsupported filter type came (type: " + contactListFilter.filterType + ", toString: " + contactListFilter + ") showing all contacts.");
                }
            }
        }
        cursorLoader.setSelection(sb.toString());
        cursorLoader.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
    }

    public String getPhoneNumber(int i) {
        Cursor cursor = (Cursor) getItem(i);
        if (cursor != null) {
            return cursor.getString(3);
        }
        return null;
    }

    public Uri getDataUri(int i) {
        int partitionForPosition = getPartitionForPosition(i);
        Cursor cursor = (Cursor) getItem(i);
        if (cursor != null) {
            return getDataUri(partitionForPosition, cursor);
        }
        return null;
    }

    public Uri getDataUri(int i, Cursor cursor) {
        long directoryId = ((DirectoryPartition) getPartition(i)).getDirectoryId();
        if (DirectoryCompat.isRemoteDirectoryId(directoryId) || DirectoryCompat.isEnterpriseDirectoryId(directoryId)) {
            return null;
        }
        return ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, cursor.getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    public ContactListItemView newView(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView newView = super.newView(context, i, cursor, i2, viewGroup);
        newView.setUnknownNameText(this.mUnknownNameText);
        newView.setQuickContactEnabled(isQuickContactEnabled());
        newView.setPhotoPosition(this.mPhotoPosition);
        return newView;
    }

    protected void setHighlight(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.setHighlightedPrefix(isSearchMode() ? getUpperCaseQueryString() : null);
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter, com.android.common.widget.CompositeCursorAdapter
    protected void bindView(View view, int i, Cursor cursor, int i2) {
        super.bindView(view, i, cursor, i2);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        setHighlight(contactListItemView, cursor);
        cursor.moveToPosition(i2);
        long j = cursor.getLong(4);
        boolean z = (cursor.moveToPrevious() && !cursor.isBeforeFirst() && j == cursor.getLong(4)) ? false : true;
        cursor.moveToPosition(i2);
        if (cursor.moveToNext() && !cursor.isAfterLast()) {
            int i3 = (j > cursor.getLong(4) ? 1 : (j == cursor.getLong(4) ? 0 : -1));
        }
        cursor.moveToPosition(i2);
        bindViewId(contactListItemView, cursor, 0);
        bindSectionHeaderAndDivider(contactListItemView, i2);
        if (z) {
            bindName(contactListItemView, cursor);
            if (isQuickContactEnabled()) {
                bindQuickContact(contactListItemView, i, cursor, 6, 8, 4, 5, 7);
            } else if (getDisplayPhotos()) {
                bindPhoto(contactListItemView, i, cursor);
            }
        } else {
            unbindName(contactListItemView);
            contactListItemView.removePhotoView(true, false);
        }
        bindPhoneNumber(contactListItemView, cursor, ((DirectoryPartition) getPartition(i)).isDisplayNumber(), i2);
    }

    protected void bindPhoneNumber(ContactListItemView contactListItemView, Cursor cursor, boolean z, int i) {
        String string;
        boolean z2 = true;
        contactListItemView.setLabel((!z || cursor.isNull(1)) ? null : ContactsContract.CommonDataKinds.Phone.getTypeLabel(getContext().getResources(), cursor.getInt(1), cursor.getString(2)));
        if (z) {
            string = cursor.getString(3);
        } else {
            string = cursor.getString(2);
            if (string == null) {
                string = GeoUtil.getGeocodedLocationFor(((IndexerListAdapter) this).mContext, cursor.getString(3));
            }
        }
        contactListItemView.setPhoneNumber(string, this.mCountryIso);
        if (CompatUtils.isVideoCompatible()) {
            boolean z3 = (cursor.getInt(9) & 1) != 0;
            if (!this.mIsVideoEnabled || ((!this.mIsPresenceEnabled || !z3) && this.mIsPresenceEnabled)) {
                z2 = false;
            }
            contactListItemView.setShowVideoCallIcon(z2, this.mListener, i);
        }
    }

    protected void bindSectionHeaderAndDivider(ContactListItemView contactListItemView, int i) {
        if (isSectionHeaderDisplayEnabled()) {
            IndexerListAdapter.Placement itemPlacementInSection = getItemPlacementInSection(i);
            contactListItemView.setSectionHeader(itemPlacementInSection.firstInSection ? itemPlacementInSection.sectionHeader : null);
        } else {
            contactListItemView.setSectionHeader(null);
        }
    }

    protected void bindName(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.showDisplayName(cursor, 7, getContactNameDisplayOrder());
    }

    protected void unbindName(ContactListItemView contactListItemView) {
        contactListItemView.hideDisplayName();
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    protected void bindWorkProfileIcon(ContactListItemView contactListItemView, int i) {
        long directoryId = ((DirectoryPartition) getPartition(i)).getDirectoryId();
        contactListItemView.setWorkProfileIconEnabled(!isExtendedDirectory(directoryId) && ContactsUtils.determineUserType(Long.valueOf(directoryId), null) == 1);
    }

    protected void bindPhoto(ContactListItemView contactListItemView, int i, Cursor cursor) {
        if (!isPhotoSupported(i)) {
            contactListItemView.removePhotoView();
            return;
        }
        long j = !cursor.isNull(6) ? cursor.getLong(6) : 0L;
        if (j != 0) {
            getPhotoLoader().loadThumbnail(contactListItemView.getPhotoView(), j, false, getCircularPhotos(), null);
            return;
        }
        String string = cursor.getString(8);
        Uri parse = string == null ? null : Uri.parse(string);
        getPhotoLoader().loadDirectoryPhoto(contactListItemView.getPhotoView(), parse, false, getCircularPhotos(), parse == null ? new ContactPhotoManager.DefaultImageRequest(cursor.getString(7), cursor.getString(5), getCircularPhotos()) : null);
    }

    public void setPhotoPosition(ContactListItemView.PhotoPosition photoPosition) {
        this.mPhotoPosition = photoPosition;
    }

    public void setUseCallableUri(boolean z) {
        this.mUseCallableUri = z;
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    public void changeDirectories(Cursor cursor) {
        super.changeDirectories(cursor);
        if (getDirectorySearchMode() == 0) {
            return;
        }
        int size = this.mExtendedDirectories.size();
        if (getPartitionCount() == cursor.getCount() + size) {
            return;
        }
        this.mFirstExtendedDirectoryId = Long.MAX_VALUE;
        if (size > 0) {
            int partitionCount = getPartitionCount();
            long j = 1;
            int i = 0;
            for (int i2 = 0; i2 < partitionCount; i2++) {
                long directoryId = ((DirectoryPartition) getPartition(i2)).getDirectoryId();
                if (directoryId > j) {
                    j = directoryId;
                }
                if (!DirectoryCompat.isRemoteDirectoryId(directoryId)) {
                    i = i2 + 1;
                }
            }
            this.mFirstExtendedDirectoryId = j + 1;
            for (int i3 = 0; i3 < size; i3++) {
                long j2 = this.mFirstExtendedDirectoryId + i3;
                DirectoryPartition directoryPartition = this.mExtendedDirectories.get(i3);
                if (getPartitionByDirectoryId(j2) == -1) {
                    addPartition(i, directoryPartition);
                    directoryPartition.setDirectoryId(j2);
                }
            }
        }
    }

    @Override // com.android.contacts.list.ContactEntryListAdapter
    protected Uri getContactUri(int i, Cursor cursor, int i2, int i3) {
        DirectoryPartition directoryPartition = (DirectoryPartition) getPartition(i);
        long directoryId = directoryPartition.getDirectoryId();
        if (!isExtendedDirectory(directoryId)) {
            return super.getContactUri(i, cursor, i2, i3);
        }
        return ContactsContract.Contacts.CONTENT_LOOKUP_URI.buildUpon().appendPath("encoded").appendQueryParameter("displayName", directoryPartition.getLabel()).appendQueryParameter("directory", String.valueOf(directoryId)).encodedFragment(cursor.getString(i3)).build();
    }
}
