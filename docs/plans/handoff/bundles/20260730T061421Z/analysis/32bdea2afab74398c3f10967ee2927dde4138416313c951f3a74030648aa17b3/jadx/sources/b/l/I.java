package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.PreferenceGroup;

/* loaded from: classes.dex */
public class I implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new PreferenceGroup.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new PreferenceGroup.SavedState[i];
    }
}
