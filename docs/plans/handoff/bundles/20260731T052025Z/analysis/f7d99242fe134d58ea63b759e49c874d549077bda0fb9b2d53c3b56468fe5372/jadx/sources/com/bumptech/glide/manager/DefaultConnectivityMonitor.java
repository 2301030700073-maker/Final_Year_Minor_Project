package com.bumptech.glide.manager;

import android.content.Context;
import com.bumptech.glide.RequestManager;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.HashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultConnectivityMonitor implements ConnectivityMonitor {
    public final Context context;
    public final RequestManager.RequestManagerConnectivityListener listener;

    public DefaultConnectivityMonitor(Context context, RequestManager.RequestManagerConnectivityListener requestManagerConnectivityListener) {
        this.context = context.getApplicationContext();
        this.listener = requestManagerConnectivityListener;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
        LocalFolder.AnonymousClass12 anonymousClass12 = LocalFolder.AnonymousClass12.get(this.context);
        RequestManager.RequestManagerConnectivityListener requestManagerConnectivityListener = this.listener;
        synchronized (anonymousClass12) {
            ((HashSet) anonymousClass12.val$flags).add(requestManagerConnectivityListener);
            if (!anonymousClass12.val$value && !((HashSet) anonymousClass12.val$flags).isEmpty()) {
                anonymousClass12.val$value = ((SingletonConnectivityReceiver$FrameworkConnectivityMonitor) anonymousClass12.val$messages).register();
            }
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
        LocalFolder.AnonymousClass12 anonymousClass12 = LocalFolder.AnonymousClass12.get(this.context);
        RequestManager.RequestManagerConnectivityListener requestManagerConnectivityListener = this.listener;
        synchronized (anonymousClass12) {
            ((HashSet) anonymousClass12.val$flags).remove(requestManagerConnectivityListener);
            if (anonymousClass12.val$value && ((HashSet) anonymousClass12.val$flags).isEmpty()) {
                ((SingletonConnectivityReceiver$FrameworkConnectivityMonitor) anonymousClass12.val$messages).unregister();
                anonymousClass12.val$value = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }
}
