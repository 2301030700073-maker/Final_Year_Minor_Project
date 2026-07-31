package com.livefront.bridge.wrapper;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentState;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BitmapWrapper implements Parcelable {
    public static final Parcelable.Creator<BitmapWrapper> CREATOR = new FragmentState.AnonymousClass1(29);
    public Bitmap mBitmap;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Bitmap bitmap = this.mBitmap;
        ByteBuffer allocate = ByteBuffer.allocate(bitmap.getAllocationByteCount());
        bitmap.copyPixelsToBuffer(allocate);
        parcel.writeInt(bitmap.getWidth());
        parcel.writeInt(bitmap.getHeight());
        parcel.writeInt(bitmap.getConfig().ordinal());
        parcel.writeByteArray(allocate.array());
    }
}
