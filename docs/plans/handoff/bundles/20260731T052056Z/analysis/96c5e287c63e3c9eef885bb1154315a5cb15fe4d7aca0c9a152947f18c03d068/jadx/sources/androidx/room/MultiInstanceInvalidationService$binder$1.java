package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService$binder$1 extends Binder implements IMultiInstanceInvalidationService {
    public final /* synthetic */ MultiInstanceInvalidationService this$0;

    public MultiInstanceInvalidationService$binder$1(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.this$0 = multiInstanceInvalidationService;
        attachInterface(this, IMultiInstanceInvalidationService.DESCRIPTOR);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        MultiInstanceInvalidationService$callbackList$1 multiInstanceInvalidationService$callbackList$1;
        String str = IMultiInstanceInvalidationService.DESCRIPTOR;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback = null;
        IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback2 = null;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(IMultiInstanceInvalidationCallback.DESCRIPTOR);
                if (queryLocalInterface == null || !(queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                    IMultiInstanceInvalidationCallback$Stub$Proxy iMultiInstanceInvalidationCallback$Stub$Proxy = new IMultiInstanceInvalidationCallback$Stub$Proxy();
                    iMultiInstanceInvalidationCallback$Stub$Proxy.mRemote = readStrongBinder;
                    iMultiInstanceInvalidationCallback = iMultiInstanceInvalidationCallback$Stub$Proxy;
                } else {
                    iMultiInstanceInvalidationCallback = (IMultiInstanceInvalidationCallback) queryLocalInterface;
                }
            }
            int registerCallback = registerCallback(iMultiInstanceInvalidationCallback, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(registerCallback);
            return true;
        }
        if (i == 2) {
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(IMultiInstanceInvalidationCallback.DESCRIPTOR);
                if (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof IMultiInstanceInvalidationCallback)) {
                    IMultiInstanceInvalidationCallback$Stub$Proxy iMultiInstanceInvalidationCallback$Stub$Proxy2 = new IMultiInstanceInvalidationCallback$Stub$Proxy();
                    iMultiInstanceInvalidationCallback$Stub$Proxy2.mRemote = readStrongBinder2;
                    iMultiInstanceInvalidationCallback2 = iMultiInstanceInvalidationCallback$Stub$Proxy2;
                } else {
                    iMultiInstanceInvalidationCallback2 = (IMultiInstanceInvalidationCallback) queryLocalInterface2;
                }
            }
            unregisterCallback(iMultiInstanceInvalidationCallback2, parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
        if (i != 3) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        int readInt = parcel.readInt();
        String[] createStringArray = parcel.createStringArray();
        createStringArray.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
        synchronized (multiInstanceInvalidationService.callbackList) {
            String str2 = (String) multiInstanceInvalidationService.clientNames.get(Integer.valueOf(readInt));
            if (str2 == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
            } else {
                int beginBroadcast = multiInstanceInvalidationService.callbackList.beginBroadcast();
                int i3 = 0;
                while (true) {
                    multiInstanceInvalidationService$callbackList$1 = multiInstanceInvalidationService.callbackList;
                    if (i3 >= beginBroadcast) {
                        break;
                    }
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService$callbackList$1.getBroadcastCookie(i3);
                        broadcastCookie.getClass();
                        Integer num = (Integer) broadcastCookie;
                        int intValue = num.intValue();
                        String str3 = (String) multiInstanceInvalidationService.clientNames.get(num);
                        if (readInt != intValue && str2.equals(str3)) {
                            try {
                                ((IMultiInstanceInvalidationCallback) multiInstanceInvalidationService.callbackList.getBroadcastItem(i3)).onInvalidation(createStringArray);
                            } catch (RemoteException e) {
                                Log.w("ROOM", "Error invoking a remote callback", e);
                            }
                        }
                        i3++;
                    } catch (Throwable th) {
                        multiInstanceInvalidationService.callbackList.finishBroadcast();
                        throw th;
                    }
                }
                multiInstanceInvalidationService$callbackList$1.finishBroadcast();
            }
        }
        return true;
    }

    public final int registerCallback(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
        iMultiInstanceInvalidationCallback.getClass();
        int i = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
        synchronized (multiInstanceInvalidationService.callbackList) {
            try {
                int i2 = multiInstanceInvalidationService.maxClientId + 1;
                multiInstanceInvalidationService.maxClientId = i2;
                if (multiInstanceInvalidationService.callbackList.register(iMultiInstanceInvalidationCallback, Integer.valueOf(i2))) {
                    multiInstanceInvalidationService.clientNames.put(Integer.valueOf(i2), str);
                    i = i2;
                } else {
                    multiInstanceInvalidationService.maxClientId--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final void unregisterCallback(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i) {
        iMultiInstanceInvalidationCallback.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
        synchronized (multiInstanceInvalidationService.callbackList) {
            multiInstanceInvalidationService.callbackList.unregister(iMultiInstanceInvalidationCallback);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
