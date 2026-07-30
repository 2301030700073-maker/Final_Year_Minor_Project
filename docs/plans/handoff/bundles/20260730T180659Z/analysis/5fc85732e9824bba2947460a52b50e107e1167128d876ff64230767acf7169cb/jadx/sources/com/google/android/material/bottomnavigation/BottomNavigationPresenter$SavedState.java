package com.google.android.material.bottomnavigation;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
class BottomNavigationPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<BottomNavigationPresenter$SavedState> CREATOR = new Parcelable.Creator<BottomNavigationPresenter$SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationPresenter$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BottomNavigationPresenter$SavedState createFromParcel(Parcel parcel) {
            return new BottomNavigationPresenter$SavedState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BottomNavigationPresenter$SavedState[] newArray(int i) {
            return new BottomNavigationPresenter$SavedState[i];
        }
    };
    int selectedItemId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    BottomNavigationPresenter$SavedState() {
    }

    BottomNavigationPresenter$SavedState(Parcel parcel) {
        this.selectedItemId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.selectedItemId);
    }
}
