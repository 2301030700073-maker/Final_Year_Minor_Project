package com.facebook.ads.redexgen.core;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.internal.NativeProtocol;

/* loaded from: assets/audience_network.dex */
public abstract class NZ extends Binder {
    public static final int A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static OI<Bundle> A00(IBinder iBinder) {
        C4T A01 = OI.A01();
        int i = 0;
        int i2 = 1;
        while (i2 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        i2 = obtain2.readInt();
                        if (i2 == 1) {
                            A01.A04((Bundle) AbstractC2011es.A01(obtain2.readBundle()));
                            i++;
                        }
                    }
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
        return A01.A05();
    }

    static {
        A00 = AbstractC2094gE.A02 >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
    }
}
