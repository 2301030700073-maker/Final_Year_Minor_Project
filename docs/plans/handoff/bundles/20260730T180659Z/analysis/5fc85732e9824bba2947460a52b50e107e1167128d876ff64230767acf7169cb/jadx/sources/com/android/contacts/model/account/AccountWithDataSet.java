package com.android.contacts.model.account;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.google.common.base.Objects;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AccountWithDataSet implements Parcelable {
    public static final String LOCAL_ACCOUNT_SELECTION = "account_type IS NULL AND account_name IS NULL AND data_set IS NULL";
    public final String dataSet;
    private final AccountTypeWithDataSet mAccountTypeWithDataSet;
    public final String name;
    public final String type;
    private static final String STRINGIFY_SEPARATOR = "\u0001";
    private static final Pattern STRINGIFY_SEPARATOR_PAT = Pattern.compile(Pattern.quote(STRINGIFY_SEPARATOR));
    private static final String ARRAY_STRINGIFY_SEPARATOR = "\u0002";
    private static final Pattern ARRAY_STRINGIFY_SEPARATOR_PAT = Pattern.compile(Pattern.quote(ARRAY_STRINGIFY_SEPARATOR));
    private static final String[] ID_PROJECTION = {"_id"};
    private static final Uri RAW_CONTACTS_URI_LIMIT_1 = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("limit", "1").build();
    public static final Parcelable.Creator<AccountWithDataSet> CREATOR = new Parcelable.Creator<AccountWithDataSet>() { // from class: com.android.contacts.model.account.AccountWithDataSet.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountWithDataSet createFromParcel(Parcel parcel) {
            return new AccountWithDataSet(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountWithDataSet[] newArray(int i) {
            return new AccountWithDataSet[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AccountWithDataSet(String str, String str2, String str3) {
        this.name = emptyToNull(str);
        this.type = emptyToNull(str2);
        this.dataSet = emptyToNull(str3);
        this.mAccountTypeWithDataSet = AccountTypeWithDataSet.get(str2, str3);
    }

    private static final String emptyToNull(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    public AccountWithDataSet(Parcel parcel) {
        this.name = parcel.readString();
        this.type = parcel.readString();
        String readString = parcel.readString();
        this.dataSet = readString;
        this.mAccountTypeWithDataSet = AccountTypeWithDataSet.get(this.type, readString);
    }

    public boolean isNullAccount() {
        return this.name == null && this.type == null && this.dataSet == null;
    }

    public static AccountWithDataSet getNullAccount() {
        return new AccountWithDataSet(null, null, null);
    }

    public Account getAccountOrNull() {
        if (this.name == null || this.type == null) {
            return null;
        }
        return new Account(this.name, this.type);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.type);
        parcel.writeString(this.dataSet);
    }

    public AccountTypeWithDataSet getAccountTypeWithDataSet() {
        return this.mAccountTypeWithDataSet;
    }

    public boolean hasData(Context context) {
        String[] strArr;
        String str;
        if (isNullAccount()) {
            strArr = null;
            str = LOCAL_ACCOUNT_SELECTION;
        } else if (TextUtils.isEmpty(this.dataSet)) {
            strArr = new String[]{this.type, this.name};
            str = "account_type = ? AND account_name = ? AND data_set IS NULL";
        } else {
            strArr = new String[]{this.type, this.name, this.dataSet};
            str = "account_type = ? AND account_name = ? AND data_set = ?";
        }
        Cursor query = context.getContentResolver().query(RAW_CONTACTS_URI_LIMIT_1, ID_PROJECTION, str + " AND deleted=0", strArr, null);
        if (query == null) {
            return false;
        }
        try {
            return query.moveToFirst();
        } finally {
            query.close();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccountWithDataSet)) {
            return false;
        }
        AccountWithDataSet accountWithDataSet = (AccountWithDataSet) obj;
        return Objects.equal(this.name, accountWithDataSet.name) && Objects.equal(this.type, accountWithDataSet.type) && Objects.equal(this.dataSet, accountWithDataSet.dataSet);
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.type;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.dataSet;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "AccountWithDataSet {name=" + this.name + ", type=" + this.type + ", dataSet=" + this.dataSet + "}";
    }

    private static StringBuilder addStringified(StringBuilder sb, AccountWithDataSet accountWithDataSet) {
        if (!TextUtils.isEmpty(accountWithDataSet.name)) {
            sb.append(accountWithDataSet.name);
        }
        sb.append(STRINGIFY_SEPARATOR);
        if (!TextUtils.isEmpty(accountWithDataSet.type)) {
            sb.append(accountWithDataSet.type);
        }
        sb.append(STRINGIFY_SEPARATOR);
        if (!TextUtils.isEmpty(accountWithDataSet.dataSet)) {
            sb.append(accountWithDataSet.dataSet);
        }
        return sb;
    }

    public String stringify() {
        return addStringified(new StringBuilder(), this).toString();
    }

    public ContentProviderOperation newRawContactOperation() {
        ContentProviderOperation.Builder withValue = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_name", this.name).withValue("account_type", this.type);
        String str = this.dataSet;
        if (str != null) {
            withValue.withValue("data_set", str);
        }
        return withValue.build();
    }

    public static AccountWithDataSet unstringify(String str) {
        String[] split = STRINGIFY_SEPARATOR_PAT.split(str, 3);
        if (split.length < 3) {
            throw new IllegalArgumentException("Invalid string " + str);
        }
        return new AccountWithDataSet(split[0], split[1], TextUtils.isEmpty(split[2]) ? null : split[2]);
    }

    public static String stringifyList(List<AccountWithDataSet> list) {
        StringBuilder sb = new StringBuilder();
        for (AccountWithDataSet accountWithDataSet : list) {
            if (sb.length() > 0) {
                sb.append(ARRAY_STRINGIFY_SEPARATOR);
            }
            addStringified(sb, accountWithDataSet);
        }
        return sb.toString();
    }

    public static List<AccountWithDataSet> unstringifyList(String str) {
        ArrayList newArrayList = Lists.newArrayList();
        if (TextUtils.isEmpty(str)) {
            return newArrayList;
        }
        for (String str2 : ARRAY_STRINGIFY_SEPARATOR_PAT.split(str)) {
            newArrayList.add(unstringify(str2));
        }
        return newArrayList;
    }
}
