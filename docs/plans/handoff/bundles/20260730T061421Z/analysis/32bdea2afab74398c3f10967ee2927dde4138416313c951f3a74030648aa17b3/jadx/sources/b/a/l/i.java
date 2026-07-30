package b.a.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.activity.result.IntentSenderRequest;

/* loaded from: classes.dex */
public class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new IntentSenderRequest(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new IntentSenderRequest[i];
    }
}
