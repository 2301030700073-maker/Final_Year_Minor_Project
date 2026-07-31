package androidx.camera.core.impl;

import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.AutoValue_CameraState;
import androidx.camera.core.AutoValue_CameraState_StateError;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.imagecapture.CaptureNode$1$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.impl.utils.executor.SequentialExecutor;
import androidx.compose.ui.node.NodeChain;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.Observer;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraPresenceProvider {
    public final Executor backgroundExecutor;
    public NodeChain cameraFactory;
    public CameraRepository cameraRepository;
    public LocalFolder.AnonymousClass8 cameraValidator;
    public ScheduledFuture retryScanFuture;
    public final HandlerScheduledExecutorService scheduledExecutor;
    public QuotedMessagePresenter sourcePresenceObservable;
    public final Object observerLock = new Object();
    public final Object retryLock = new Object();
    public final QuirkSettingsHolder.ObserverToConsumerAdapter sourceObserver = new QuirkSettingsHolder.ObserverToConsumerAdapter(1, this);
    public volatile List currentFilteredIds = EmptyList.INSTANCE;
    public final AtomicBoolean isMonitoring = new AtomicBoolean(false);
    public final CopyOnWriteArrayList dependentInternalListeners = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList publicApiListeners = new CopyOnWriteArrayList();
    public final LinkedHashMap cameraStateObservers = new LinkedHashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ListenerWrapper {
        public final HandlerScheduledExecutorService executor;
        public final LockableDatabase listener;

        public ListenerWrapper(LockableDatabase lockableDatabase, HandlerScheduledExecutorService handlerScheduledExecutorService) {
            this.listener = lockableDatabase;
            this.executor = handlerScheduledExecutorService;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerWrapper)) {
                return false;
            }
            ListenerWrapper listenerWrapper = (ListenerWrapper) obj;
            return this.listener == listenerWrapper.listener && this.executor == listenerWrapper.executor;
        }

        public final int hashCode() {
            return this.executor.hashCode() + (this.listener.hashCode() * 31);
        }

        public final String toString() {
            return "ListenerWrapper(listener=" + this.listener + ", executor=" + this.executor + ')';
        }
    }

    public CameraPresenceProvider(Executor executor, HandlerScheduledExecutorService handlerScheduledExecutorService) {
        this.backgroundExecutor = executor;
        this.scheduledExecutor = handlerScheduledExecutorService;
    }

    public final void clearAllCameraStateObservers() {
        synchronized (this.observerLock) {
            if (this.cameraStateObservers.isEmpty()) {
                return;
            }
            Map map = MapsKt__MapsKt.toMap(this.cameraStateObservers);
            this.cameraStateObservers.clear();
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                LinkedHashSet<CameraInternal> cameras = cameraRepository.getCameras();
                ArrayList arrayList = new ArrayList();
                for (CameraInternal cameraInternal : cameras) {
                    CameraInfoInternal cameraInfoInternal = cameraInternal != null ? cameraInternal.getCameraInfoInternal() : null;
                    if (cameraInfoInternal != null) {
                        arrayList.add(cameraInfoInternal);
                    }
                }
                Utf8.SafeProcessor.d("CameraPresencePrvdr", "Clearing all " + map.size() + " state observers.");
                for (Map.Entry entry : map.entrySet()) {
                    Util.mainThreadExecutor().execute(new Processor$$ExternalSyntheticLambda1(arrayList, (Observer) entry.getValue(), (String) entry.getKey(), 4));
                }
            }
        }
    }

    public final void conditionallySetupCameraStateObserver(String str) {
        CameraRepository cameraRepository = this.cameraRepository;
        if (cameraRepository == null) {
            return;
        }
        try {
            CameraInfoInternal cameraInfoInternal = cameraRepository.getCamera(str).getCameraInfoInternal();
            cameraInfoInternal.getClass();
            setupCameraStateObserver(cameraInfoInternal);
        } catch (IllegalArgumentException unused) {
            Utf8.SafeProcessor.w("CameraPresencePrvdr", "CameraInternal not found for " + str + ". Cannot setup state observer.");
        }
    }

    public final void notifyPublicListeners(Set set, Set set2) {
        boolean isEmpty = set.isEmpty();
        CopyOnWriteArrayList copyOnWriteArrayList = this.publicApiListeners;
        if (!isEmpty) {
            Utf8.SafeProcessor.i("CameraPresencePrvdr", "Notifying " + set.size() + " cameras added.");
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ListenerWrapper listenerWrapper = (ListenerWrapper) it.next();
                listenerWrapper.executor.execute(new CaptureNode$1$$ExternalSyntheticLambda0(listenerWrapper, set));
            }
        }
        if (set2.isEmpty()) {
            return;
        }
        Utf8.SafeProcessor.i("CameraPresencePrvdr", "Notifying " + set2.size() + " cameras removed.");
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            ListenerWrapper listenerWrapper2 = (ListenerWrapper) it2.next();
            listenerWrapper2.executor.execute(new CameraX$$ExternalSyntheticLambda2(13, listenerWrapper2, set2));
        }
    }

    public final void removeCameraStateObserver(String str) {
        synchronized (this.observerLock) {
            Observer observer = (Observer) this.cameraStateObservers.remove(str);
            CameraRepository cameraRepository = this.cameraRepository;
            if (observer != null && cameraRepository != null) {
                try {
                    Util.mainThreadExecutor().execute(new CameraX$$ExternalSyntheticLambda2(14, cameraRepository.getCamera(str), observer));
                    Utf8.SafeProcessor.d("CameraPresencePrvdr", "Removed state observer for: " + str);
                } catch (IllegalArgumentException unused) {
                }
            }
        }
    }

    public final void scheduleRetryAttempt(int i, List list) {
        if (i > 0 && this.isMonitoring.get()) {
            this.retryScanFuture = this.scheduledExecutor.schedule(new CameraPresenceProvider$$ExternalSyntheticLambda10(this, list, i, 0), i == 3 ? 0L : 400L, TimeUnit.MILLISECONDS);
        } else if (i <= 0) {
            Utf8.SafeProcessor.w("CameraPresencePrvdr", "Exhausted all retries for camera list refresh.");
        }
    }

    public final void setupCameraStateObserver(CameraInfoInternal cameraInfoInternal) {
        final String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        if (this.isMonitoring.get()) {
            synchronized (this.observerLock) {
                if (this.cameraStateObservers.containsKey(cameraId)) {
                    return;
                }
                Observer observer = new Observer() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda6
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        AutoValue_CameraState autoValue_CameraState = (AutoValue_CameraState) obj;
                        CameraPresenceProvider cameraPresenceProvider = CameraPresenceProvider.this;
                        if (!cameraPresenceProvider.isMonitoring.get()) {
                            Utf8.SafeProcessor.d("CameraPresencePrvdr", "Ignore camera state change handling since already stop monitoring");
                            return;
                        }
                        if (autoValue_CameraState.error != null) {
                            StringBuilder m31m = CameraDevices$CC.m31m("Camera ", cameraId, " state changed to ");
                            m31m.append(ImageAnalysis$$ExternalSyntheticLambda3.stringValueOf(autoValue_CameraState.type));
                            m31m.append(" with error: ");
                            AutoValue_CameraState_StateError autoValue_CameraState_StateError = autoValue_CameraState.error;
                            m31m.append(autoValue_CameraState_StateError != null ? Integer.valueOf(autoValue_CameraState_StateError.code) : null);
                            m31m.append(". Triggering refresh.");
                            Utf8.SafeProcessor.w("CameraPresencePrvdr", m31m.toString());
                            cameraPresenceProvider.backgroundExecutor.execute(new CameraPresenceProvider$$ExternalSyntheticLambda0(cameraPresenceProvider, 1));
                        }
                    }
                };
                Util.mainThreadExecutor().execute(new CameraX$$ExternalSyntheticLambda2(15, cameraInfoInternal, observer));
                this.cameraStateObservers.put(cameraId, observer);
                Utf8.SafeProcessor.d("CameraPresencePrvdr", "Registered state observer for camera: ".concat(cameraId));
            }
        }
    }

    public final void shutdown() {
        if (!this.isMonitoring.getAndSet(false)) {
            Utf8.SafeProcessor.d("CameraPresencePrvdr", "Shutdown called when not monitoring. Ignoring.");
            return;
        }
        Utf8.SafeProcessor.i("CameraPresencePrvdr", "Shutting down CameraPresenceProvider monitoring.");
        synchronized (this.retryLock) {
            try {
                ScheduledFuture scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.retryScanFuture = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        QuotedMessagePresenter quotedMessagePresenter = this.sourcePresenceObservable;
        if (quotedMessagePresenter != null) {
            quotedMessagePresenter.removeObserver(this.sourceObserver);
        }
        clearAllCameraStateObservers();
        this.cameraValidator = null;
        this.dependentInternalListeners.clear();
        this.publicApiListeners.clear();
        this.currentFilteredIds = EmptyList.INSTANCE;
        this.cameraFactory = null;
        this.cameraRepository = null;
    }

    public final void startup(LocalFolder.AnonymousClass8 anonymousClass8, NodeChain nodeChain, CameraRepository cameraRepository) {
        nodeChain.getClass();
        cameraRepository.getClass();
        if (this.isMonitoring.compareAndSet(false, true)) {
            Utf8.SafeProcessor.i("CameraPresencePrvdr", "Starting CameraPresenceProvider monitoring.");
            this.cameraValidator = anonymousClass8;
            Set<String> availableCameraIds = nodeChain.getAvailableCameraIds();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(availableCameraIds, 10));
            for (String str : availableCameraIds) {
                str.getClass();
                arrayList.add(ActionBar.create(str, null, null));
            }
            this.currentFilteredIds = arrayList;
            this.cameraFactory = nodeChain;
            this.cameraRepository = cameraRepository;
            this.sourcePresenceObservable = (QuotedMessagePresenter) nodeChain.head;
            this.backgroundExecutor.execute(new CameraPresenceProvider$$ExternalSyntheticLambda0(this, 2));
            QuotedMessagePresenter quotedMessagePresenter = this.sourcePresenceObservable;
            if (quotedMessagePresenter != null) {
                quotedMessagePresenter.addObserver(new SequentialExecutor(this.backgroundExecutor), this.sourceObserver);
            }
        }
    }
}
