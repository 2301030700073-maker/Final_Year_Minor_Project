package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.TwoStatePreference;

/* loaded from: classes.dex */
public class d0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new TwoStatePreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new TwoStatePreference.SavedState[i];
    }
}
