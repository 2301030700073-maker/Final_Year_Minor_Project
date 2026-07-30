package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManagerState;

/* loaded from: classes.dex */
public class Z implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new FragmentManagerState[i];
    }
}
