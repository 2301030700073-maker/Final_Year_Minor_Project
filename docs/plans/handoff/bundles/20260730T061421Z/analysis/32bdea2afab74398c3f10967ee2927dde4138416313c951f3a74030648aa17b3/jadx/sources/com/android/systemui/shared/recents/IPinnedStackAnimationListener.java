package com.android.systemui.shared.recents;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IPinnedStackAnimationListener extends IInterface {

    public class Default implements IPinnedStackAnimationListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.IPinnedStackAnimationListener
        public void onPinnedStackAnimationStarted() {
        }
    }

    public abstract class Stub extends Binder implements IPinnedStackAnimationListener {
        public static final String DESCRIPTOR = "com.android.systemui.shared.recents.IPinnedStackAnimationListener";
        public static final int TRANSACTION_onPinnedStackAnimationStarted = 1;

        public class Proxy implements IPinnedStackAnimationListener {
            public static IPinnedStackAnimationListener sDefaultImpl;
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.systemui.shared.recents.IPinnedStackAnimationListener
            public void onPinnedStackAnimationStarted() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onPinnedStackAnimationStarted();
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPinnedStackAnimationListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IPinnedStackAnimationListener)) ? new Proxy(iBinder) : (IPinnedStackAnimationListener) queryLocalInterface;
        }

        public static IPinnedStackAnimationListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPinnedStackAnimationListener iPinnedStackAnimationListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iPinnedStackAnimationListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iPinnedStackAnimationListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onPinnedStackAnimationStarted();
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onPinnedStackAnimationStarted();
}
