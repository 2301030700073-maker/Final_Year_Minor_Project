package b.m.b;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

/* loaded from: classes.dex */
public class C0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i];
    }
}
