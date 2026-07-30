package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import b.b.g.W;

/* loaded from: classes.dex */
public class AppCompatSpinner$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator CREATOR = new W();

    /* renamed from: a, reason: collision with root package name */
    public boolean f52a;

    public AppCompatSpinner$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f52a ? (byte) 1 : (byte) 0);
    }

    public AppCompatSpinner$SavedState(Parcel parcel) {
        super(parcel);
        this.f52a = parcel.readByte() != 0;
    }
}
