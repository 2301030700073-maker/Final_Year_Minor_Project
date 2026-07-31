package androidx.camera.core.impl;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.impl.Observable;
import androidx.compose.ui.node.NodeChain;
import androidx.core.util.Consumer;
import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.ReversedList;
import kotlin.collections.ReversedList$listIterator$1;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuirkSettingsHolder {
    public static final QuirkSettings DEFAULT = new QuirkSettings(true, null, null);
    public static final QuirkSettingsHolder sInstance = new QuirkSettingsHolder();
    public final NodeChain.Differ mObservable;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ObserverToConsumerAdapter implements Observable.Observer {
        public final /* synthetic */ int $r8$classId;
        public final Object mDelegate;

        public /* synthetic */ ObserverToConsumerAdapter(int i, Object obj) {
            this.$r8$classId = i;
            this.mDelegate = obj;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void onError(Throwable th) {
            switch (this.$r8$classId) {
                case 0:
                    Utf8.SafeProcessor.e("ObserverToConsumerAdapter", "Unexpected error in Observable", th);
                    break;
                default:
                    th.getClass();
                    CameraPresenceProvider cameraPresenceProvider = (CameraPresenceProvider) this.mDelegate;
                    if (cameraPresenceProvider.isMonitoring.get()) {
                        Utf8.SafeProcessor.e("CameraPresencePrvdr", "Error from source camera presence observable. Triggering refresh.", th);
                        QuotedMessagePresenter quotedMessagePresenter = cameraPresenceProvider.sourcePresenceObservable;
                        if (quotedMessagePresenter != null) {
                            quotedMessagePresenter.fetchData();
                            break;
                        }
                    }
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.ui.node.NodeChain] */
        /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.util.ArrayList] */
        @Override // androidx.camera.core.impl.Observable.Observer
        public final void onNewData(Object obj) {
            CameraPresenceProvider cameraPresenceProvider;
            ?? r1;
            CameraRepository cameraRepository;
            LocalFolder.AnonymousClass8 anonymousClass8;
            ?? r4;
            switch (this.$r8$classId) {
                case 0:
                    ((Consumer) this.mDelegate).accept(obj);
                    return;
                default:
                    List list = (List) obj;
                    if (!((CameraPresenceProvider) this.mDelegate).isMonitoring.get() || (r1 = (cameraPresenceProvider = (CameraPresenceProvider) this.mDelegate).cameraFactory) == 0 || (cameraRepository = cameraPresenceProvider.cameraRepository) == null || (anonymousClass8 = cameraPresenceProvider.cameraValidator) == null) {
                        return;
                    }
                    if (list != null) {
                        r4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            r4.add(((CameraIdentifier) it.next()).getInternalId());
                        }
                    } else {
                        r4 = EmptyList.INSTANCE;
                    }
                    try {
                        List list2 = ((CameraPresenceProvider) this.mDelegate).currentFilteredIds;
                        Iterable<String> list3 = ((AtomicBoolean) r1.cachedDiffer).get() ? EmptyList.INSTANCE : CollectionsKt.toList(r1.calculateAvailableCameraIds(r4));
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                        for (String str : list3) {
                            str.getClass();
                            arrayList.add(ActionBar.create(str, null, null));
                        }
                        Set minus = Validate.minus(CollectionsKt.toSet(list2), (Iterable) CollectionsKt.toSet(arrayList));
                        if (!minus.isEmpty() && anonymousClass8.isChangeInvalid(cameraRepository.getCameras(), minus)) {
                            Utf8.SafeProcessor.w("CameraPresencePrvdr", "Camera removal update invalid. Aborting.");
                            return;
                        }
                    } catch (Exception e) {
                        Utf8.SafeProcessor.w("CameraPresencePrvdr", "Failed to interrogate camera factory. Falling back to full update.", e);
                    }
                    try {
                        r1.onCameraIdsUpdated(r4);
                        Set<String> availableCameraIds = r1.getAvailableCameraIds();
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(availableCameraIds, 10));
                        for (String str2 : availableCameraIds) {
                            str2.getClass();
                            arrayList2.add(ActionBar.create(str2, null, null));
                        }
                        if (arrayList2.equals(((CameraPresenceProvider) this.mDelegate).currentFilteredIds)) {
                            return;
                        }
                        CameraPresenceProvider cameraPresenceProvider2 = (CameraPresenceProvider) this.mDelegate;
                        List list4 = CollectionsKt.toList(cameraPresenceProvider2.currentFilteredIds);
                        if (arrayList2.equals(list4)) {
                            return;
                        }
                        synchronized (cameraPresenceProvider2.retryLock) {
                            if (cameraPresenceProvider2.retryScanFuture != null) {
                                Utf8.SafeProcessor.d("CameraPresencePrvdr", "Camera list updated. Cancelling any pending retries.");
                                ScheduledFuture scheduledFuture = cameraPresenceProvider2.retryScanFuture;
                                scheduledFuture.getClass();
                                scheduledFuture.cancel(false);
                                cameraPresenceProvider2.retryScanFuture = null;
                            }
                        }
                        Set set = CollectionsKt.toSet(list4);
                        Set set2 = CollectionsKt.toSet(arrayList2);
                        Set minus2 = Validate.minus(set2, (Iterable) set);
                        Set minus3 = Validate.minus(set, (Iterable) set2);
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            arrayList4.add(((CameraIdentifier) it2.next()).getInternalId());
                        }
                        try {
                            Iterator it3 = minus3.iterator();
                            while (it3.hasNext()) {
                                cameraPresenceProvider2.removeCameraStateObserver(((CameraIdentifier) it3.next()).getInternalId());
                            }
                            CameraRepository cameraRepository2 = cameraPresenceProvider2.cameraRepository;
                            if (cameraRepository2 != null) {
                                Utf8.SafeProcessor.d("CameraPresencePrvdr", "Updating CameraRepository...");
                                cameraRepository2.onCamerasUpdated(arrayList4);
                                arrayList3.add(cameraRepository2);
                                Utf8.SafeProcessor.d("CameraPresencePrvdr", "CameraRepository updated successfully.");
                            }
                            if (!cameraPresenceProvider2.dependentInternalListeners.isEmpty()) {
                                Utf8.SafeProcessor.d("CameraPresencePrvdr", "Updating " + cameraPresenceProvider2.dependentInternalListeners.size() + " dependent listeners...");
                                Iterator it4 = cameraPresenceProvider2.dependentInternalListeners.iterator();
                                while (it4.hasNext()) {
                                    InternalCameraPresenceListener internalCameraPresenceListener = (InternalCameraPresenceListener) it4.next();
                                    internalCameraPresenceListener.onCamerasUpdated(arrayList4);
                                    arrayList3.add(internalCameraPresenceListener);
                                }
                            }
                            cameraPresenceProvider2.currentFilteredIds = arrayList2;
                            Iterator it5 = minus2.iterator();
                            while (it5.hasNext()) {
                                cameraPresenceProvider2.conditionallySetupCameraStateObserver(((CameraIdentifier) it5.next()).getInternalId());
                            }
                            cameraPresenceProvider2.notifyPublicListeners(minus2, minus3);
                            return;
                        } catch (Exception e2) {
                            Utf8.SafeProcessor.e("CameraPresencePrvdr", "A core module failed to update. Rolling back changes.", e2);
                            ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                            Iterator it6 = list4.iterator();
                            while (it6.hasNext()) {
                                arrayList5.add(((CameraIdentifier) it6.next()).getInternalId());
                            }
                            Iterator it7 = new ReversedList(arrayList3).iterator();
                            while (true) {
                                ReversedList$listIterator$1 reversedList$listIterator$1 = (ReversedList$listIterator$1) it7;
                                if (!((ListIterator) reversedList$listIterator$1.delegateIterator).hasPrevious()) {
                                    Iterator it8 = minus3.iterator();
                                    while (it8.hasNext()) {
                                        cameraPresenceProvider2.conditionallySetupCameraStateObserver(((CameraIdentifier) it8.next()).getInternalId());
                                    }
                                    Iterator it9 = minus2.iterator();
                                    while (it9.hasNext()) {
                                        cameraPresenceProvider2.removeCameraStateObserver(((CameraIdentifier) it9.next()).getInternalId());
                                    }
                                    return;
                                }
                                InternalCameraPresenceListener internalCameraPresenceListener2 = (InternalCameraPresenceListener) ((ListIterator) reversedList$listIterator$1.delegateIterator).previous();
                                try {
                                    internalCameraPresenceListener2.onCamerasUpdated(arrayList5);
                                } catch (Exception e3) {
                                    Utf8.SafeProcessor.e("CameraPresencePrvdr", "Failed to rollback listener: " + internalCameraPresenceListener2, e3);
                                }
                            }
                        }
                    } catch (Exception e4) {
                        Utf8.SafeProcessor.w("CameraPresencePrvdr", "CameraFactory failed to update. The camera list may be stale until the next update.", e4);
                        return;
                    }
                    break;
            }
        }
    }

    public QuirkSettingsHolder() {
        NodeChain.Differ differ = new NodeChain.Differ();
        differ.node = new Object();
        differ.offset = 0;
        differ.shouldAttachOnInsert = false;
        differ.after = new HashMap();
        differ.this$0 = new CopyOnWriteArraySet();
        differ.before = new AtomicReference(DEFAULT);
        this.mObservable = differ;
    }
}
