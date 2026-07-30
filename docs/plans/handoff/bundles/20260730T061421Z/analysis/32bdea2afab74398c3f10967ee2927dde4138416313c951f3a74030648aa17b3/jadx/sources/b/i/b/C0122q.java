package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment$SavedState;

/* renamed from: b.i.b.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0122q implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new Fragment$SavedState(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new Fragment$SavedState[i];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new Fragment$SavedState(parcel, classLoader);
    }
}
