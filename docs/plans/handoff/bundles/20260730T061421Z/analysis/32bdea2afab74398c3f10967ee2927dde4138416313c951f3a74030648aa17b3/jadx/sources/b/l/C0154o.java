package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.Preference;

/* renamed from: b.l.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0154o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new Preference.BaseSavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new Preference.BaseSavedState[i];
    }
}
