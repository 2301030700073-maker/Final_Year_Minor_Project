package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import b.g.a.a;

/* loaded from: classes.dex */
public class DrawerLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: c, reason: collision with root package name */
    public int f95c;

    /* renamed from: d, reason: collision with root package name */
    public int f96d;
    public int e;
    public int f;
    public int g;

    public DrawerLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f95c = 0;
        this.f95c = parcel.readInt();
        this.f96d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f94a, i);
        parcel.writeInt(this.f95c);
        parcel.writeInt(this.f96d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
    }
}
