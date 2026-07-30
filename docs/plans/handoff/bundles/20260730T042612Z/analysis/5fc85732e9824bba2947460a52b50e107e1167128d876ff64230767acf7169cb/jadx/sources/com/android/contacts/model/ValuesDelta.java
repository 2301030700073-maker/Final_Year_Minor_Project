package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.common.collect.Sets;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ValuesDelta implements Parcelable {
    public static final Parcelable.Creator<ValuesDelta> CREATOR = new Parcelable.Creator<ValuesDelta>() { // from class: com.android.contacts.model.ValuesDelta.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ValuesDelta createFromParcel(Parcel parcel) {
            ValuesDelta valuesDelta = new ValuesDelta();
            valuesDelta.readFromParcel(parcel);
            return valuesDelta;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ValuesDelta[] newArray(int i) {
            return new ValuesDelta[i];
        }
    };
    protected static int sNextInsertId = -1;
    protected ContentValues mAfter;
    protected ContentValues mBefore;
    private boolean mFromTemplate;
    protected String mIdColumn = "_id";

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ValuesDelta() {
    }

    public static ValuesDelta fromBefore(ContentValues contentValues) {
        ValuesDelta valuesDelta = new ValuesDelta();
        valuesDelta.mBefore = contentValues;
        valuesDelta.mAfter = new ContentValues();
        return valuesDelta;
    }

    public static ValuesDelta fromAfter(ContentValues contentValues) {
        ValuesDelta valuesDelta = new ValuesDelta();
        valuesDelta.mBefore = null;
        valuesDelta.mAfter = contentValues;
        String str = valuesDelta.mIdColumn;
        int i = sNextInsertId;
        sNextInsertId = i - 1;
        contentValues.put(str, Integer.valueOf(i));
        return valuesDelta;
    }

    public ContentValues getAfter() {
        return this.mAfter;
    }

    public ContentValues getBefore() {
        return this.mBefore;
    }

    public boolean containsKey(String str) {
        ContentValues contentValues;
        ContentValues contentValues2 = this.mAfter;
        return (contentValues2 != null && contentValues2.containsKey(str)) || ((contentValues = this.mBefore) != null && contentValues.containsKey(str));
    }

    public String getAsString(String str) {
        ContentValues contentValues = this.mAfter;
        if (contentValues != null && contentValues.containsKey(str)) {
            return this.mAfter.getAsString(str);
        }
        ContentValues contentValues2 = this.mBefore;
        if (contentValues2 == null || !contentValues2.containsKey(str)) {
            return null;
        }
        return this.mBefore.getAsString(str);
    }

    public byte[] getAsByteArray(String str) {
        ContentValues contentValues = this.mAfter;
        if (contentValues != null && contentValues.containsKey(str)) {
            return this.mAfter.getAsByteArray(str);
        }
        ContentValues contentValues2 = this.mBefore;
        if (contentValues2 == null || !contentValues2.containsKey(str)) {
            return null;
        }
        return this.mBefore.getAsByteArray(str);
    }

    public Long getAsLong(String str) {
        ContentValues contentValues = this.mAfter;
        if (contentValues != null && contentValues.containsKey(str)) {
            return this.mAfter.getAsLong(str);
        }
        ContentValues contentValues2 = this.mBefore;
        if (contentValues2 == null || !contentValues2.containsKey(str)) {
            return null;
        }
        return this.mBefore.getAsLong(str);
    }

    public Integer getAsInteger(String str) {
        return getAsInteger(str, null);
    }

    public Integer getAsInteger(String str, Integer num) {
        ContentValues contentValues = this.mAfter;
        if (contentValues != null && contentValues.containsKey(str)) {
            return this.mAfter.getAsInteger(str);
        }
        ContentValues contentValues2 = this.mBefore;
        return (contentValues2 == null || !contentValues2.containsKey(str)) ? num : this.mBefore.getAsInteger(str);
    }

    public boolean isChanged(String str) {
        ContentValues contentValues = this.mAfter;
        if (contentValues == null || !contentValues.containsKey(str)) {
            return false;
        }
        Object obj = this.mAfter.get(str);
        if (this.mBefore.get(str) == null) {
            return obj != null;
        }
        return !r4.equals(obj);
    }

    public String getMimetype() {
        return getAsString("mimetype");
    }

    public Long getId() {
        return getAsLong(this.mIdColumn);
    }

    public void setIdColumn(String str) {
        this.mIdColumn = str;
    }

    public boolean isPrimary() {
        Long asLong = getAsLong("is_primary");
        return (asLong == null || asLong.longValue() == 0) ? false : true;
    }

    public void setFromTemplate(boolean z) {
        this.mFromTemplate = z;
    }

    public boolean isFromTemplate() {
        return this.mFromTemplate;
    }

    public boolean isSuperPrimary() {
        Long asLong = getAsLong("is_super_primary");
        return (asLong == null || asLong.longValue() == 0) ? false : true;
    }

    public boolean beforeExists() {
        ContentValues contentValues = this.mBefore;
        return contentValues != null && contentValues.containsKey(this.mIdColumn);
    }

    public boolean isVisible() {
        return this.mAfter != null;
    }

    public boolean isDelete() {
        return beforeExists() && this.mAfter == null;
    }

    public boolean isTransient() {
        return this.mBefore == null && this.mAfter == null;
    }

    public boolean isUpdate() {
        ContentValues contentValues;
        if (beforeExists() && (contentValues = this.mAfter) != null && contentValues.size() != 0) {
            for (String str : this.mAfter.keySet()) {
                Object obj = this.mAfter.get(str);
                Object obj2 = this.mBefore.get(str);
                if (obj2 == null) {
                    if (obj != null) {
                        return true;
                    }
                } else if (!obj2.equals(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isNoop() {
        ContentValues contentValues;
        return beforeExists() && (contentValues = this.mAfter) != null && contentValues.size() == 0;
    }

    public boolean isInsert() {
        return (beforeExists() || this.mAfter == null) ? false : true;
    }

    public void markDeleted() {
        this.mAfter = null;
    }

    private void ensureUpdate() {
        if (this.mAfter == null) {
            this.mAfter = new ContentValues();
        }
    }

    public void put(String str, String str2) {
        ensureUpdate();
        this.mAfter.put(str, str2);
    }

    public void put(String str, byte[] bArr) {
        ensureUpdate();
        this.mAfter.put(str, bArr);
    }

    public void put(String str, int i) {
        ensureUpdate();
        this.mAfter.put(str, Integer.valueOf(i));
    }

    public void put(String str, long j) {
        ensureUpdate();
        this.mAfter.put(str, Long.valueOf(j));
    }

    public void putNull(String str) {
        ensureUpdate();
        this.mAfter.putNull(str);
    }

    public void copyStringFrom(ValuesDelta valuesDelta, String str) {
        ensureUpdate();
        if (containsKey(str) || valuesDelta.containsKey(str)) {
            put(str, valuesDelta.getAsString(str));
        }
    }

    public Set<String> keySet() {
        HashSet newHashSet = Sets.newHashSet();
        ContentValues contentValues = this.mBefore;
        if (contentValues != null) {
            Iterator<Map.Entry<String, Object>> it = contentValues.valueSet().iterator();
            while (it.hasNext()) {
                newHashSet.add(it.next().getKey());
            }
        }
        ContentValues contentValues2 = this.mAfter;
        if (contentValues2 != null) {
            Iterator<Map.Entry<String, Object>> it2 = contentValues2.valueSet().iterator();
            while (it2.hasNext()) {
                newHashSet.add(it2.next().getKey());
            }
        }
        return newHashSet;
    }

    public ContentValues getCompleteValues() {
        ContentValues contentValues = new ContentValues();
        ContentValues contentValues2 = this.mBefore;
        if (contentValues2 != null) {
            contentValues.putAll(contentValues2);
        }
        ContentValues contentValues3 = this.mAfter;
        if (contentValues3 != null) {
            contentValues.putAll(contentValues3);
        }
        if (contentValues.containsKey("data1")) {
            contentValues.remove("group_sourceid");
        }
        return contentValues;
    }

    public static ValuesDelta mergeAfter(ValuesDelta valuesDelta, ValuesDelta valuesDelta2) {
        if (valuesDelta == null && (valuesDelta2.isDelete() || valuesDelta2.isTransient())) {
            return null;
        }
        if (valuesDelta == null) {
            valuesDelta = new ValuesDelta();
        }
        if (!valuesDelta.beforeExists()) {
            valuesDelta.mAfter = valuesDelta2.getCompleteValues();
        } else {
            valuesDelta.mAfter = valuesDelta2.mAfter;
        }
        return valuesDelta;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ValuesDelta)) {
            return false;
        }
        ValuesDelta valuesDelta = (ValuesDelta) obj;
        return subsetEquals(valuesDelta) && valuesDelta.subsetEquals(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        toString(sb);
        return sb.toString();
    }

    public void toString(StringBuilder sb) {
        sb.append("{ ");
        sb.append("IdColumn=");
        sb.append(this.mIdColumn);
        sb.append(", FromTemplate=");
        sb.append(this.mFromTemplate);
        sb.append(", ");
        for (String str : keySet()) {
            sb.append(str);
            sb.append("=");
            sb.append(getAsString(str));
            sb.append(", ");
        }
        sb.append("}");
    }

    public boolean subsetEquals(ValuesDelta valuesDelta) {
        for (String str : keySet()) {
            String asString = getAsString(str);
            String asString2 = valuesDelta.getAsString(str);
            if (asString == null) {
                if (asString2 != null) {
                    return false;
                }
            } else if (!asString.equals(asString2)) {
                return false;
            }
        }
        return true;
    }

    public ContentProviderOperation.Builder buildDiff(Uri uri) {
        return buildDiffHelper(uri);
    }

    public BuilderWrapper buildDiffWrapper(Uri uri) {
        ContentProviderOperation.Builder buildDiffHelper = buildDiffHelper(uri);
        if (isInsert()) {
            return new BuilderWrapper(buildDiffHelper, 1);
        }
        if (isDelete()) {
            return new BuilderWrapper(buildDiffHelper, 3);
        }
        if (isUpdate()) {
            return new BuilderWrapper(buildDiffHelper, 2);
        }
        return null;
    }

    private ContentProviderOperation.Builder buildDiffHelper(Uri uri) {
        ContentProviderOperation.Builder newUpdate;
        if (isInsert()) {
            this.mAfter.remove(this.mIdColumn);
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(uri);
            newInsert.withValues(this.mAfter);
            return newInsert;
        }
        if (isDelete()) {
            newUpdate = ContentProviderOperation.newDelete(uri);
            newUpdate.withSelection(this.mIdColumn + "=" + getId(), null);
        } else {
            if (!isUpdate()) {
                return null;
            }
            newUpdate = ContentProviderOperation.newUpdate(uri);
            newUpdate.withSelection(this.mIdColumn + "=" + getId(), null);
            newUpdate.withValues(this.mAfter);
        }
        return newUpdate;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mBefore, i);
        parcel.writeParcelable(this.mAfter, i);
        parcel.writeString(this.mIdColumn);
    }

    public void readFromParcel(Parcel parcel) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.mBefore = (ContentValues) parcel.readParcelable(classLoader);
        this.mAfter = (ContentValues) parcel.readParcelable(classLoader);
        this.mIdColumn = parcel.readString();
    }

    public void setGroupRowId(long j) {
        put("data1", j);
    }

    public Long getGroupRowId() {
        return getAsLong("data1");
    }

    public void setPhoto(byte[] bArr) {
        put("data15", bArr);
    }

    public byte[] getPhoto() {
        return getAsByteArray("data15");
    }

    public void setSuperPrimary(boolean z) {
        if (z) {
            put("is_super_primary", 1);
        } else {
            put("is_super_primary", 0);
        }
    }

    public void setPhoneticFamilyName(String str) {
        put("data9", str);
    }

    public void setPhoneticMiddleName(String str) {
        put("data8", str);
    }

    public void setPhoneticGivenName(String str) {
        put("data7", str);
    }

    public String getPhoneticFamilyName() {
        return getAsString("data9");
    }

    public String getPhoneticMiddleName() {
        return getAsString("data8");
    }

    public String getPhoneticGivenName() {
        return getAsString("data7");
    }

    public String getDisplayName() {
        return getAsString("data1");
    }

    public void setDisplayName(String str) {
        if (str == null) {
            putNull("data1");
        } else {
            put("data1", str);
        }
    }

    public void copyStructuredNameFieldsFrom(ValuesDelta valuesDelta) {
        copyStringFrom(valuesDelta, "data1");
        copyStringFrom(valuesDelta, "data2");
        copyStringFrom(valuesDelta, "data3");
        copyStringFrom(valuesDelta, "data4");
        copyStringFrom(valuesDelta, "data5");
        copyStringFrom(valuesDelta, "data6");
        copyStringFrom(valuesDelta, "data7");
        copyStringFrom(valuesDelta, "data8");
        copyStringFrom(valuesDelta, "data9");
        copyStringFrom(valuesDelta, "data10");
        copyStringFrom(valuesDelta, "data11");
    }

    public String getPhoneNumber() {
        return getAsString("data1");
    }

    public String getPhoneNormalizedNumber() {
        return getAsString("data4");
    }

    public boolean hasPhoneType() {
        return getPhoneType() != null;
    }

    public Integer getPhoneType() {
        return getAsInteger("data2");
    }

    public String getPhoneLabel() {
        return getAsString("data3");
    }

    public String getEmailData() {
        return getAsString("data1");
    }

    public boolean hasEmailType() {
        return getEmailType() != null;
    }

    public Integer getEmailType() {
        return getAsInteger("data2");
    }

    public String getEmailLabel() {
        return getAsString("data3");
    }
}
