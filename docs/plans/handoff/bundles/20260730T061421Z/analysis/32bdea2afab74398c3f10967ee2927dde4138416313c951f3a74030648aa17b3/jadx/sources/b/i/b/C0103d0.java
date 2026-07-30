package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentState;

/* renamed from: b.i.b.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0103d0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new FragmentState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new FragmentState[i];
    }
}
