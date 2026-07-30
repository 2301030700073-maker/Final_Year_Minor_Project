package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.MultiSelectListPreference;

/* renamed from: b.l.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0150k implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new MultiSelectListPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new MultiSelectListPreference.SavedState[i];
    }
}
