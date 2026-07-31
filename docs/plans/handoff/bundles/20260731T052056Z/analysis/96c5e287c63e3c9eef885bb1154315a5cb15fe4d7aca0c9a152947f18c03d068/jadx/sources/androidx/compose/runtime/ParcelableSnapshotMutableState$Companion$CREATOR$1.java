package androidx.compose.runtime;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParcelableSnapshotMutableState$Companion$CREATOR$1 implements Parcelable.ClassLoaderCreator {
    public static ParcelableSnapshotMutableState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        NeverEqualPolicy neverEqualPolicy;
        if (classLoader == null) {
            classLoader = ParcelableSnapshotMutableState$Companion$CREATOR$1.class.getClassLoader();
        }
        Object readValue = parcel.readValue(classLoader);
        int readInt = parcel.readInt();
        if (readInt == 0) {
            neverEqualPolicy = NeverEqualPolicy.INSTANCE;
        } else if (readInt == 1) {
            neverEqualPolicy = NeverEqualPolicy.INSTANCE$3;
        } else {
            if (readInt != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(readInt, "Unsupported MutableState policy ", " was restored"));
                return null;
            }
            neverEqualPolicy = NeverEqualPolicy.INSTANCE$1;
        }
        return new ParcelableSnapshotMutableState(readValue, neverEqualPolicy);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new ParcelableSnapshotMutableState[i];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }
}
