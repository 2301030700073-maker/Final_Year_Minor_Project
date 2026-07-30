package com.google.android.material.bottomnavigation;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* loaded from: classes.dex */
class BottomNavigationView$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<BottomNavigationView$SavedState> CREATOR = new Parcelable.ClassLoaderCreator<BottomNavigationView$SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public BottomNavigationView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new BottomNavigationView$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public BottomNavigationView$SavedState createFromParcel(Parcel parcel) {
            return new BottomNavigationView$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public BottomNavigationView$SavedState[] newArray(int i) {
            return new BottomNavigationView$SavedState[i];
        }
    };
    Bundle menuPresenterState;

    public BottomNavigationView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        readFromParcel(parcel, classLoader);
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeBundle(this.menuPresenterState);
    }

    private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
        this.menuPresenterState = parcel.readBundle(classLoader);
    }
}
