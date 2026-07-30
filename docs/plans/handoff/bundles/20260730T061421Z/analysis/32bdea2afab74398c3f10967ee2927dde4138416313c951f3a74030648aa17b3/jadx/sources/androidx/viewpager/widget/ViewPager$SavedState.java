package androidx.viewpager.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import b.q.a.a;

/* loaded from: classes.dex */
public class ViewPager$SavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: c, reason: collision with root package name */
    public int f208c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f209d;

    public ViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? ViewPager$SavedState.class.getClassLoader() : classLoader;
        this.f208c = parcel.readInt();
        this.f209d = parcel.readParcelable(classLoader);
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("FragmentPager.SavedState{");
        f.append(Integer.toHexString(System.identityHashCode(this)));
        f.append(" position=");
        f.append(this.f208c);
        f.append("}");
        return f.toString();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f94a, i);
        parcel.writeInt(this.f208c);
        parcel.writeParcelable(this.f209d, i);
    }
}
