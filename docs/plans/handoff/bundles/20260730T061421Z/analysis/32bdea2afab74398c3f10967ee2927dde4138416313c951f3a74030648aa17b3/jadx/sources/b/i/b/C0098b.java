package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.BackStackState;

/* renamed from: b.i.b.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0098b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new BackStackState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new BackStackState[i];
    }
}
