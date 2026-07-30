package com.android.systemui.shared.recents;

import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.MotionEvent;
import com.android.systemui.shared.recents.IPinnedStackAnimationListener;
import com.android.systemui.shared.recents.model.Task;

/* loaded from: classes.dex */
public interface ISystemUiProxy extends IInterface {

    public class Default implements ISystemUiProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public Rect getNonMinimizedSplitScreenSecondaryBounds() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public Bundle monitorGestureInput(String str, int i) {
            return null;
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyAccessibilityButtonClicked(int i) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyAccessibilityButtonLongClicked() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifySwipeToHomeFinished() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onAssistantGestureCompletion(float f) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onAssistantProgress(float f) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onOverviewShown(boolean z) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onQuickSwitchToNewTask(int i) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onSplitScreenInvoked() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onStatusBarMotionEvent(MotionEvent motionEvent) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setBackButtonAlpha(float f, boolean z) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setNavBarButtonAlpha(float f, boolean z) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setPinnedStackAnimationListener(IPinnedStackAnimationListener iPinnedStackAnimationListener) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setShelfHeight(boolean z, int i) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setSplitScreenMinimized(boolean z) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void startAssistant(Bundle bundle) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void startScreenPinning(int i) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void stopScreenPinning() {
        }
    }

    public abstract class Stub extends Binder implements ISystemUiProxy {
        public static final String DESCRIPTOR = "com.android.systemui.shared.recents.ISystemUiProxy";
        public static final int TRANSACTION_getNonMinimizedSplitScreenSecondaryBounds = 8;
        public static final int TRANSACTION_handleImageAsScreenshot = 22;
        public static final int TRANSACTION_handleImageBundleAsScreenshot = 27;
        public static final int TRANSACTION_monitorGestureInput = 15;
        public static final int TRANSACTION_notifyAccessibilityButtonClicked = 16;
        public static final int TRANSACTION_notifyAccessibilityButtonLongClicked = 17;
        public static final int TRANSACTION_notifySwipeToHomeFinished = 24;
        public static final int TRANSACTION_onAssistantGestureCompletion = 19;
        public static final int TRANSACTION_onAssistantProgress = 13;
        public static final int TRANSACTION_onOverviewShown = 7;
        public static final int TRANSACTION_onQuickSwitchToNewTask = 26;
        public static final int TRANSACTION_onSplitScreenInvoked = 6;
        public static final int TRANSACTION_onStatusBarMotionEvent = 10;
        public static final int TRANSACTION_setBackButtonAlpha = 9;
        public static final int TRANSACTION_setNavBarButtonAlpha = 20;
        public static final int TRANSACTION_setPinnedStackAnimationListener = 25;
        public static final int TRANSACTION_setShelfHeight = 21;
        public static final int TRANSACTION_setSplitScreenMinimized = 23;
        public static final int TRANSACTION_startAssistant = 14;
        public static final int TRANSACTION_startScreenPinning = 2;
        public static final int TRANSACTION_stopScreenPinning = 18;

