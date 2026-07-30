package com.android.contacts.editor;

import android.content.AsyncTaskLoader;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import com.android.contacts.model.AccountTypeManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class PickRawContactLoader extends AsyncTaskLoader<RawContactsMetadata> {
    private static final String[] RAW_CONTACT_PROJECTION = {"account_name", "account_type", "data_set", "_id", "display_name", "display_name_alt"};
    private RawContactsMetadata mCachedResult;
    private Uri mContactUri;

    public PickRawContactLoader(Context context, Uri uri) {
        super(context);
        ensureIsContactUri(uri);
        this.mContactUri = uri;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.AsyncTaskLoader
    public RawContactsMetadata loadInBackground() {
        Uri uri;
        Uri uri2;
        ContentResolver contentResolver = getContext().getContentResolver();
        Cursor query = contentResolver.query(this.mContactUri, new String[]{"_id", "is_user_profile"}, null, null, null);
        if (query == null) {
            return null;
        }
        if (query.getCount() < 1) {
            return null;
        }
        RawContactsMetadata rawContactsMetadata = new RawContactsMetadata();
        try {
            query.moveToFirst();
            rawContactsMetadata.contactId = query.getLong(0);
            rawContactsMetadata.isUserProfile = query.getInt(1) == 1;
            query.close();
            if (rawContactsMetadata.isUserProfile) {
                uri = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
            } else {
                uri = ContactsContract.RawContacts.CONTENT_URI;
            }
            query = contentResolver.query(uri, RAW_CONTACT_PROJECTION, "contact_id=?", new String[]{Long.toString(rawContactsMetadata.contactId)}, null);
            if (query == null) {
                return null;
            }
            if (query.getCount() < 1) {
                return null;
            }
            query.moveToPosition(-1);
            StringBuilder sb = new StringBuilder("raw_contact_id IN (");
            HashMap hashMap = new HashMap();
            while (query.moveToNext()) {
                try {
                    RawContact rawContact = new RawContact();
                    long j = query.getLong(3);
                    rawContact.id = j;
                    sb.append(j);
                    sb.append(',');
                    rawContact.displayName = query.getString(4);
                    rawContact.displayNameAlt = query.getString(5);
                    rawContact.accountName = query.getString(0);
                    rawContact.accountType = query.getString(1);
                    rawContact.accountDataSet = query.getString(2);
                    rawContactsMetadata.rawContacts.add(rawContact);
                    hashMap.put(Long.valueOf(rawContact.id), rawContact);
                } finally {
                }
            }
            query.close();
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            sb.append(") AND mimetype=\"vnd.android.cursor.item/photo\"");
            if (rawContactsMetadata.isUserProfile) {
                uri2 = Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, ContactsContract.Data.CONTENT_URI.getPath());
            } else {
                uri2 = ContactsContract.Data.CONTENT_URI;
            }
            query = contentResolver.query(uri2, new String[]{"raw_contact_id", "_id"}, sb.toString(), null, null);
            if (query != null) {
                try {
                    query.moveToPosition(-1);
                    while (query.moveToNext()) {
                        ((RawContact) hashMap.get(Long.valueOf(query.getLong(0)))).photoId = query.getLong(1);
                    }
                } finally {
                }
            }
            return rawContactsMetadata;
        } finally {
        }
    }

    @Override // android.content.Loader
    public void deliverResult(RawContactsMetadata rawContactsMetadata) {
        this.mCachedResult = rawContactsMetadata;
        if (isStarted()) {
            super.deliverResult((PickRawContactLoader) rawContactsMetadata);
        }
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        super.onStartLoading();
        RawContactsMetadata rawContactsMetadata = this.mCachedResult;
        if (rawContactsMetadata == null) {
            forceLoad();
        } else {
            deliverResult(rawContactsMetadata);
        }
    }

    private static Uri ensureIsContactUri(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null");
        }
        if (uri.toString().startsWith(ContactsContract.Contacts.CONTENT_URI.toString()) || uri.toString().equals(ContactsContract.Profile.CONTENT_URI.toString())) {
            return uri;
        }
        throw new IllegalArgumentException("Invalid contact Uri: " + uri);
    }

    public static class RawContactsMetadata implements Parcelable {
        public static final Parcelable.Creator<RawContactsMetadata> CREATOR = new Parcelable.Creator<RawContactsMetadata>() { // from class: com.android.contacts.editor.PickRawContactLoader.RawContactsMetadata.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContactsMetadata createFromParcel(Parcel parcel) {
                return new RawContactsMetadata(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContactsMetadata[] newArray(int i) {
                return new RawContactsMetadata[i];
            }
        };
        public long contactId;
        public boolean isUserProfile;
        public ArrayList<RawContact> rawContacts;
        public boolean showReadOnly;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public RawContactsMetadata() {
            this.showReadOnly = false;
            this.rawContacts = new ArrayList<>();
        }

        private RawContactsMetadata(Parcel parcel) {
            this.showReadOnly = false;
            this.rawContacts = new ArrayList<>();
            this.contactId = parcel.readLong();
            this.isUserProfile = parcel.readInt() == 1;
            this.showReadOnly = parcel.readInt() == 1;
            parcel.readTypedList(this.rawContacts, RawContact.CREATOR);
        }

        public void trimReadOnly(AccountTypeManager accountTypeManager) {
            for (int size = this.rawContacts.size() - 1; size >= 0; size--) {
                RawContact rawContact = this.rawContacts.get(size);
                if (!accountTypeManager.getAccountType(rawContact.accountType, rawContact.accountDataSet).areContactsWritable()) {
                    this.rawContacts.remove(size);
                }
            }
        }

        public int getIndexOfFirstWritableAccount(AccountTypeManager accountTypeManager) {
            for (int i = 0; i < this.rawContacts.size(); i++) {
                RawContact rawContact = this.rawContacts.get(i);
                if (accountTypeManager.getAccountType(rawContact.accountType, rawContact.accountDataSet).areContactsWritable()) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.contactId);
            parcel.writeInt(this.isUserProfile ? 1 : 0);
            parcel.writeInt(this.showReadOnly ? 1 : 0);
            parcel.writeTypedList(this.rawContacts);
        }
    }

    public static class RawContact implements Parcelable {
        public static final Parcelable.Creator<RawContact> CREATOR = new Parcelable.Creator<RawContact>() { // from class: com.android.contacts.editor.PickRawContactLoader.RawContact.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContact createFromParcel(Parcel parcel) {
                return new RawContact(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContact[] newArray(int i) {
                return new RawContact[i];
            }
        };
        public String accountDataSet;
        public String accountName;
        public String accountType;
        public String displayName;
        public String displayNameAlt;
        public long id;
        public long photoId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public RawContact() {
        }

        private RawContact(Parcel parcel) {
            this.id = parcel.readLong();
            this.photoId = parcel.readLong();
            this.displayName = parcel.readString();
            this.displayNameAlt = parcel.readString();
            this.accountName = parcel.readString();
            this.accountType = parcel.readString();
            this.accountDataSet = parcel.readString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.id);
            parcel.writeLong(this.photoId);
            parcel.writeString(this.displayName);
            parcel.writeString(this.displayNameAlt);
            parcel.writeString(this.accountName);
            parcel.writeString(this.accountType);
            parcel.writeString(this.accountDataSet);
        }
    }
}
