package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.android.contacts.model.account.AccountWithDataSet;
import com.google.common.collect.ComparisonChain;
import com.google.common.collect.Ordering;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class SimContact implements Parcelable {
    public static final Parcelable.Creator<SimContact> CREATOR = new Parcelable.Creator<SimContact>() { // from class: com.android.contacts.model.SimContact.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimContact createFromParcel(Parcel parcel) {
            return new SimContact(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.createStringArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimContact[] newArray(int i) {
            return new SimContact[i];
        }
    };
    private final String[] mEmails;
    private final long mId;
    private final String mName;
    private final String mPhone;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SimContact(long j, String str, String str2) {
        this(j, str, str2, null);
    }

    public SimContact(long j, String str, String str2, String[] strArr) {
        this.mId = j;
        this.mName = str;
        this.mPhone = str2 == null ? "" : str2.trim();
        this.mEmails = strArr;
    }

    public SimContact(SimContact simContact) {
        this(simContact.mId, simContact.mName, simContact.mPhone, simContact.mEmails);
    }

    public long getId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public String getPhone() {
        return this.mPhone;
    }

    public String[] getEmails() {
        return this.mEmails;
    }

    public void appendCreateContactOperations(List<ContentProviderOperation> list, AccountWithDataSet accountWithDataSet) {
        if (hasName() || hasPhone() || hasEmails()) {
            int size = list.size();
            list.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withYieldAllowed(true).withValue("account_name", accountWithDataSet.name).withValue("account_type", accountWithDataSet.type).withValue("data_set", accountWithDataSet.dataSet).build());
            String str = this.mName;
            if (str != null) {
                list.add(createInsertOp(size, "vnd.android.cursor.item/name", "data1", str));
            }
            if (!this.mPhone.isEmpty()) {
                list.add(createInsertOp(size, "vnd.android.cursor.item/phone_v2", "data1", this.mPhone));
            }
            String[] strArr = this.mEmails;
            if (strArr != null) {
                for (String str2 : strArr) {
                    list.add(createInsertOp(size, "vnd.android.cursor.item/email_v2", "data1", str2));
                }
            }
        }
    }

    private ContentProviderOperation createInsertOp(int i, String str, String str2, String str3) {
        return ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", i).withValue("mimetype", str).withValue(str2, str3).build();
    }

    public void appendAsContactRow(MatrixCursor matrixCursor) {
        matrixCursor.newRow().add("_id", Long.valueOf(this.mId)).add("display_name", this.mName).add("lookup", getLookupKey());
    }

    public boolean hasName() {
        return !TextUtils.isEmpty(this.mName);
    }

    public boolean hasPhone() {
        return !this.mPhone.isEmpty();
    }

    public boolean hasEmails() {
        String[] strArr = this.mEmails;
        return strArr != null && strArr.length > 0;
    }

    private String getLookupKey() {
        if (this.mName != null) {
            return "sim-n-" + Uri.encode(this.mName);
        }
        if (this.mPhone == null) {
            return null;
        }
        return "sim-p-" + Uri.encode(this.mPhone);
    }

    public String toString() {
        return "SimContact{mId=" + this.mId + ", mName='" + this.mName + "', mPhone='" + this.mPhone + "', mEmails=" + Arrays.toString(this.mEmails) + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SimContact.class != obj.getClass()) {
            return false;
        }
        SimContact simContact = (SimContact) obj;
        return this.mId == simContact.mId && Objects.equals(this.mName, simContact.mName) && Objects.equals(this.mPhone, simContact.mPhone) && Arrays.equals(this.mEmails, simContact.mEmails);
    }

    public int hashCode() {
        long j = this.mId;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.mName;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.mPhone;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.mEmails);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mId);
        parcel.writeString(this.mName);
        parcel.writeString(this.mPhone);
        parcel.writeStringArray(this.mEmails);
    }

    public static final MatrixCursor convertToContactsCursor(Collection<SimContact> collection, String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        Iterator<SimContact> it = collection.iterator();
        while (it.hasNext()) {
            it.next().appendAsContactRow(matrixCursor);
        }
        return matrixCursor;
    }

    public static int findByPhoneAndName(List<SimContact> list, String str, String str2) {
        return Collections.binarySearch(list, new SimContact(-1L, str2, str, null), compareByPhoneThenName());
    }

    public static final Comparator<SimContact> compareByPhoneThenName() {
        return new Comparator<SimContact>() { // from class: com.android.contacts.model.SimContact.2
            @Override // java.util.Comparator
            public int compare(SimContact simContact, SimContact simContact2) {
                return ComparisonChain.start().compare(simContact.mPhone, simContact2.mPhone).compare(simContact.mName, simContact2.mName, Ordering.natural().nullsFirst()).result();
            }
        };
    }

    public static final Comparator<SimContact> compareById() {
        return new Comparator<SimContact>() { // from class: com.android.contacts.model.SimContact.3
            @Override // java.util.Comparator
            public int compare(SimContact simContact, SimContact simContact2) {
                return Long.compare(simContact.mId, simContact2.mId);
            }
        };
    }
}
