package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Entity;
import android.content.EntityIterator;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.model.account.BaseAccountType;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public class RawContactDeltaList extends ArrayList<RawContactDelta> implements Parcelable {
    public static final Parcelable.Creator<RawContactDeltaList> CREATOR;
    private static final String TAG;
    private static final boolean VERBOSE_LOGGING;
    private long[] mJoinWithRawContactIds;
    private boolean mSplitRawContacts;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    static {
        String simpleName = RawContactDeltaList.class.getSimpleName();
        TAG = simpleName;
        VERBOSE_LOGGING = Log.isLoggable(simpleName, 2);
        CREATOR = new Parcelable.Creator<RawContactDeltaList>() { // from class: com.android.contacts.model.RawContactDeltaList.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContactDeltaList createFromParcel(Parcel parcel) {
                RawContactDeltaList rawContactDeltaList = new RawContactDeltaList();
                rawContactDeltaList.readFromParcel(parcel);
                return rawContactDeltaList;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RawContactDeltaList[] newArray(int i) {
                return new RawContactDeltaList[i];
            }
        };
    }

    public static RawContactDeltaList fromQuery(Uri uri, ContentResolver contentResolver, String str, String[] strArr, String str2) {
        EntityIterator newEntityIterator = ContactsContract.RawContacts.newEntityIterator(contentResolver.query(uri, null, str, strArr, str2));
        try {
            return fromIterator(newEntityIterator);
        } finally {
            newEntityIterator.close();
        }
    }

    public static RawContactDeltaList fromIterator(Iterator<?> it) {
        RawContactDeltaList rawContactDeltaList = new RawContactDeltaList();
        rawContactDeltaList.addAll(it);
        return rawContactDeltaList;
    }

    public void addAll(Iterator<?> it) {
        RawContact rawContact;
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof Entity) {
                rawContact = RawContact.createFrom((Entity) next);
            } else {
                rawContact = (RawContact) next;
            }
            add(RawContactDelta.fromBefore(rawContact));
        }
    }

    public static RawContactDeltaList mergeAfter(RawContactDeltaList rawContactDeltaList, RawContactDeltaList rawContactDeltaList2) {
        if (rawContactDeltaList == null) {
            rawContactDeltaList = new RawContactDeltaList();
        }
        Iterator<RawContactDelta> it = rawContactDeltaList2.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            RawContactDelta byRawContactId = rawContactDeltaList.getByRawContactId(next.getValues().getId());
            RawContactDelta mergeAfter = RawContactDelta.mergeAfter(byRawContactId, next);
            if (byRawContactId == null && mergeAfter != null) {
                rawContactDeltaList.add(mergeAfter);
            }
        }
        return rawContactDeltaList;
    }

    public ArrayList<CPOWrapper> buildDiffWrapper() {
        if (VERBOSE_LOGGING) {
            Log.v(TAG, "buildDiffWrapper: list=" + toString());
        }
        ArrayList<CPOWrapper> newArrayList = Lists.newArrayList();
        long findRawContactId = findRawContactId();
        Iterator<RawContactDelta> it = iterator();
        while (it.hasNext()) {
            it.next().buildAssertWrapper(newArrayList);
        }
        int size = newArrayList.size();
        int[] iArr = new int[size()];
        Iterator<RawContactDelta> it2 = iterator();
        int i = 0;
        int i2 = -1;
        while (it2.hasNext()) {
            RawContactDelta next = it2.next();
            int size2 = newArrayList.size();
            boolean isContactInsert = next.isContactInsert();
            int i3 = i + 1;
            iArr[i] = isContactInsert ? size2 : -1;
            next.buildDiffWrapper(newArrayList);
            long[] jArr = this.mJoinWithRawContactIds;
            if (jArr != null) {
                int i4 = 0;
                for (int length = jArr.length; i4 < length; length = length) {
                    Iterator<RawContactDelta> it3 = it2;
                    Long valueOf = Long.valueOf(jArr[i4]);
                    long[] jArr2 = jArr;
                    ContentProviderOperation.Builder beginKeepTogether = beginKeepTogether();
                    beginKeepTogether.withValue("raw_contact_id1", valueOf);
                    if (findRawContactId != -1) {
                        beginKeepTogether.withValue("raw_contact_id2", Long.valueOf(findRawContactId));
                    } else {
                        beginKeepTogether.withValueBackReference("raw_contact_id2", size2);
                    }
                    newArrayList.add(new CPOWrapper(beginKeepTogether.build(), 2));
                    i4++;
                    it2 = it3;
                    jArr = jArr2;
                }
            }
            Iterator<RawContactDelta> it4 = it2;
            if (isContactInsert && !this.mSplitRawContacts) {
                if (findRawContactId != -1) {
                    ContentProviderOperation.Builder beginKeepTogether2 = beginKeepTogether();
                    beginKeepTogether2.withValue("raw_contact_id1", Long.valueOf(findRawContactId));
                    beginKeepTogether2.withValueBackReference("raw_contact_id2", size2);
                    newArrayList.add(new CPOWrapper(beginKeepTogether2.build(), 2));
                } else if (i2 == -1) {
                    i2 = size2;
                } else {
                    ContentProviderOperation.Builder beginKeepTogether3 = beginKeepTogether();
                    beginKeepTogether3.withValueBackReference("raw_contact_id1", i2);
                    beginKeepTogether3.withValueBackReference("raw_contact_id2", size2);
                    newArrayList.add(new CPOWrapper(beginKeepTogether3.build(), 2));
                }
            }
            i = i3;
            it2 = it4;
        }
        if (this.mSplitRawContacts) {
            buildSplitContactDiffWrapper(newArrayList, iArr);
        }
        if (newArrayList.size() == size) {
            newArrayList.clear();
        }
        if (VERBOSE_LOGGING) {
            Log.v(TAG, "buildDiff: ops=" + diffToStringWrapper(newArrayList));
        }
        return newArrayList;
    }

    private static String diffToString(ArrayList<ContentProviderOperation> arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("[\n");
        Iterator<ContentProviderOperation> it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append(",\n");
        }
        sb.append("]\n");
        return sb.toString();
    }

    private static String diffToStringWrapper(ArrayList<CPOWrapper> arrayList) {
        ArrayList newArrayList = Lists.newArrayList();
        Iterator<CPOWrapper> it = arrayList.iterator();
        while (it.hasNext()) {
            newArrayList.add(it.next().getOperation());
        }
        return diffToString(newArrayList);
    }

    protected ContentProviderOperation.Builder beginKeepTogether() {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue(BaseAccountType.Attr.TYPE, 1);
        return newUpdate;
    }

    private void buildSplitContactDiffWrapper(ArrayList<CPOWrapper> arrayList, int[] iArr) {
        ContentProviderOperation.Builder buildSplitContactDiffHelper;
        int size = size();
        for (int i = 0; i < size; i++) {
            for (int i2 = 0; i2 < size; i2++) {
                if (i != i2 && (buildSplitContactDiffHelper = buildSplitContactDiffHelper(i, i2, iArr)) != null) {
                    arrayList.add(new CPOWrapper(buildSplitContactDiffHelper.build(), 2));
                }
            }
        }
    }

    private ContentProviderOperation.Builder buildSplitContactDiffHelper(int i, int i2, int[] iArr) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue(BaseAccountType.Attr.TYPE, 2);
        Long asLong = get(i).getValues().getAsLong("_id");
        int i3 = iArr[i];
        if (asLong == null || asLong.longValue() < 0) {
            if (i3 >= 0) {
                newUpdate.withValueBackReference("raw_contact_id1", i3);
            }
            return null;
        }
        newUpdate.withValue("raw_contact_id1", asLong);
        Long asLong2 = get(i2).getValues().getAsLong("_id");
        int i4 = iArr[i2];
        if (asLong2 == null || asLong2.longValue() < 0) {
            if (i4 >= 0) {
                newUpdate.withValueBackReference("raw_contact_id2", i4);
            }
            return null;
        }
        newUpdate.withValue("raw_contact_id2", asLong2);
        return newUpdate;
    }

    public long findRawContactId() {
        Iterator<RawContactDelta> it = iterator();
        while (it.hasNext()) {
            Long asLong = it.next().getValues().getAsLong("_id");
            if (asLong != null && asLong.longValue() >= 0) {
                return asLong.longValue();
            }
        }
        return -1L;
    }

    public Long getRawContactId(int i) {
        if (i < 0 || i >= size()) {
            return null;
        }
        ValuesDelta values = get(i).getValues();
        if (values.isVisible()) {
            return values.getAsLong("_id");
        }
        return null;
    }

    public RawContactDelta getByRawContactId(Long l) {
        int indexOfRawContactId = indexOfRawContactId(l);
        if (indexOfRawContactId == -1) {
            return null;
        }
        return get(indexOfRawContactId);
    }

    public int indexOfRawContactId(Long l) {
        if (l == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (l.equals(getRawContactId(i))) {
                return i;
            }
        }
        return -1;
    }

    public int indexOfFirstWritableRawContact(Context context) {
        Iterator<RawContactDelta> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getRawContactAccountType(context).areContactsWritable()) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public RawContactDelta getFirstWritableRawContact(Context context) {
        int indexOfFirstWritableRawContact = indexOfFirstWritableRawContact(context);
        if (indexOfFirstWritableRawContact == -1) {
            return null;
        }
        return get(indexOfFirstWritableRawContact);
    }

    public ValuesDelta getSuperPrimaryEntry(String str) {
        Iterator<RawContactDelta> it = iterator();
        ValuesDelta valuesDelta = null;
        ValuesDelta valuesDelta2 = null;
        while (it.hasNext()) {
            ArrayList<ValuesDelta> mimeEntries = it.next().getMimeEntries(str);
            if (mimeEntries == null) {
                return null;
            }
            Iterator<ValuesDelta> it2 = mimeEntries.iterator();
            while (it2.hasNext()) {
                ValuesDelta next = it2.next();
                if (next.isSuperPrimary()) {
                    return next;
                }
                if (valuesDelta == null && next.isPrimary()) {
                    valuesDelta = next;
                } else if (valuesDelta2 == null) {
                    valuesDelta2 = next;
                }
            }
        }
        return valuesDelta != null ? valuesDelta : valuesDelta2;
    }

    public void markRawContactsForSplitting() {
        this.mSplitRawContacts = true;
    }

    public boolean isMarkedForSplitting() {
        return this.mSplitRawContacts;
    }

    public void setJoinWithRawContacts(long[] jArr) {
        this.mJoinWithRawContactIds = jArr;
    }

    public boolean isMarkedForJoining() {
        long[] jArr = this.mJoinWithRawContactIds;
        return jArr != null && jArr.length > 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(size());
        Iterator<RawContactDelta> it = iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), i);
        }
        parcel.writeLongArray(this.mJoinWithRawContactIds);
        parcel.writeInt(this.mSplitRawContacts ? 1 : 0);
    }

    public void readFromParcel(Parcel parcel) {
        ClassLoader classLoader = RawContactDeltaList.class.getClassLoader();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            add((RawContactDelta) parcel.readParcelable(classLoader));
        }
        this.mJoinWithRawContactIds = parcel.createLongArray();
        this.mSplitRawContacts = parcel.readInt() != 0;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "(Split=" + this.mSplitRawContacts + ", Join=[" + Arrays.toString(this.mJoinWithRawContactIds) + "], Values=" + super.toString() + ")";
    }
}
