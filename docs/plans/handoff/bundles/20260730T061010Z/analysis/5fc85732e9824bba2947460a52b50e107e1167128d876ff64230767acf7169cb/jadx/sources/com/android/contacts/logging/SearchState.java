package com.android.contacts.logging;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.common.base.MoreObjects;

/* loaded from: classes.dex */
public final class SearchState implements Parcelable {
    public static final Parcelable.Creator<SearchState> CREATOR = new Parcelable.Creator<SearchState>() { // from class: com.android.contacts.logging.SearchState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchState createFromParcel(Parcel parcel) {
            return new SearchState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchState[] newArray(int i) {
            return new SearchState[i];
        }
    };
    public int numPartitions;
    public int numResults;
    public int queryLength;
    public int numResultsInSelectedPartition = -1;
    public int selectedPartition = -1;
    public int selectedIndexInPartition = -1;
    public int selectedIndex = -1;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SearchState() {
    }

    protected SearchState(Parcel parcel) {
        readFromParcel(parcel);
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        stringHelper.add("queryLength", this.queryLength);
        stringHelper.add("numPartitions", this.numPartitions);
        stringHelper.add("numResults", this.numResults);
        stringHelper.add("numResultsInSelectedPartition", this.numResultsInSelectedPartition);
        stringHelper.add("selectedPartition", this.selectedPartition);
        stringHelper.add("selectedIndexInPartition", this.selectedIndexInPartition);
        stringHelper.add("selectedIndex", this.selectedIndex);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.queryLength);
        parcel.writeInt(this.numPartitions);
        parcel.writeInt(this.numResults);
        parcel.writeInt(this.numResultsInSelectedPartition);
        parcel.writeInt(this.selectedPartition);
        parcel.writeInt(this.selectedIndexInPartition);
        parcel.writeInt(this.selectedIndex);
    }

    private void readFromParcel(Parcel parcel) {
        this.queryLength = parcel.readInt();
        this.numPartitions = parcel.readInt();
        this.numResults = parcel.readInt();
        this.numResultsInSelectedPartition = parcel.readInt();
        this.selectedPartition = parcel.readInt();
        this.selectedIndexInPartition = parcel.readInt();
        this.selectedIndex = parcel.readInt();
    }
}
