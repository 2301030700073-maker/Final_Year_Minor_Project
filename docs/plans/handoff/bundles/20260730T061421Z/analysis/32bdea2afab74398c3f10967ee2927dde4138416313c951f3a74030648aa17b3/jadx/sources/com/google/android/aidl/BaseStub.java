package com.google.android.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import c.b.a.d.a.a.i;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public abstract class BaseStub extends Binder implements IInterface {
    public BaseStub(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i > 16777215) {
            z = super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z = false;
        }
        if (z) {
            return true;
        }
        i iVar = (i) this;
        if (i == 1) {
            float readFloat = parcel.readFloat();
            iVar.f3091a.removeMessages(2);
            Message.obtain(iVar.f3091a, 2, Float.valueOf(readFloat)).sendToTarget();
            if (readFloat > RecentsState.NO_OFFSET && iVar.f) {
                iVar.f = false;
            }
        } else {
            if (i != 2) {
                return false;
            }
            Message.obtain(iVar.f3091a, 4, parcel.readInt(), 0).sendToTarget();
        }
        return true;
    }
}
