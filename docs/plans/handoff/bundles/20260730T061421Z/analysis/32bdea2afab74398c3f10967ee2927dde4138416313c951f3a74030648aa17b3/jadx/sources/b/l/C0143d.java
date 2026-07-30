package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.EditTextPreference;

/* renamed from: b.l.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0143d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new EditTextPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new EditTextPreference.SavedState[i];
    }
}
