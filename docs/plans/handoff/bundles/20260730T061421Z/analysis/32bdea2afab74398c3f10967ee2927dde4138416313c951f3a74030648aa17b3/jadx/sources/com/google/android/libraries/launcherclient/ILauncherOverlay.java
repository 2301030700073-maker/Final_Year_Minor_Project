package com.google.android.libraries.launcherclient;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.WindowManager;
import c.b.a.a.a;
import com.google.android.aidl.BaseStub;

/* loaded from: classes.dex */
public interface ILauncherOverlay extends IInterface {

    public abstract class Stub extends BaseStub implements ILauncherOverlay {

        public class Proxy implements ILauncherOverlay, IInterface {
            public final String mDescriptor = "com.google.android.libraries.launcherclient.ILauncherOverlay";
            public final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void closeOverlay(int i) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeInt(i);
                transactOneway(6, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void endScroll() {
                transactOneway(3, obtainAndWriteInterfaceToken());
            }

            public Parcel obtainAndWriteInterfaceToken() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(this.mDescriptor);
                return obtain;
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void onPause() {
                transactOneway(7, obtainAndWriteInterfaceToken());
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void onResume() {
                transactOneway(8, obtainAndWriteInterfaceToken());
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void onScroll(float f) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeFloat(f);
                transactOneway(2, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void openOverlay(int i) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeInt(i);
                transactOneway(9, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void setActivityState(int i) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeInt(i);
                transactOneway(16, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void startScroll() {
                transactOneway(1, obtainAndWriteInterfaceToken());
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public boolean startSearch(byte[] bArr, Bundle bundle) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeByteArray(bArr);
                a.b(obtainAndWriteInterfaceToken, bundle);
                Parcel obtain = Parcel.obtain();
                try {
                    try {
                        this.mRemote.transact(17, obtainAndWriteInterfaceToken, obtain, 0);
                        obtain.readException();
                        obtainAndWriteInterfaceToken.recycle();
                        boolean z = obtain.readInt() != 0;
                        obtain.recycle();
                        return z;
                    } catch (RuntimeException e) {
                        obtain.recycle();
                        throw e;
                    }
                } catch (Throwable th) {
                    obtainAndWriteInterfaceToken.recycle();
                    throw th;
                }
            }

            public void transactOneway(int i, Parcel parcel) {
                try {
                    this.mRemote.transact(i, parcel, null, 1);
                } finally {
                    parcel.recycle();
                }
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void windowAttached(WindowManager.LayoutParams layoutParams, ILauncherOverlayCallback iLauncherOverlayCallback, int i) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                a.b(obtainAndWriteInterfaceToken, layoutParams);
                if (iLauncherOverlayCallback == null) {
                    obtainAndWriteInterfaceToken.writeStrongBinder(null);
                } else {
                    obtainAndWriteInterfaceToken.writeStrongBinder(iLauncherOverlayCallback.asBinder());
                }
                obtainAndWriteInterfaceToken.writeInt(i);
                transactOneway(4, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void windowAttached2(Bundle bundle, ILauncherOverlayCallback iLauncherOverlayCallback) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                a.b(obtainAndWriteInterfaceToken, bundle);
                if (iLauncherOverlayCallback == null) {
                    obtainAndWriteInterfaceToken.writeStrongBinder(null);
                } else {
                    obtainAndWriteInterfaceToken.writeStrongBinder(iLauncherOverlayCallback.asBinder());
                }
                transactOneway(14, obtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public void windowDetached(boolean z) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                a.a(obtainAndWriteInterfaceToken, z);
                transactOneway(5, obtainAndWriteInterfaceToken);
            }
        }

        public static ILauncherOverlay asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
            return queryLocalInterface instanceof ILauncherOverlay ? (ILauncherOverlay) queryLocalInterface : new Proxy(iBinder);
        }
    }

    void closeOverlay(int i);

    void endScroll();

    void onPause();

    void onResume();

    void onScroll(float f);

    void openOverlay(int i);

    void setActivityState(int i);

    void startScroll();

    boolean startSearch(byte[] bArr, Bundle bundle);

    void windowAttached(WindowManager.LayoutParams layoutParams, ILauncherOverlayCallback iLauncherOverlayCallback, int i);

    void windowAttached2(Bundle bundle, ILauncherOverlayCallback iLauncherOverlayCallback);

    void windowDetached(boolean z);
}
