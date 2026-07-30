package b.b.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.ActionMenuPresenter$SavedState;

/* renamed from: b.b.g.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0068q implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new ActionMenuPresenter$SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new ActionMenuPresenter$SavedState[i];
    }
}