        public class Proxy implements ISystemUiProxy {
            public static ISystemUiProxy sDefaultImpl;
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

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public Rect getNonMinimizedSplitScreenSecondaryBounds() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getNonMinimizedSplitScreenSecondaryBounds();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bitmap != null) {
                        obtain.writeInt(1);
                        bitmap.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (rect != null) {
                        obtain.writeInt(1);
                        rect.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (insets != null) {
                        obtain.writeInt(1);
                        insets.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(22, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().handleImageAsScreenshot(bitmap, rect, insets, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (rect != null) {
                        obtain.writeInt(1);
                        rect.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (insets != null) {
                        obtain.writeInt(1);
                        insets.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (taskKey != null) {
                        obtain.writeInt(1);
                        taskKey.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(27, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().handleImageBundleAsScreenshot(bundle, rect, insets, taskKey);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public Bundle monitorGestureInput(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(15, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().monitorGestureInput(str, i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyAccessibilityButtonClicked(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(16, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyAccessibilityButtonClicked(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyAccessibilityButtonLongClicked() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(17, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyAccessibilityButtonLongClicked();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifySwipeToHomeFinished() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(24, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifySwipeToHomeFinished();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onAssistantGestureCompletion(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(19, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAssistantGestureCompletion(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onAssistantProgress(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (this.mRemote.transact(13, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAssistantProgress(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onOverviewShown(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(7, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onOverviewShown(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onQuickSwitchToNewTask(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(26, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onQuickSwitchToNewTask(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onSplitScreenInvoked() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSplitScreenInvoked();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onStatusBarMotionEvent(MotionEvent motionEvent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (motionEvent != null) {
                        obtain.writeInt(1);
                        motionEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(10, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStatusBarMotionEvent(motionEvent);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setBackButtonAlpha(float f, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(9, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setBackButtonAlpha(f, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setNavBarButtonAlpha(float f, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(20, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setNavBarButtonAlpha(f, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setPinnedStackAnimationListener(IPinnedStackAnimationListener iPinnedStackAnimationListener) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iPinnedStackAnimationListener != null ? iPinnedStackAnimationListener.asBinder() : null);
                    if (this.mRemote.transact(25, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPinnedStackAnimationListener(iPinnedStackAnimationListener);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setShelfHeight(boolean z, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(21, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setShelfHeight(z, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setSplitScreenMinimized(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(23, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setSplitScreenMinimized(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void startAssistant(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(14, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startAssistant(bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void startScreenPinning(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startScreenPinning(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void stopScreenPinning() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(18, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stopScreenPinning();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISystemUiProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISystemUiProxy)) ? new Proxy(iBinder) : (ISystemUiProxy) queryLocalInterface;
        }

        public static ISystemUiProxy getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISystemUiProxy iSystemUiProxy) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iSystemUiProxy == null) {
                return false;
            }
            Proxy.sDefaultImpl = iSystemUiProxy;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                startScreenPinning(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSplitScreenInvoked();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onOverviewShown(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    Rect nonMinimizedSplitScreenSecondaryBounds = getNonMinimizedSplitScreenSecondaryBounds();
                    parcel2.writeNoException();
                    if (nonMinimizedSplitScreenSecondaryBounds != null) {
                        parcel2.writeInt(1);
                        nonMinimizedSplitScreenSecondaryBounds.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBackButtonAlpha(parcel.readFloat(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStatusBarMotionEvent(parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                default:
                    switch (i) {
                        case 13:
                            parcel.enforceInterface(DESCRIPTOR);
                            onAssistantProgress(parcel.readFloat());
                            parcel2.writeNoException();
                            return true;
                        case 14:
                            parcel.enforceInterface(DESCRIPTOR);
                            startAssistant(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                            parcel2.writeNoException();
                            return true;
                        case 15:
                            parcel.enforceInterface(DESCRIPTOR);
                            Bundle monitorGestureInput = monitorGestureInput(parcel.readString(), parcel.readInt());
                            parcel2.writeNoException();
                            if (monitorGestureInput != null) {
                                parcel2.writeInt(1);
                                monitorGestureInput.writeToParcel(parcel2, 1);
                            } else {
                                parcel2.writeInt(0);
                            }
                            return true;
                        case 16:
                            parcel.enforceInterface(DESCRIPTOR);
                            notifyAccessibilityButtonClicked(parcel.readInt());
                            parcel2.writeNoException();
                            return true;
                        case 17:
                            parcel.enforceInterface(DESCRIPTOR);
                            notifyAccessibilityButtonLongClicked();
                            parcel2.writeNoException();
                            return true;
                        case 18:
                            parcel.enforceInterface(DESCRIPTOR);
                            stopScreenPinning();
                            parcel2.writeNoException();
                            return true;
                        case 19:
                            parcel.enforceInterface(DESCRIPTOR);
                            onAssistantGestureCompletion(parcel.readFloat());
                            parcel2.writeNoException();
                            return true;
                        case 20:
                            parcel.enforceInterface(DESCRIPTOR);
                            setNavBarButtonAlpha(parcel.readFloat(), parcel.readInt() != 0);
                            parcel2.writeNoException();
                            return true;
                        case 21:
                            parcel.enforceInterface(DESCRIPTOR);
                            setShelfHeight(parcel.readInt() != 0, parcel.readInt());
                            parcel2.writeNoException();
                            return true;
                        case 22:
                            parcel.enforceInterface(DESCRIPTOR);
                            handleImageAsScreenshot(parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Insets) Insets.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                            parcel2.writeNoException();
                            return true;
                        case 23:
                            parcel.enforceInterface(DESCRIPTOR);
                            setSplitScreenMinimized(parcel.readInt() != 0);
                            parcel2.writeNoException();
                            return true;
                        case 24:
                            parcel.enforceInterface(DESCRIPTOR);
                            notifySwipeToHomeFinished();
                            parcel2.writeNoException();
                            return true;
                        case 25:
                            parcel.enforceInterface(DESCRIPTOR);
                            setPinnedStackAnimationListener(IPinnedStackAnimationListener.Stub.asInterface(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            return true;
                        case TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                            parcel.enforceInterface(DESCRIPTOR);
                            onQuickSwitchToNewTask(parcel.readInt());
                            parcel2.writeNoException();
                            return true;
                        case TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                            parcel.enforceInterface(DESCRIPTOR);
                            handleImageBundleAsScreenshot(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Insets) Insets.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Task.TaskKey) Task.TaskKey.CREATOR.createFromParcel(parcel) : null);
                            parcel2.writeNoException();
                            return true;
                        default:
                            return super.onTransact(i, parcel, parcel2, i2);
                    }
            }
        }
    }

    Rect getNonMinimizedSplitScreenSecondaryBounds();

    void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i);

    void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey);

    Bundle monitorGestureInput(String str, int i);

    void notifyAccessibilityButtonClicked(int i);

    void notifyAccessibilityButtonLongClicked();

    void notifySwipeToHomeFinished();

    void onAssistantGestureCompletion(float f);

    void onAssistantProgress(float f);

    void onOverviewShown(boolean z);

    void onQuickSwitchToNewTask(int i);

    void onSplitScreenInvoked();

    void onStatusBarMotionEvent(MotionEvent motionEvent);

    void setBackButtonAlpha(float f, boolean z);

    void setNavBarButtonAlpha(float f, boolean z);

    void setPinnedStackAnimationListener(IPinnedStackAnimationListener iPinnedStackAnimationListener);

    void setShelfHeight(boolean z, int i);

    void setSplitScreenMinimized(boolean z);

    void startAssistant(Bundle bundle);

    void startScreenPinning(int i);

    void stopScreenPinning();
}
