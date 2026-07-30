package com.android.systemui.shared.recents;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IOverviewProxy extends IInterface {

    public class Default implements IOverviewProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onActiveNavBarRegionChanges(Region region) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantAvailable(boolean z) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantVisibilityChanged(float f) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onInitialize(Bundle bundle) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewHidden(boolean z, boolean z2) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewShown(boolean z) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewToggle() {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemUiStateChanged(int i) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onTip(int i, int i2) {
        }
    }

    public abstract class Stub extends Binder implements IOverviewProxy {
        public static final String DESCRIPTOR = "com.android.systemui.shared.recents.IOverviewProxy";
        public static final int TRANSACTION_onActiveNavBarRegionChanges = 12;
        public static final int TRANSACTION_onAssistantAvailable = 14;
        public static final int TRANSACTION_onAssistantVisibilityChanged = 15;
        public static final int TRANSACTION_onBackAction = 16;
        public static final int TRANSACTION_onInitialize = 13;
        public static final int TRANSACTION_onOverviewHidden = 9;
        public static final int TRANSACTION_onOverviewShown = 8;
        public static final int TRANSACTION_onOverviewToggle = 7;
        public static final int TRANSACTION_onSplitScreenSecondaryBoundsChanged = 18;
        public static final int TRANSACTION_onSystemUiStateChanged = 17;
        public static final int TRANSACTION_onTip = 11;

        public class Proxy implements IOverviewProxy {
            public static IOverviewProxy sDefaultImpl;
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

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onActiveNavBarRegionChanges(Region region) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (region != null) {
                        obtain.writeInt(1);
                        region.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(12, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActiveNavBarRegionChanges(region);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onAssistantAvailable(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(14, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onAssistantAvailable(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onAssistantVisibilityChanged(float f) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(15, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onAssistantVisibilityChanged(f);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (this.mRemote.transact(16, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onBackAction(z, i, i2, z2, z3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onInitialize(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(13, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onInitialize(bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewHidden(boolean z, boolean z2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    if (this.mRemote.transact(9, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onOverviewHidden(z, z2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewShown(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(8, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onOverviewShown(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewToggle() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(7, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onOverviewToggle();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (rect != null) {
                        obtain.writeInt(1);
                        rect.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (rect2 != null) {
                        obtain.writeInt(1);
                        rect2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(18, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSplitScreenSecondaryBoundsChanged(rect, rect2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onSystemUiStateChanged(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(17, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSystemUiStateChanged(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onTip(int i, int i2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(11, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTip(i, i2);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOverviewProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IOverviewProxy)) ? new Proxy(iBinder) : (IOverviewProxy) queryLocalInterface;
        }

        public static IOverviewProxy getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IOverviewProxy iOverviewProxy) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iOverviewProxy == null) {
                return false;
            }
            Proxy.sDefaultImpl = iOverviewProxy;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 7) {
                parcel.enforceInterface(DESCRIPTOR);
                onOverviewToggle();
                return true;
            }
            if (i == 8) {
                parcel.enforceInterface(DESCRIPTOR);
                onOverviewShown(parcel.readInt() != 0);
                return true;
            }
            if (i == 9) {
                parcel.enforceInterface(DESCRIPTOR);
                onOverviewHidden(parcel.readInt() != 0, parcel.readInt() != 0);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTip(parcel.readInt(), parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActiveNavBarRegionChanges(parcel.readInt() != 0 ? (Region) Region.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInitialize(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAssistantAvailable(parcel.readInt() != 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAssistantVisibilityChanged(parcel.readFloat());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBackAction(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSystemUiStateChanged(parcel.readInt());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSplitScreenSecondaryBoundsChanged(parcel.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onActiveNavBarRegionChanges(Region region);

    void onAssistantAvailable(boolean z);

    void onAssistantVisibilityChanged(float f);

    void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3);

    void onInitialize(Bundle bundle);

    void onOverviewHidden(boolean z, boolean z2);

    void onOverviewShown(boolean z);

    void onOverviewToggle();

    void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2);

    void onSystemUiStateChanged(int i);

    void onTip(int i, int i2);
}
