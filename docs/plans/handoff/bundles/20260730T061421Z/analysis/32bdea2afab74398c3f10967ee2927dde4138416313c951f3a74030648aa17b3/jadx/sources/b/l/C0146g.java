package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.ListPreference;

/* renamed from: b.l.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0146g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new ListPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new ListPreference.SavedState[i];
    }
}
