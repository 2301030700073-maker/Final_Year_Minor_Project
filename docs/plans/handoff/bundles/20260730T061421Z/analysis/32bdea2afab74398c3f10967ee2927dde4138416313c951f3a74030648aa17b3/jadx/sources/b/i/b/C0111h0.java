package b.i.b;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.fragment.app.FragmentTabHost$SavedState;
import b.i.b.C0111h0;
import c.a.c.a.a;

/* renamed from: b.i.b.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0111h0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(final Parcel parcel) {
        return new View.BaseSavedState(parcel) { // from class: androidx.fragment.app.FragmentTabHost$SavedState
            public static final Parcelable.Creator CREATOR = new C0111h0();

            /* renamed from: a, reason: collision with root package name */
            public String f117a;

            {
                super(parcel);
                this.f117a = parcel.readString();
            }

            public String toString() {
                StringBuilder f = a.f("FragmentTabHost.SavedState{");
                f.append(Integer.toHexString(System.identityHashCode(this)));
                f.append(" curTab=");
                f.append(this.f117a);
                f.append("}");
                return f.toString();
            }

            @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel2, int i) {
                super.writeToParcel(parcel2, i);
                parcel2.writeString(this.f117a);
            }
        };
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new FragmentTabHost$SavedState[i];
    }
}
