package b.a.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.activity.result.ActivityResult;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new ActivityResult(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new ActivityResult[i];
    }
}
