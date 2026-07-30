package com.android.contacts.group;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.android.contacts.ContactSaveService;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountType;
import com.google.common.base.MoreObjects;

/* loaded from: classes.dex */
public final class GroupMetaData implements Parcelable {
    public static final Parcelable.Creator<GroupMetaData> CREATOR = new Parcelable.Creator<GroupMetaData>() { // from class: com.android.contacts.group.GroupMetaData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GroupMetaData createFromParcel(Parcel parcel) {
            return new GroupMetaData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GroupMetaData[] newArray(int i) {
            return new GroupMetaData[i];
        }
    };
    public final String accountName;
    public final String accountType;
    public final String dataSet;
    public final boolean defaultGroup;
    public final boolean editable;
    public final boolean favorites;
    public final long groupId;
    public final String groupName;
    public final boolean readOnly;
    public final Uri uri;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GroupMetaData(Context context, Cursor cursor) {
        AccountTypeManager accountTypeManager = AccountTypeManager.getInstance(context);
        long j = cursor.getLong(3);
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, j);
        AccountType accountType = accountTypeManager.getAccountType(cursor.getString(1), cursor.getString(2));
        boolean isGroupMembershipEditable = accountType == null ? false : accountType.isGroupMembershipEditable();
        this.uri = withAppendedId;
        this.accountName = cursor.getString(0);
        this.accountType = cursor.getString(1);
        this.dataSet = cursor.getString(2);
        this.groupId = j;
        this.groupName = cursor.getString(4);
        this.readOnly = getBoolean(cursor, 7);
        this.defaultGroup = getBoolean(cursor, 5);
        this.favorites = getBoolean(cursor, 6);
        this.editable = isGroupMembershipEditable;
    }

    private static boolean getBoolean(Cursor cursor, int i) {
        return (cursor.isNull(i) || cursor.getInt(i) == 0) ? false : true;
    }

    private GroupMetaData(Parcel parcel) {
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.accountName = parcel.readString();
        this.accountType = parcel.readString();
        this.dataSet = parcel.readString();
        this.groupId = parcel.readLong();
        this.groupName = parcel.readString();
        this.readOnly = parcel.readInt() == 1;
        this.defaultGroup = parcel.readInt() == 1;
        this.favorites = parcel.readInt() == 1;
        this.editable = parcel.readInt() == 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.uri, 0);
        parcel.writeString(this.accountName);
        parcel.writeString(this.accountType);
        parcel.writeString(this.dataSet);
        parcel.writeLong(this.groupId);
        parcel.writeString(this.groupName);
        parcel.writeInt(this.readOnly ? 1 : 0);
        parcel.writeInt(this.defaultGroup ? 1 : 0);
        parcel.writeInt(this.favorites ? 1 : 0);
        parcel.writeInt(this.editable ? 1 : 0);
    }

    public boolean isValid() {
        return (this.uri == null || TextUtils.isEmpty(this.accountName) || TextUtils.isEmpty(this.groupName) || this.groupId <= 0) ? false : true;
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        stringHelper.add(ContactSaveService.EXTRA_ACCOUNT_NAME, this.accountName);
        stringHelper.add(ContactSaveService.EXTRA_ACCOUNT_TYPE, this.accountType);
        stringHelper.add(ContactSaveService.EXTRA_DATA_SET, this.dataSet);
        stringHelper.add(ContactSaveService.EXTRA_GROUP_ID, this.groupId);
        stringHelper.add("groupName", this.groupName);
        stringHelper.add("readOnly", this.readOnly);
        stringHelper.add("defaultGroup", this.defaultGroup);
        stringHelper.add("favorites", this.favorites);
        stringHelper.add("editable", this.editable);
        stringHelper.add("isValid", isValid());
        return stringHelper.toString();
    }
}
