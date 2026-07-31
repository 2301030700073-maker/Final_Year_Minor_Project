package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.tracing.TraceApi29Impl;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.DefaultConnectivityMonitor;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.NullConnectivityMonitor;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import com.fsck.k9.contacts.ContactImage;
import com.fsck.k9.mailstore.LocalFolder;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RequestManager implements ComponentCallbacks2, LifecycleListener {
    public static final RequestOptions DECODE_TYPE_BITMAP = (RequestOptions) ((RequestOptions) new RequestOptions().decode(Bitmap.class)).lock();
    public final Fragment.AnonymousClass1 addSelfToLifecycle;
    public final ConnectivityMonitor connectivityMonitor;
    public final Context context;
    public final CopyOnWriteArrayList defaultRequestListeners;
    public final Glide glide;
    public final Lifecycle lifecycle;
    public RequestOptions requestOptions;
    public final LocalFolder.AnonymousClass12 requestTracker;
    public final TargetTracker targetTracker;
    public final RequestManagerTreeNode treeNode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestManagerConnectivityListener implements ConnectivityMonitor.ConnectivityListener {
        public final LocalFolder.AnonymousClass12 requestTracker;

        public RequestManagerConnectivityListener(LocalFolder.AnonymousClass12 anonymousClass12) {
            this.requestTracker = anonymousClass12;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public final void onConnectivityChanged(boolean z) {
            if (z) {
                synchronized (RequestManager.this) {
                    LocalFolder.AnonymousClass12 anonymousClass12 = this.requestTracker;
                    Iterator it = Util.getSnapshot((Set) anonymousClass12.val$flags).iterator();
                    while (it.hasNext()) {
                        Request request = (Request) it.next();
                        if (!request.isComplete() && !request.isCleared()) {
                            request.clear();
                            if (anonymousClass12.val$value) {
                                ((HashSet) anonymousClass12.val$messages).add(request);
                            } else {
                                request.begin();
                            }
                        }
                    }
                }
            }
        }
    }

    static {
    }

    public RequestManager(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        LocalFolder.AnonymousClass12 anonymousClass12 = new LocalFolder.AnonymousClass12(7);
        AsyncTimeout.Companion companion = glide.connectivityMonitorFactory;
        this.targetTracker = new TargetTracker();
        Fragment.AnonymousClass1 anonymousClass1 = new Fragment.AnonymousClass1(27, this);
        this.addSelfToLifecycle = anonymousClass1;
        this.glide = glide;
        this.lifecycle = lifecycle;
        this.treeNode = requestManagerTreeNode;
        this.requestTracker = anonymousClass12;
        this.context = context;
        Context applicationContext = context.getApplicationContext();
        RequestManagerConnectivityListener requestManagerConnectivityListener = new RequestManagerConnectivityListener(anonymousClass12);
        companion.getClass();
        boolean z = TraceApi29Impl.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        ConnectivityMonitor defaultConnectivityMonitor = z ? new DefaultConnectivityMonitor(applicationContext, requestManagerConnectivityListener) : new NullConnectivityMonitor();
        this.connectivityMonitor = defaultConnectivityMonitor;
        synchronized (glide.managers) {
            if (glide.managers.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            glide.managers.add(this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            lifecycle.addListener(this);
        } else {
            Util.getUiThreadHandler().post(anonymousClass1);
        }
        lifecycle.addListener(defaultConnectivityMonitor);
        this.defaultRequestListeners = new CopyOnWriteArrayList(glide.glideContext.defaultRequestListeners);
        setRequestOptions(glide.glideContext.getDefaultRequestOptions());
    }

    public RequestBuilder as(Class cls) {
        return new RequestBuilder(this.glide, this, cls, this.context);
    }

    public RequestBuilder asBitmap() {
        return as(Bitmap.class).apply((BaseRequestOptions) DECODE_TYPE_BITMAP);
    }

    public RequestBuilder asDrawable() {
        return as(Drawable.class);
    }

    public final void clear(Target target) {
        if (target == null) {
            return;
        }
        boolean untrack = untrack(target);
        Request request = target.getRequest();
        if (untrack) {
            return;
        }
        Glide glide = this.glide;
        synchronized (glide.managers) {
            try {
                Iterator it = glide.managers.iterator();
                while (it.hasNext()) {
                    if (((RequestManager) it.next()).untrack(target)) {
                        return;
                    }
                }
                if (request != null) {
                    target.setRequest(null);
                    request.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void clearRequests() {
        try {
            Iterator it = Util.getSnapshot(this.targetTracker.targets).iterator();
            while (it.hasNext()) {
                clear((Target) it.next());
            }
            this.targetTracker.targets.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public RequestBuilder load(Uri uri) {
        return asDrawable().load(uri);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onDestroy() {
        this.targetTracker.onDestroy();
        clearRequests();
        LocalFolder.AnonymousClass12 anonymousClass12 = this.requestTracker;
        Iterator it = Util.getSnapshot((Set) anonymousClass12.val$flags).iterator();
        while (it.hasNext()) {
            anonymousClass12.clearAndRemove((Request) it.next());
        }
        ((HashSet) anonymousClass12.val$messages).clear();
        this.lifecycle.removeListener(this);
        this.lifecycle.removeListener(this.connectivityMonitor);
        Util.getUiThreadHandler().removeCallbacks(this.addSelfToLifecycle);
        this.glide.unregisterRequestManager(this);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onStart() {
        resumeRequests();
        this.targetTracker.onStart();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onStop() {
        this.targetTracker.onStop();
        pauseRequests();
    }

    public final synchronized void pauseRequests() {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.requestTracker;
        anonymousClass12.val$value = true;
        Iterator it = Util.getSnapshot((Set) anonymousClass12.val$flags).iterator();
        while (it.hasNext()) {
            Request request = (Request) it.next();
            if (request.isRunning()) {
                request.pause();
                ((HashSet) anonymousClass12.val$messages).add(request);
            }
        }
    }

    public final synchronized void resumeRequests() {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.requestTracker;
        anonymousClass12.val$value = false;
        Iterator it = Util.getSnapshot((Set) anonymousClass12.val$flags).iterator();
        while (it.hasNext()) {
            Request request = (Request) it.next();
            if (!request.isComplete() && !request.isRunning()) {
                request.begin();
            }
        }
        ((HashSet) anonymousClass12.val$messages).clear();
    }

    public synchronized void setRequestOptions(RequestOptions requestOptions) {
        this.requestOptions = (RequestOptions) ((RequestOptions) requestOptions.mo925clone()).autoClone();
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.requestTracker + ", treeNode=" + this.treeNode + "}";
    }

    public final synchronized boolean untrack(Target target) {
        Request request = target.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.requestTracker.clearAndRemove(request)) {
            return false;
        }
        this.targetTracker.targets.remove(target);
        target.setRequest(null);
        return true;
    }

    public RequestBuilder load(File file) {
        return asDrawable().load(file);
    }

    public RequestBuilder load(ContactImage contactImage) {
        return asDrawable().load(contactImage);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }
}
