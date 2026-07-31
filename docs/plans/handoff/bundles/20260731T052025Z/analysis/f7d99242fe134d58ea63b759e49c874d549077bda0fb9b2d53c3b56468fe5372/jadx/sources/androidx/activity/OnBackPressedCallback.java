package androidx.activity;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {
    public boolean isEnabled;
    public final ArrayList eventHandlers = new ArrayList();
    public final CopyOnWriteArrayList closeables = new CopyOnWriteArrayList();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressedEventHandler extends NavigationEventHandler {
        public boolean isLifecycleActive;
        public final OnBackPressedCallback onBackPressedCallback;

        public OnBackPressedEventHandler(OnBackPressedCallback onBackPressedCallback, OnBackPressedCallbackInfo onBackPressedCallbackInfo) {
            boolean z = onBackPressedCallback.isEnabled;
            this.currentInfo = onBackPressedCallbackInfo;
            this.isBackEnabled = z;
            this.onBackPressedCallback = onBackPressedCallback;
            this.isLifecycleActive = true;
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackCancelled() {
            this.onBackPressedCallback.handleOnBackCancelled();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackCompleted() {
            this.onBackPressedCallback.handleOnBackPressed();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackProgressed(NavigationEvent navigationEvent) {
            this.onBackPressedCallback.handleOnBackProgressed(new BackEventCompat(navigationEvent));
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackStarted(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.onBackPressedCallback.handleOnBackStarted(new BackEventCompat(navigationEvent));
        }

        public final void setLifecycleActive(boolean z) {
            this.isLifecycleActive = z;
            setBackEnabled(z && this.onBackPressedCallback.isEnabled);
        }
    }

    public OnBackPressedCallback(boolean z) {
        this.isEnabled = z;
    }

    public abstract void handleOnBackPressed();

    public final void remove() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.closeables;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            AutoCloseable autoCloseable = (AutoCloseable) it.next();
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
            } else if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof ContentProviderClient)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                ((ContentProviderClient) autoCloseable).release();
            }
        }
        copyOnWriteArrayList.clear();
        ArrayList arrayList = this.eventHandlers;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((OnBackPressedEventHandler) it2.next()).remove();
        }
        arrayList.clear();
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
        Iterator it = this.eventHandlers.iterator();
        while (it.hasNext()) {
            OnBackPressedEventHandler onBackPressedEventHandler = (OnBackPressedEventHandler) it.next();
            onBackPressedEventHandler.setBackEnabled(onBackPressedEventHandler.isLifecycleActive && z);
        }
    }

    public void handleOnBackCancelled() {
    }

    public void handleOnBackProgressed(BackEventCompat backEventCompat) {
    }

    public void handleOnBackStarted(BackEventCompat backEventCompat) {
    }
}
