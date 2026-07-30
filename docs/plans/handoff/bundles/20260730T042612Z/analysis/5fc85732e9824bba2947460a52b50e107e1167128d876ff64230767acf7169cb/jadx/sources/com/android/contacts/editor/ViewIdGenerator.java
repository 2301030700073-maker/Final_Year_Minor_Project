package com.android.contacts.editor;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.dataitem.DataKind;

/* loaded from: classes.dex */
public final class ViewIdGenerator implements Parcelable {
    private Bundle mIdMap = new Bundle();
    private int mNextId = 1;
    private static final StringBuilder sWorkStringBuilder = new StringBuilder();
    public static final Parcelable.Creator<ViewIdGenerator> CREATOR = new Parcelable.Creator<ViewIdGenerator>() { // from class: com.android.contacts.editor.ViewIdGenerator.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewIdGenerator createFromParcel(Parcel parcel) {
            ViewIdGenerator viewIdGenerator = new ViewIdGenerator();
            viewIdGenerator.readFromParcel(parcel);
            return viewIdGenerator;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewIdGenerator[] newArray(int i) {
            return new ViewIdGenerator[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getId(RawContactDelta rawContactDelta, DataKind dataKind, ValuesDelta valuesDelta, int i) {
        String mapKey = getMapKey(rawContactDelta, dataKind, valuesDelta, i);
        int i2 = this.mIdMap.getInt(mapKey, 0);
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.mNextId;
        this.mNextId = i3 + 1;
        int i4 = i3 & 65535;
        this.mIdMap.putInt(mapKey, i4);
        return i4;
    }

    private static String getMapKey(RawContactDelta rawContactDelta, DataKind dataKind, ValuesDelta valuesDelta, int i) {
        StringBuilder sb = sWorkStringBuilder;
        sb.setLength(0);
        if (rawContactDelta != null) {
            sb.append(rawContactDelta.getValues().getId());
            if (dataKind != null) {
                sb.append('*');
                sb.append(dataKind.mimeType);
                if (valuesDelta != null) {
                    sb.append('*');
                    sb.append(valuesDelta.getId());
                    if (i != -1) {
                        sb.append('*');
                        sb.append(i);
                    }
                }
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mNextId);
        parcel.writeBundle(this.mIdMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readFromParcel(Parcel parcel) {
        this.mNextId = parcel.readInt();
        this.mIdMap = parcel.readBundle();
    }
}
