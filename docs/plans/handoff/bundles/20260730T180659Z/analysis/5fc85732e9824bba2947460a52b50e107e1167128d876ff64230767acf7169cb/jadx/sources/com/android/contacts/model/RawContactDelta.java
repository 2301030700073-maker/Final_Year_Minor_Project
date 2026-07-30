package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.AccountWithDataSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class RawContactDelta implements Parcelable {
    public static final Parcelable.Creator<RawContactDelta> CREATOR = new Parcelable.Creator<RawContactDelta>() { // from class: com.android.contacts.model.RawContactDelta.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RawContactDelta createFromParcel(Parcel parcel) {
            RawContactDelta rawContactDelta = new RawContactDelta();
            rawContactDelta.readFromParcel(parcel);
            return rawContactDelta;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RawContactDelta[] newArray(int i) {
            return new RawContactDelta[i];
        }
    };
    private static final boolean DEBUG = false;
    private static final String TAG = "EntityDelta";
    private Uri mContactsQueryUri = ContactsContract.RawContacts.CONTENT_URI;
    private final HashMap<String, ArrayList<ValuesDelta>> mEntries = Maps.newHashMap();
    private ValuesDelta mValues;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RawContactDelta() {
    }

    public RawContactDelta(ValuesDelta valuesDelta) {
        this.mValues = valuesDelta;
    }

    public static RawContactDelta fromBefore(RawContact rawContact) {
        RawContactDelta rawContactDelta = new RawContactDelta();
        ValuesDelta fromBefore = ValuesDelta.fromBefore(rawContact.getValues());
        rawContactDelta.mValues = fromBefore;
        fromBefore.setIdColumn("_id");
        Iterator<ContentValues> it = rawContact.getContentValues().iterator();
        while (it.hasNext()) {
            rawContactDelta.addEntry(ValuesDelta.fromBefore(it.next()));
        }
        return rawContactDelta;
    }

    public static RawContactDelta mergeAfter(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2) {
        ValuesDelta valuesDelta = rawContactDelta2.mValues;
        if (rawContactDelta == null && (valuesDelta.isDelete() || valuesDelta.isTransient())) {
            return null;
        }
        if (rawContactDelta == null) {
            rawContactDelta = new RawContactDelta();
        }
        rawContactDelta.mValues = ValuesDelta.mergeAfter(rawContactDelta.mValues, rawContactDelta2.mValues);
        Iterator<ArrayList<ValuesDelta>> it = rawContactDelta2.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                ValuesDelta entry = rawContactDelta.getEntry(next.getId());
                ValuesDelta mergeAfter = ValuesDelta.mergeAfter(entry, next);
                if (entry == null && mergeAfter != null) {
                    rawContactDelta.addEntry(mergeAfter);
                }
            }
        }
        return rawContactDelta;
    }

    public ValuesDelta getValues() {
        return this.mValues;
    }

    public boolean isContactInsert() {
        return this.mValues.isInsert();
    }

    public ValuesDelta getPrimaryEntry(String str) {
        ArrayList<ValuesDelta> mimeEntries = getMimeEntries(str, false);
        if (mimeEntries == null) {
            return null;
        }
        Iterator<ValuesDelta> it = mimeEntries.iterator();
        while (it.hasNext()) {
            ValuesDelta next = it.next();
            if (next.isPrimary()) {
                return next;
            }
        }
        if (mimeEntries.size() > 0) {
            return mimeEntries.get(0);
        }
        return null;
    }

    public ValuesDelta getSuperPrimaryEntry(String str) {
        return getSuperPrimaryEntry(str, true);
    }

    public ValuesDelta getSuperPrimaryEntry(String str, boolean z) {
        ArrayList<ValuesDelta> mimeEntries = getMimeEntries(str, false);
        if (mimeEntries == null) {
            return null;
        }
        Iterator<ValuesDelta> it = mimeEntries.iterator();
        ValuesDelta valuesDelta = null;
        while (it.hasNext()) {
            ValuesDelta next = it.next();
            if (next.isSuperPrimary()) {
                return next;
            }
            if (next.isPrimary()) {
                valuesDelta = next;
            }
        }
        if (!z) {
            return null;
        }
        if (valuesDelta != null) {
            return valuesDelta;
        }
        if (mimeEntries.size() > 0) {
            return mimeEntries.get(0);
        }
        return null;
    }

    public AccountType getRawContactAccountType(Context context) {
        ContentValues completeValues = getValues().getCompleteValues();
        return AccountTypeManager.getInstance(context).getAccountType(completeValues.getAsString("account_type"), completeValues.getAsString("data_set"));
    }

    public Long getRawContactId() {
        return getValues().getAsLong("_id");
    }

    public String getAccountName() {
        return getValues().getAsString("account_name");
    }

    public String getAccountType() {
        return getValues().getAsString("account_type");
    }

    public String getDataSet() {
        return getValues().getAsString("data_set");
    }

    public AccountType getAccountType(AccountTypeManager accountTypeManager) {
        return accountTypeManager.getAccountType(getAccountType(), getDataSet());
    }

    public AccountWithDataSet getAccountWithDataSet() {
        return new AccountWithDataSet(getAccountName(), getAccountType(), getDataSet());
    }

    public boolean isVisible() {
        return getValues().isVisible();
    }

    private ArrayList<ValuesDelta> getMimeEntries(String str, boolean z) {
        ArrayList<ValuesDelta> arrayList = this.mEntries.get(str);
        if (arrayList != null || !z) {
            return arrayList;
        }
        ArrayList<ValuesDelta> newArrayList = Lists.newArrayList();
        this.mEntries.put(str, newArrayList);
        return newArrayList;
    }

    public ArrayList<ValuesDelta> getMimeEntries(String str) {
        return getMimeEntries(str, false);
    }

    public int getMimeEntriesCount(String str, boolean z) {
        ArrayList<ValuesDelta> mimeEntries = getMimeEntries(str);
        int i = 0;
        if (mimeEntries == null) {
            return 0;
        }
        Iterator<ValuesDelta> it = mimeEntries.iterator();
        while (it.hasNext()) {
            ValuesDelta next = it.next();
            if (!z || next.isVisible()) {
                i++;
            }
        }
        return i;
    }

    public boolean hasMimeEntries(String str) {
        return this.mEntries.containsKey(str);
    }

    public ValuesDelta addEntry(ValuesDelta valuesDelta) {
        getMimeEntries(valuesDelta.getMimetype(), true).add(valuesDelta);
        return valuesDelta;
    }

    public ArrayList<ContentValues> getContentValues() {
        ArrayList<ContentValues> newArrayList = Lists.newArrayList();
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                if (!next.isDelete()) {
                    newArrayList.add(next.getCompleteValues());
                }
            }
        }
        return newArrayList;
    }

    public ValuesDelta getEntry(Long l) {
        if (l == null) {
            return null;
        }
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                if (l.equals(next.getId())) {
                    return next;
                }
            }
        }
        return null;
    }

    public int getEntryCount(boolean z) {
        Iterator<String> it = this.mEntries.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += getMimeEntriesCount(it.next(), z);
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RawContactDelta)) {
            return false;
        }
        RawContactDelta rawContactDelta = (RawContactDelta) obj;
        if (!rawContactDelta.mValues.equals(this.mValues)) {
            return false;
        }
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                if (!rawContactDelta.containsEntry(it2.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean containsEntry(ValuesDelta valuesDelta) {
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                if (it2.next().equals(valuesDelta)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void markDeleted() {
        this.mValues.markDeleted();
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                it2.next().markDeleted();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n(");
        sb.append("Uri=");
        sb.append(this.mContactsQueryUri);
        sb.append(", Values=");
        ValuesDelta valuesDelta = this.mValues;
        sb.append(valuesDelta != null ? valuesDelta.toString() : "null");
        sb.append(", Entries={");
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                sb.append("\n\t");
                next.toString(sb);
            }
        }
        sb.append("\n})\n");
        return sb.toString();
    }

    private void possibleAdd(ArrayList<ContentProviderOperation> arrayList, ContentProviderOperation.Builder builder) {
        if (builder != null) {
            arrayList.add(builder.build());
        }
    }

    private void possibleAddWrapper(ArrayList<CPOWrapper> arrayList, BuilderWrapper builderWrapper) {
        if (builderWrapper == null || builderWrapper.getBuilder() == null) {
            return;
        }
        arrayList.add(new CPOWrapper(builderWrapper.getBuilder().build(), builderWrapper.getType()));
    }

    public void buildAssert(ArrayList<ContentProviderOperation> arrayList) {
        ContentProviderOperation.Builder buildAssertHelper = buildAssertHelper();
        if (buildAssertHelper != null) {
            arrayList.add(buildAssertHelper.build());
        }
    }

    public void buildAssertWrapper(ArrayList<CPOWrapper> arrayList) {
        ContentProviderOperation.Builder buildAssertHelper = buildAssertHelper();
        if (buildAssertHelper != null) {
            arrayList.add(new CPOWrapper(buildAssertHelper.build(), 4));
        }
    }

    private ContentProviderOperation.Builder buildAssertHelper() {
        if (this.mValues.isInsert()) {
            return null;
        }
        Long id = this.mValues.getId();
        Long asLong = this.mValues.getAsLong("version");
        if (id == null || asLong == null) {
            return null;
        }
        ContentProviderOperation.Builder newAssertQuery = ContentProviderOperation.newAssertQuery(this.mContactsQueryUri);
        newAssertQuery.withSelection("_id=" + id, null);
        newAssertQuery.withValue("version", asLong);
        return newAssertQuery;
    }

    public void buildDiff(ArrayList<ContentProviderOperation> arrayList) {
        ContentProviderOperation.Builder buildDiff;
        int size = arrayList.size();
        boolean isInsert = this.mValues.isInsert();
        boolean isDelete = this.mValues.isDelete();
        boolean z = (isInsert || isDelete) ? false : true;
        Long id = this.mValues.getId();
        if (isInsert) {
            this.mValues.put("aggregation_mode", 2);
        }
        possibleAdd(arrayList, this.mValues.buildDiff(this.mContactsQueryUri));
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                if (!isDelete) {
                    if (this.mContactsQueryUri.equals(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI)) {
                        buildDiff = next.buildDiff(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"));
                    } else {
                        buildDiff = next.buildDiff(ContactsContract.Data.CONTENT_URI);
                    }
                    if (next.isInsert()) {
                        if (isInsert) {
                            buildDiff.withValueBackReference("raw_contact_id", size);
                        } else {
                            buildDiff.withValue("raw_contact_id", id);
                        }
                    } else if (isInsert && buildDiff != null) {
                        throw new IllegalArgumentException("When parent insert, child must be also");
                    }
                    possibleAdd(arrayList, buildDiff);
                }
            }
        }
        if ((arrayList.size() > size) && z) {
            arrayList.add(size, buildSetAggregationMode(id, 2).build());
            arrayList.add(buildSetAggregationMode(id, 0).build());
        } else if (isInsert) {
            ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(this.mContactsQueryUri);
            newUpdate.withValue("aggregation_mode", 0);
            newUpdate.withSelection("_id=?", new String[1]);
            newUpdate.withSelectionBackReference(0, size);
            arrayList.add(newUpdate.build());
        }
    }

    public void buildDiffWrapper(ArrayList<CPOWrapper> arrayList) {
        BuilderWrapper buildDiffWrapper;
        int size = arrayList.size();
        boolean isInsert = this.mValues.isInsert();
        boolean isDelete = this.mValues.isDelete();
        boolean z = (isInsert || isDelete) ? false : true;
        Long id = this.mValues.getId();
        if (isInsert) {
            this.mValues.put("aggregation_mode", 2);
        }
        possibleAddWrapper(arrayList, this.mValues.buildDiffWrapper(this.mContactsQueryUri));
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                if (!isDelete) {
                    if (this.mContactsQueryUri.equals(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI)) {
                        buildDiffWrapper = next.buildDiffWrapper(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"));
                    } else {
                        buildDiffWrapper = next.buildDiffWrapper(ContactsContract.Data.CONTENT_URI);
                    }
                    if (next.isInsert()) {
                        if (isInsert) {
                            buildDiffWrapper.getBuilder().withValueBackReference("raw_contact_id", size);
                        } else {
                            buildDiffWrapper.getBuilder().withValue("raw_contact_id", id);
                        }
                    } else if (isInsert && buildDiffWrapper != null && buildDiffWrapper.getBuilder() != null) {
                        throw new IllegalArgumentException("When parent insert, child must be also");
                    }
                    possibleAddWrapper(arrayList, buildDiffWrapper);
                }
            }
        }
        if ((arrayList.size() > size) && z) {
            arrayList.add(size, new CPOWrapper(buildSetAggregationMode(id, 2).build(), 2));
            arrayList.add(new CPOWrapper(buildSetAggregationMode(id, 0).build(), 2));
        } else if (isInsert) {
            ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(this.mContactsQueryUri);
            newUpdate.withValue("aggregation_mode", 0);
            newUpdate.withSelection("_id=?", new String[1]);
            newUpdate.withSelectionBackReference(0, size);
            arrayList.add(new CPOWrapper(newUpdate.build(), 2));
        }
    }

    protected ContentProviderOperation.Builder buildSetAggregationMode(Long l, int i) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(this.mContactsQueryUri);
        newUpdate.withValue("aggregation_mode", Integer.valueOf(i));
        newUpdate.withSelection("_id=" + l, null);
        return newUpdate;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(getEntryCount(false));
        parcel.writeParcelable(this.mValues, i);
        parcel.writeParcelable(this.mContactsQueryUri, i);
        Iterator<ArrayList<ValuesDelta>> it = this.mEntries.values().iterator();
        while (it.hasNext()) {
            Iterator<ValuesDelta> it2 = it.next().iterator();
            while (it2.hasNext()) {
                parcel.writeParcelable(it2.next(), i);
            }
        }
    }

    public void readFromParcel(Parcel parcel) {
        ClassLoader classLoader = RawContactDelta.class.getClassLoader();
        int readInt = parcel.readInt();
        this.mValues = (ValuesDelta) parcel.readParcelable(classLoader);
        this.mContactsQueryUri = (Uri) parcel.readParcelable(classLoader);
        for (int i = 0; i < readInt; i++) {
            addEntry((ValuesDelta) parcel.readParcelable(classLoader));
        }
    }

    public void setProfileQueryUri() {
        this.mContactsQueryUri = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
    }
}
