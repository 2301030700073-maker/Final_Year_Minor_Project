package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.SeekBarPreference;

/* loaded from: classes.dex */
public class a0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new SeekBarPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new SeekBarPreference.SavedState[i];
    }
}
