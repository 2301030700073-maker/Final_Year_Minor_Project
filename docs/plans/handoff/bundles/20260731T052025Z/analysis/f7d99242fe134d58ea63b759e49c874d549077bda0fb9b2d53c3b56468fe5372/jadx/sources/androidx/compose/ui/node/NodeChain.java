package androidx.compose.ui.node;

import android.content.Context;
import android.util.Log;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraComponentImpl;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.InitializationException;
import androidx.camera.core.impl.AutoValue_CameraThreadConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.StateObservable$ObserverWrapper;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.disk.DiskLruCache;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlySharedFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeChain {
    public final /* synthetic */ int $r8$classId = 0;
    public Object buffer;
    public Object cachedDiffer;
    public Object current;
    public Object head;
    public final Object innerCoordinator;
    public final Object layoutNode;
    public Object outerCoordinator;
    public final Object sentinelHead;
    public final Object stack;
    public final Object tail;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Differ implements Observable {
        public Object after;
        public Object before;
        public Object node;
        public int offset;
        public boolean shouldAttachOnInsert;
        public Object this$0;

        @Override // androidx.camera.core.impl.Observable
        public void addObserver(Executor executor, Observable.Observer observer) {
            StateObservable$ObserverWrapper stateObservable$ObserverWrapper;
            synchronized (this.node) {
                StateObservable$ObserverWrapper stateObservable$ObserverWrapper2 = (StateObservable$ObserverWrapper) ((HashMap) this.after).remove(observer);
                if (stateObservable$ObserverWrapper2 != null) {
                    stateObservable$ObserverWrapper2.mActive.set(false);
                    ((CopyOnWriteArraySet) this.this$0).remove(stateObservable$ObserverWrapper2);
                }
                stateObservable$ObserverWrapper = new StateObservable$ObserverWrapper((AtomicReference) this.before, executor, observer);
                ((HashMap) this.after).put(observer, stateObservable$ObserverWrapper);
                ((CopyOnWriteArraySet) this.this$0).add(stateObservable$ObserverWrapper);
            }
            stateObservable$ObserverWrapper.update(0);
        }

        public boolean areItemsTheSame(int i, int i2) {
            MutableVector mutableVector = (MutableVector) this.before;
            int i3 = this.offset;
            Modifier.Element element = (Modifier.Element) mutableVector.content[i + i3];
            Modifier.Element element2 = (Modifier.Element) ((MutableVector) this.after).content[i3 + i2];
            return Intrinsics.areEqual(element, element2) || element.getClass() == element2.getClass();
        }

        public void release() {
            synchronized (this.after) {
                try {
                    if (this.shouldAttachOnInsert) {
                        return;
                    }
                    this.shouldAttachOnInsert = true;
                    StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.this$0;
                    Continuation continuation = null;
                    if (standaloneCoroutine != null) {
                        standaloneCoroutine.cancel(null);
                    }
                    this.this$0 = null;
                    JobKt.launch$default((CoroutineScope) this.node, null, null, new WakeLock$release$2(this, continuation, 0), 3);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.camera.core.impl.Observable
        public void removeObserver(Observable.Observer observer) {
            synchronized (this.node) {
                StateObservable$ObserverWrapper stateObservable$ObserverWrapper = (StateObservable$ObserverWrapper) ((HashMap) this.after).remove(observer);
                if (stateObservable$ObserverWrapper != null) {
                    stateObservable$ObserverWrapper.mActive.set(false);
                    ((CopyOnWriteArraySet) this.this$0).remove(stateObservable$ObserverWrapper);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.compose.ui.node.NodeChain, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.util.ArrayList] */
    public NodeChain(SynchronizedLazyImpl synchronizedLazyImpl, Context context, AutoValue_CameraThreadConfig autoValue_CameraThreadConfig, CardView.AnonymousClass1 anonymousClass1, CameraSelector cameraSelector, CardView.AnonymousClass1 anonymousClass12, CameraXConfig cameraXConfig) {
        ?? r7;
        anonymousClass1.getClass();
        this.layoutNode = synchronizedLazyImpl;
        this.sentinelHead = cameraSelector;
        this.innerCoordinator = anonymousClass12;
        this.outerCoordinator = cameraXConfig;
        this.tail = new CameraCoordinatorAdapter((CameraPipeImpl) synchronizedLazyImpl.getValue(), ((CameraPipeImpl) synchronizedLazyImpl.getValue()).cameras());
        SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new GapComposer$$ExternalSyntheticLambda0(context, autoValue_CameraThreadConfig, this, anonymousClass1, 1));
        this.current = synchronizedLazyImpl2;
        this.buffer = EmptySet.INSTANCE;
        this.stack = new Object();
        this.cachedDiffer = new AtomicBoolean(false);
        ArrayList m26awaitCameraIdsSeavPBo$default = CameraDevices$CC.m26awaitCameraIdsSeavPBo$default(((DaggerCameraAppComponent$CameraAppComponentImpl) synchronizedLazyImpl2.getValue()).getCameraDevices());
        if (m26awaitCameraIdsSeavPBo$default != null) {
            r7 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(m26awaitCameraIdsSeavPBo$default, 10));
            Iterator it = m26awaitCameraIdsSeavPBo$default.iterator();
            while (it.hasNext()) {
                r7.add(((CameraId) it.next()).value);
            }
        } else {
            r7 = EmptyList.INSTANCE;
        }
        ReadonlySharedFlow readonlySharedFlow = ((Camera2Backend) ((CameraPipeImpl) ((SynchronizedLazyImpl) this.layoutNode).getValue()).cameras().m85getCameraBackendSeavPBo()).camera2DeviceCache.cameraIds;
        Executor executor = autoValue_CameraThreadConfig.cameraExecutor;
        executor.getClass();
        this.head = new QuotedMessagePresenter(readonlySharedFlow, JobKt.CoroutineScope(JobKt.from(executor)), r7, context);
        onCameraIdsUpdated(r7);
    }

    public static final void access$propagateCoordinator(NodeChain nodeChain, Modifier.Node node, NodeCoordinator nodeCoordinator) {
        for (Modifier.Node node2 = node.parent; node2 != null; node2 = node2.parent) {
            if (node2 == ((NodeChain$sentinelHead$1) nodeChain.sentinelHead)) {
                LayoutNode parent$ui = ((LayoutNode) nodeChain.layoutNode).getParent$ui();
                nodeCoordinator.wrappedBy = parent$ui != null ? (InnerNodeCoordinator) parent$ui.nodes.innerCoordinator : null;
                nodeChain.outerCoordinator = nodeCoordinator;
                return;
            } else {
                if ((node2.kindSet & 2) != 0) {
                    return;
                }
                node2.updateCoordinator$ui(nodeCoordinator);
            }
        }
    }

    public static Modifier.Node createAndInsertNodeAsChild(Modifier.Element element, Modifier.Node node) {
        Modifier.Node node2;
        if (element instanceof ModifierNodeElement) {
            node2 = ((ModifierNodeElement) element).create();
            node2.kindSet = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node2);
        } else {
            BackwardsCompatNode backwardsCompatNode = new BackwardsCompatNode();
            backwardsCompatNode.kindSet = NodeKindKt.calculateNodeKindSetFrom(element);
            backwardsCompatNode.element = element;
            new HashSet();
            node2 = backwardsCompatNode;
        }
        if (node2.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        node2.insertedNodeAwaitingAttachForInvalidation = true;
        Modifier.Node node3 = node.child;
        if (node3 != null) {
            node3.parent = node2;
            node2.child = node3;
        }
        node.child = node2;
        node2.parent = node;
        return node2;
    }

    public static Modifier.Node detachAndRemoveNode(Modifier.Node node) {
        boolean z = node.isAttached;
        if (z) {
            MutableObjectIntMap mutableObjectIntMap = NodeKindKt.classToKindSetMap;
            if (!z) {
                InlineClassHelperKt.throwIllegalStateException("autoInvalidateRemovedNode called on unattached node");
            }
            NodeKindKt.autoInvalidateNodeIncludingDelegates(node, -1, 2);
            node.runDetachLifecycle$ui();
            node.markAsDetached$ui();
        }
        Modifier.Node node2 = node.child;
        Modifier.Node node3 = node.parent;
        if (node2 != null) {
            node2.parent = node3;
            node.child = null;
        }
        if (node3 != null) {
            node3.child = node2;
            node.parent = null;
        }
        node3.getClass();
        return node3;
    }

    public static void updateNode(Modifier.Element element, Modifier.Element element2, Modifier.Node node) {
        if ((element instanceof ModifierNodeElement) && (element2 instanceof ModifierNodeElement)) {
            node.getClass();
            ((ModifierNodeElement) element2).update(node);
            if (node.isAttached) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
                return;
            } else {
                node.updatedNodeAwaitingAttachForInvalidation = true;
                return;
            }
        }
        if (!(node instanceof BackwardsCompatNode)) {
            InlineClassHelperKt.throwIllegalStateException("Unknown Modifier.Node type");
            return;
        }
        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node;
        boolean z = backwardsCompatNode.isAttached;
        if (z) {
            if (!z) {
                InlineClassHelperKt.throwIllegalStateException("unInitializeModifier called on unattached node");
            }
            if ((backwardsCompatNode.kindSet & 8) != 0) {
                ((AndroidComposeView) HitTestResultKt.requireOwner(backwardsCompatNode)).onSemanticsChange();
            }
        }
        backwardsCompatNode.element = element2;
        backwardsCompatNode.kindSet = NodeKindKt.calculateNodeKindSetFrom(element2);
        if (backwardsCompatNode.isAttached) {
            backwardsCompatNode.initializeModifier(false);
        }
        if (node.isAttached) {
            NodeKindKt.autoInvalidateUpdatedNode(node);
        } else {
            node.updatedNodeAwaitingAttachForInvalidation = true;
        }
    }

    public LinkedHashSet calculateAvailableCameraIds(List list) {
        String str;
        SynchronizedLazyImpl synchronizedLazyImpl = (SynchronizedLazyImpl) this.current;
        DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = (DaggerCameraAppComponent$CameraAppComponentImpl) synchronizedLazyImpl.getValue();
        CameraSelector cameraSelector = (CameraSelector) this.sentinelHead;
        List<String> list2 = CollectionsKt.toList(list);
        CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.innerCoordinator;
        daggerCameraAppComponent$CameraAppComponentImpl.getClass();
        try {
            ArrayList arrayList = new ArrayList();
            CameraDevicesImpl cameraDevices = daggerCameraAppComponent$CameraAppComponentImpl.getCameraDevices();
            if (cameraSelector != null) {
                try {
                    str = OperationKt.decideSkippedCameraIdByHeuristic(cameraDevices, cameraSelector.getLensFacing());
                } catch (IllegalStateException e) {
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "Unable to get Metadata for cameraID 0 and/or 1", e);
                    }
                    str = null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str2 : list2) {
                    if (!Intrinsics.areEqual(str2, str)) {
                        DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl2 = daggerCameraAppComponent$CameraAppComponentImpl.cameraAppComponentImpl;
                        CameraId.m34constructorimpl(str2);
                        CameraInfoInternal cameraInfoInternal = ((CameraInternal) new DaggerCameraAppComponent$CameraComponentImpl(daggerCameraAppComponent$CameraAppComponentImpl2, new LocalStore.AnonymousClass8(str2, 1), anonymousClass1).cameraInternalAdapterProvider.get()).getCameraInfoInternal();
                        cameraInfoInternal.getClass();
                        arrayList2.add(cameraInfoInternal);
                    }
                }
                for (CameraInfo cameraInfo : cameraSelector.filter(arrayList2)) {
                    cameraInfo.getClass();
                    String cameraId = ((CameraInfoInternal) cameraInfo).getCameraId();
                    cameraId.getClass();
                    arrayList.add(cameraId);
                }
                list2 = arrayList;
            }
            CameraDevicesImpl cameraDevices2 = ((DaggerCameraAppComponent$CameraAppComponentImpl) synchronizedLazyImpl.getValue()).getCameraDevices();
            ArrayList arrayList3 = new ArrayList();
            for (String str3 : list2) {
                if (Intrinsics.areEqual(str3, "0") || Intrinsics.areEqual(str3, DiskLruCache.VERSION)) {
                    arrayList3.add(str3);
                } else if (Operation$State.isBackwardCompatible(cameraDevices2, str3)) {
                    arrayList3.add(str3);
                } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Camera " + str3 + " is filtered out because its capabilities do not contain REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE.");
                }
            }
            return new LinkedHashSet(arrayList3);
        } catch (IllegalStateException e2) {
            if (Utf8.SafeProcessor.isErrorEnabled()) {
                Log.e("CXCP", "Error while accessing info about cameras.", e2);
            }
            throw new InitializationException(e2);
        }
    }

    public Set getAvailableCameraIds() {
        synchronized (this.stack) {
            if (((AtomicBoolean) this.cachedDiffer).get()) {
                return EmptySet.INSTANCE;
            }
            return new LinkedHashSet((Set) this.buffer);
        }
    }

    public CameraInternal getCamera(String str) {
        str.getClass();
        if (((AtomicBoolean) this.cachedDiffer).get()) {
            throw new CameraUpdateException("CameraFactory has been shut down.");
        }
        DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = ((DaggerCameraAppComponent$CameraAppComponentImpl) ((SynchronizedLazyImpl) this.current).getValue()).cameraAppComponentImpl;
        CameraId.m34constructorimpl(str);
        return (CameraInternal) new DaggerCameraAppComponent$CameraComponentImpl(daggerCameraAppComponent$CameraAppComponentImpl, new LocalStore.AnonymousClass8(str, 1), (CardView.AnonymousClass1) this.innerCoordinator).cameraInternalAdapterProvider.get();
    }

    /* renamed from: has-H91voCI$ui, reason: not valid java name */
    public boolean m623hasH91voCI$ui(int i) {
        return (((Modifier.Node) this.head).aggregateChildKindSet & i) != 0;
    }

    public void onCameraIdsUpdated(List list) {
        if (((AtomicBoolean) this.cachedDiffer).get()) {
            return;
        }
        LinkedHashSet calculateAvailableCameraIds = calculateAvailableCameraIds(list);
        synchronized (this.stack) {
            try {
                if (((AtomicBoolean) this.cachedDiffer).get()) {
                    return;
                }
                if (Intrinsics.areEqual((Set) this.buffer, calculateAvailableCameraIds)) {
                    return;
                }
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Updated available camera list: " + ((Set) this.buffer) + " -> " + calculateAvailableCameraIds);
                }
                this.buffer = calculateAvailableCameraIds;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void runAttachLifecycle() {
        for (Modifier.Node node = (Modifier.Node) this.head; node != null; node = node.child) {
            node.runAttachLifecycle$ui();
            if (node.insertedNodeAwaitingAttachForInvalidation) {
                MutableObjectIntMap mutableObjectIntMap = NodeKindKt.classToKindSetMap;
                if (!node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.autoInvalidateNodeIncludingDelegates(node, -1, 1);
            }
            if (node.updatedNodeAwaitingAttachForInvalidation) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
            }
            node.insertedNodeAwaitingAttachForInvalidation = false;
            node.updatedNodeAwaitingAttachForInvalidation = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0195, code lost:
    
        r27 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x019a, code lost:
    
        r25 = r22 + (r25 & r27);
        r22 = r11;
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a4, code lost:
    
        if (r14 <= r7) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a6, code lost:
    
        if (r11 <= r15) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a8, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01b4, code lost:
    
        if (r6.areItemsTheSame(r14 - 1, r27 - 1) == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b6, code lost:
    
        r14 = r14 - 1;
        r11 = r27 - 1;
        r13 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01c1, code lost:
    
        r20[r17 + r28] = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c5, code lost:
    
        if (r24 == 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01c7, code lost:
    
        r11 = r19 - r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c9, code lost:
    
        if (r11 < r12) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01cb, code lost:
    
        if (r11 > r1) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01d1, code lost:
    
        if (r16[r17 + r11] < r14) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01d3, code lost:
    
        r26[r33] = r14;
        r11 = 1;
        r26[1] = r27;
        r26[r32] = r22;
        r26[3] = r25;
        r26[4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0268, code lost:
    
        r13 = r28 + 2;
        r11 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01bd, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0198, code lost:
    
        r27 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0191, code lost:
    
        r25 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x017f, code lost:
    
        r11 = r20[(r13 + 1) + r17];
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0172, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x017d, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x026e, code lost:
    
        r1 = r1 + 1;
        r12 = r20;
        r11 = r21;
        r13 = r26;
        r14 = r29;
        r35 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0158, code lost:
    
        r11 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d4, code lost:
    
        if (r16[(r11 + 1) + r17] > r16[(r25 - 1) + r17]) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014e, code lost:
    
        r26 = r13;
        r29 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0154, code lost:
    
        if ((r19 & 1) != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0156, code lost:
    
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x015a, code lost:
    
        r13 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x015b, code lost:
    
        if (r13 > r1) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015d, code lost:
    
        if (r13 == r12) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015f, code lost:
    
        if (r13 == r1) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0161, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016f, code lost:
    
        if (r20[(r13 + 1) + r17] >= r20[(r13 - 1) + r17]) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0174, code lost:
    
        r11 = r20[(r13 - 1) + r17];
        r14 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0186, code lost:
    
        r22 = r10 - ((r5 - r14) - r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x018c, code lost:
    
        if (r1 == 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x018e, code lost:
    
        r25 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0193, code lost:
    
        if (r14 != r11) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void structuralUpdate(int r32, androidx.compose.runtime.collection.MutableVector r33, androidx.compose.runtime.collection.MutableVector r34, androidx.compose.ui.Modifier.Node r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeChain.structuralUpdate(int, androidx.compose.runtime.collection.MutableVector, androidx.compose.runtime.collection.MutableVector, androidx.compose.ui.Modifier$Node, boolean):void");
    }

    public void syncCoordinators() {
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator;
        LayoutNode layoutNode = (LayoutNode) this.layoutNode;
        NodeCoordinator nodeCoordinator = (InnerNodeCoordinator) this.innerCoordinator;
        for (Modifier.Node node = ((TailModifierNode) this.tail).parent; node != null; node = node.parent) {
            LayoutModifierNode asLayoutModifierNode = HitTestResultKt.asLayoutModifierNode(node);
            if (asLayoutModifierNode != null) {
                NodeCoordinator nodeCoordinator2 = node.coordinator;
                if (nodeCoordinator2 != null) {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator2 = (LayoutModifierNodeCoordinator) nodeCoordinator2;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator2.layoutModifierNode;
                    layoutModifierNodeCoordinator2.setLayoutModifierNode$ui(asLayoutModifierNode);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                    if (layoutModifierNode != node) {
                        OwnedLayer ownedLayer = layoutModifierNodeCoordinator2.layer;
                        layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        if (ownedLayer != null) {
                            ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
                            layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        }
                    }
                } else {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator3 = new LayoutModifierNodeCoordinator(layoutNode, asLayoutModifierNode);
                    node.updateCoordinator$ui(layoutModifierNodeCoordinator3);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator3;
                }
                nodeCoordinator.wrappedBy = layoutModifierNodeCoordinator;
                layoutModifierNodeCoordinator.wrapped = nodeCoordinator;
                nodeCoordinator = layoutModifierNodeCoordinator;
            } else {
                node.updateCoordinator$ui(nodeCoordinator);
            }
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        nodeCoordinator.wrappedBy = parent$ui != null ? (InnerNodeCoordinator) parent$ui.nodes.innerCoordinator : null;
        this.outerCoordinator = nodeCoordinator;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("[");
                Modifier.Node node = (Modifier.Node) this.head;
                TailModifierNode tailModifierNode = (TailModifierNode) this.tail;
                if (node == tailModifierNode) {
                    sb.append("]");
                } else {
                    while (true) {
                        if (node != null && node != tailModifierNode) {
                            sb.append(String.valueOf(node));
                            if (node.child == tailModifierNode) {
                                sb.append("]");
                            } else {
                                sb.append(",");
                                node = node.child;
                            }
                        }
                    }
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public NodeChain(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$1 = new NodeChain$sentinelHead$1();
        nodeChain$sentinelHead$1.aggregateChildKindSet = -1;
        this.sentinelHead = nodeChain$sentinelHead$1;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.innerCoordinator = innerNodeCoordinator;
        this.outerCoordinator = innerNodeCoordinator;
        TailModifierNode tailModifierNode = innerNodeCoordinator.tail;
        this.tail = tailModifierNode;
        this.head = tailModifierNode;
        this.stack = new MutableVector(new Modifier[16]);
    }
}
