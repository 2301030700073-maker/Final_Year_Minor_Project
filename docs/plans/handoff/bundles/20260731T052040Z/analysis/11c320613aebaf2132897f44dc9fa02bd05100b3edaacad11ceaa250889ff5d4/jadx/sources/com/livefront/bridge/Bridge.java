package com.livefront.bridge;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import androidx.core.app.ActivityRecreator;
import com.evernote.android.state.StateSaver;
import com.livefront.bridge.BridgeDelegate;
import com.livefront.bridge.disk.FileDiskHandler;
import com.livefront.bridge.wrapper.BitmapWrapper;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Bridge {
    public static volatile BridgeDelegate sDelegate;
    public static final ExecutorService sExecutorService = Executors.newCachedThreadPool();

    public static synchronized void checkInitialization() {
        synchronized (Bridge.class) {
            if (sDelegate == null) {
                throw new IllegalStateException("You must first call initialize before calling any other methods");
            }
        }
    }

    public static void restoreInstanceState(Object obj, Bundle bundle) {
        Bundle bundle2;
        checkInitialization();
        BridgeDelegate bridgeDelegate = sDelegate;
        if (bundle == null) {
            bridgeDelegate.getClass();
            return;
        }
        WeakHashMap weakHashMap = bridgeDelegate.mObjectUuidMap;
        Bundle bundle3 = null;
        String string = weakHashMap.containsKey(obj) ? (String) weakHashMap.get(obj) : bundle.getString("uuid_".concat(obj.getClass().getName()), null);
        if (string != null) {
            weakHashMap.put(obj, string);
        }
        if (string == null) {
            return;
        }
        boolean z = false;
        if (bridgeDelegate.mUuidBundleMap.containsKey(string)) {
            bundle2 = (Bundle) bridgeDelegate.mUuidBundleMap.get(string);
        } else {
            FileDiskHandler fileDiskHandler = bridgeDelegate.mDiskHandler;
            if (!fileDiskHandler.mIsLoadedOrTimedOut) {
                try {
                    ((Future) fileDiskHandler.mPendingLoadFuture).get(1000L, TimeUnit.SECONDS);
                } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException unused) {
                }
                fileDiskHandler.mIsLoadedOrTimedOut = true;
            }
            byte[] bytesInternal = fileDiskHandler.getBytesInternal(string);
            if (bytesInternal != null) {
                Parcel obtain = Parcel.obtain();
                obtain.unmarshall(bytesInternal, 0, bytesInternal.length);
                obtain.setDataPosition(0);
                try {
                    bundle3 = obtain.readBundle(Cookie.Companion.class.getClassLoader());
                } catch (IllegalArgumentException | IllegalStateException unused2) {
                }
                obtain.recycle();
                if (bundle3 == null) {
                    Log.e("Bridge", "Unable to properly convert disk-persisted data to a Bundle. Some state loss may occur.");
                }
            }
            bundle2 = bundle3;
        }
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (bundle2.get(str) instanceof BitmapWrapper) {
                    bundle2.putParcelable(str, ((BitmapWrapper) bundle2.get(str)).mBitmap);
                }
            }
        }
        bridgeDelegate.mUuidBundleMap.remove(string);
        bridgeDelegate.mExecutorService.execute(new ActivityRecreator.AnonymousClass1(13, bridgeDelegate, string, z));
        if (bundle2 == null) {
            return;
        }
        bridgeDelegate.mSavedStateHandler.getClass();
        StateSaver.restoreInstanceState(obj, bundle2);
    }

    public static void saveInstanceState(Object obj, Bundle bundle) {
        checkInitialization();
        BridgeDelegate bridgeDelegate = sDelegate;
        WeakHashMap weakHashMap = bridgeDelegate.mObjectUuidMap;
        String str = (String) weakHashMap.get(obj);
        if (str == null) {
            str = UUID.randomUUID().toString();
            weakHashMap.put(obj, str);
        }
        bundle.putString("uuid_".concat(obj.getClass().getName()), str);
        Bundle bundle2 = new Bundle();
        bridgeDelegate.mSavedStateHandler.getClass();
        StateSaver.saveInstanceState(obj, bundle2);
        if (bundle2.isEmpty()) {
            return;
        }
        for (String str2 : bundle2.keySet()) {
            if (bundle2.get(str2) instanceof Bitmap) {
                Bitmap bitmap = (Bitmap) bundle2.get(str2);
                BitmapWrapper bitmapWrapper = new BitmapWrapper();
                bitmapWrapper.mBitmap = bitmap;
                bundle2.putParcelable(str2, bitmapWrapper);
            }
        }
        bridgeDelegate.mUuidBundleMap.put(str, bundle2);
        BridgeDelegate.AnonymousClass3 anonymousClass3 = new BridgeDelegate.AnonymousClass3(0, bridgeDelegate, str, bundle2);
        if (bridgeDelegate.mPendingWriteTasksLatch == null || bridgeDelegate.mPendingWriteTasksLatch.getCount() == 0) {
            bridgeDelegate.mPendingWriteTasksLatch = new CountDownLatch(1);
        }
        bridgeDelegate.mPendingWriteTasks.add(anonymousClass3);
        bridgeDelegate.mExecutorService.execute(anonymousClass3);
        if (bridgeDelegate.mActivityCount > 0 || bridgeDelegate.mIsConfigChange) {
            return;
        }
        try {
            bridgeDelegate.mPendingWriteTasksLatch.await(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
        }
        bridgeDelegate.mPendingWriteTasksLatch = null;
    }
}
