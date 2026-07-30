package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager$LaunchedFragmentInfo;

/* loaded from: classes.dex */
public class T implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new FragmentManager$LaunchedFragmentInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new FragmentManager$LaunchedFragmentInfo[i];
    }
}
