package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import b.b.c.G;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class AppCompatDelegateImpl$PanelFeatureState$SavedState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new G();

    /* renamed from: a, reason: collision with root package name */
    public int f29a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f30b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f31c;

    public static AppCompatDelegateImpl$PanelFeatureState$SavedState a(Parcel parcel, ClassLoader classLoader) {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = new AppCompatDelegateImpl$PanelFeatureState$SavedState();
        appCompatDelegateImpl$PanelFeatureState$SavedState.f29a = parcel.readInt();
        boolean z = parcel.readInt() == 1;
        appCompatDelegateImpl$PanelFeatureState$SavedState.f30b = z;
        if (z) {
            appCompatDelegateImpl$PanelFeatureState$SavedState.f31c = parcel.readBundle(classLoader);
        }
        return appCompatDelegateImpl$PanelFeatureState$SavedState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f29a);
        parcel.writeInt(this.f30b ? 1 : 0);
        if (this.f30b) {
            parcel.writeBundle(this.f31c);
        }
    }
}
