package a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;

/* loaded from: classes.dex */
public class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new ResultReceiver(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new ResultReceiver[i];
    }
}
