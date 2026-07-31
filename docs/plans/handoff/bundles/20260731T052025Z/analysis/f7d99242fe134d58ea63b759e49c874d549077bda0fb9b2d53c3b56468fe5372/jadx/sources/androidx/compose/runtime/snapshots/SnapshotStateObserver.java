package androidx.compose.runtime.snapshots;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer$derivedStateObserver$1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.work.OperationKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnapshotStateObserver {
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 applyUnsubscribe;
    public ObservedScopeMap currentMap;
    public final Function1 onChangedExecutor;
    public boolean sendingNotifications;
    public final AtomicReference pendingChanges = new AtomicReference(null);
    public final ComposerKt$$ExternalSyntheticLambda0 applyObserver = new ComposerKt$$ExternalSyntheticLambda0(19, this);
    public final DiskLruCache$$ExternalSyntheticLambda0 readObserver = new DiskLruCache$$ExternalSyntheticLambda0(13, this);
    public final MutableVector observedScopeMaps = new MutableVector(new ObservedScopeMap[16]);
    public final Object observedScopeMapsLock = new Object();
    public long currentMapThreadId = -1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ObservedScopeMap {
        public Object currentScope;
        public MutableObjectIntMap currentScopeReads;
        public int deriveStateScopeCount;
        public final Function1 onChanged;
        public boolean readingDerivedStates;
        public int currentToken = -1;
        public final MutableScatterMap valueToScopes = OperationKt.m838constructorimpl$default();
        public final MutableScatterMap scopeToValues = new MutableScatterMap();
        public final MutableScatterSet invalidated = new MutableScatterSet();
        public final MutableVector statesToReread = new MutableVector(new DerivedSnapshotState[16]);
        public final GapComposer$derivedStateObserver$1 derivedStateObserver = new GapComposer$derivedStateObserver$1(1, this);
        public final MutableScatterMap dependencyToDerivedStates = OperationKt.m838constructorimpl$default();
        public final HashMap recordedDerivedStateValues = new HashMap();

        public ObservedScopeMap(Function1 function1) {
            this.onChanged = function1;
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
            */
        public final boolean recordInvalidation(java.util.Set r46) {
            /*
                Method dump skipped, instructions count: 1680
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.ObservedScopeMap.recordInvalidation(java.util.Set):boolean");
        }

        public final void recordRead(Object obj, int i, Object obj2, MutableObjectIntMap mutableObjectIntMap) {
            int i2;
            if (this.deriveStateScopeCount > 0) {
                return;
            }
            int findIndex = mutableObjectIntMap.findIndex(obj);
            if (findIndex < 0) {
                findIndex = ~findIndex;
                i2 = -1;
            } else {
                i2 = mutableObjectIntMap.values[findIndex];
            }
            mutableObjectIntMap.keys[findIndex] = obj;
            mutableObjectIntMap.values[findIndex] = i;
            if ((obj instanceof DerivedSnapshotState) && i2 != i) {
                DerivedSnapshotState.ResultRecord currentRecord = ((DerivedSnapshotState) obj).getCurrentRecord();
                this.recordedDerivedStateValues.put(obj, currentRecord.result);
                MutableObjectIntMap mutableObjectIntMap2 = currentRecord.dependencies;
                MutableScatterMap mutableScatterMap = this.dependencyToDerivedStates;
                OperationKt.m840removeScopeimpl(mutableScatterMap, obj);
                Object[] objArr = mutableObjectIntMap2.keys;
                long[] jArr = mutableObjectIntMap2.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    while (true) {
                        long j = jArr[i3];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((j & 255) < 128) {
                                    StateObject stateObject = (StateObject) objArr[(i3 << 3) + i5];
                                    if (stateObject instanceof StateObjectImpl) {
                                        ((StateObjectImpl) stateObject).m386recordReadInh_f27i8$runtime(2);
                                    }
                                    OperationKt.m837addimpl(mutableScatterMap, stateObject, obj);
                                }
                                j >>= 8;
                            }
                            if (i4 != 8) {
                                break;
                            }
                        }
                        if (i3 == length) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
            }
            if (i2 == -1) {
                if (obj instanceof StateObjectImpl) {
                    ((StateObjectImpl) obj).m386recordReadInh_f27i8$runtime(2);
                }
                OperationKt.m837addimpl(this.valueToScopes, obj, obj2);
            }
        }

        public final void removeObservation(Object obj, Object obj2) {
            MutableScatterMap mutableScatterMap = this.valueToScopes;
            OperationKt.m839removeimpl(mutableScatterMap, obj2, obj);
            if (!(obj2 instanceof DerivedSnapshotState) || mutableScatterMap.containsKey(obj2)) {
                return;
            }
            OperationKt.m840removeScopeimpl(this.dependencyToDerivedStates, obj2);
            this.recordedDerivedStateValues.remove(obj2);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void removeScopeIf() {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.ObservedScopeMap.removeScopeIf():void");
        }
    }

    public SnapshotStateObserver(Function1 function1) {
        this.onChangedExecutor = function1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0080 A[Catch: all -> 0x008e, TryCatch #0 {all -> 0x008e, blocks: (B:4:0x0007, B:8:0x0011, B:11:0x0078, B:13:0x0080, B:15:0x0090, B:17:0x0085, B:20:0x0021, B:23:0x002d, B:25:0x0041, B:27:0x004f, B:29:0x0059, B:31:0x0069, B:39:0x0074, B:42:0x0094), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void clear(java.lang.Object r22) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            java.lang.Object r2 = r0.observedScopeMapsLock
            monitor-enter(r2)
            androidx.compose.runtime.collection.MutableVector r0 = r0.observedScopeMaps     // Catch: java.lang.Throwable -> L8e
            int r3 = r0.size     // Catch: java.lang.Throwable -> L8e
            r5 = 0
            r6 = 0
        Ld:
            java.lang.Object[] r7 = r0.content
            if (r5 >= r3) goto L94
            r7 = r7[r5]     // Catch: java.lang.Throwable -> L8e
            androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap r7 = (androidx.compose.runtime.snapshots.SnapshotStateObserver.ObservedScopeMap) r7     // Catch: java.lang.Throwable -> L8e
            androidx.collection.MutableScatterMap r8 = r7.scopeToValues     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r8 = r8.remove(r1)     // Catch: java.lang.Throwable -> L8e
            androidx.collection.MutableObjectIntMap r8 = (androidx.collection.MutableObjectIntMap) r8     // Catch: java.lang.Throwable -> L8e
            if (r8 != 0) goto L21
        L1f:
            r15 = r5
            goto L78
        L21:
            java.lang.Object[] r9 = r8.keys     // Catch: java.lang.Throwable -> L8e
            int[] r10 = r8.values     // Catch: java.lang.Throwable -> L8e
            long[] r8 = r8.metadata     // Catch: java.lang.Throwable -> L8e
            int r11 = r8.length     // Catch: java.lang.Throwable -> L8e
            int r11 = r11 + (-2)
            if (r11 < 0) goto L1f
            r12 = 0
        L2d:
            r13 = r8[r12]     // Catch: java.lang.Throwable -> L8e
            r15 = r5
            long r4 = ~r13     // Catch: java.lang.Throwable -> L8e
            r16 = 7
            long r4 = r4 << r16
            long r4 = r4 & r13
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r4 = r4 & r16
            int r4 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r4 == 0) goto L72
            int r4 = r12 - r11
            int r4 = ~r4     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 >>> 31
            r5 = 8
            int r4 = 8 - r4
            r16 = r5
            r5 = 0
        L4d:
            if (r5 >= r4) goto L6e
            r17 = 255(0xff, double:1.26E-321)
            long r17 = r13 & r17
            r19 = 128(0x80, double:6.3E-322)
            int r17 = (r17 > r19 ? 1 : (r17 == r19 ? 0 : -1))
            if (r17 >= 0) goto L67
            int r17 = r12 << 3
            int r17 = r17 + r5
            r18 = r5
            r5 = r9[r17]     // Catch: java.lang.Throwable -> L8e
            r17 = r10[r17]     // Catch: java.lang.Throwable -> L8e
            r7.removeObservation(r1, r5)     // Catch: java.lang.Throwable -> L8e
            goto L69
        L67:
            r18 = r5
        L69:
            long r13 = r13 >> r16
            int r5 = r18 + 1
            goto L4d
        L6e:
            r5 = r16
            if (r4 != r5) goto L78
        L72:
            if (r12 == r11) goto L78
            int r12 = r12 + 1
            r5 = r15
            goto L2d
        L78:
            androidx.collection.MutableScatterMap r4 = r7.scopeToValues     // Catch: java.lang.Throwable -> L8e
            boolean r4 = r4.isNotEmpty()     // Catch: java.lang.Throwable -> L8e
            if (r4 != 0) goto L83
            int r6 = r6 + 1
            goto L90
        L83:
            if (r6 <= 0) goto L90
            java.lang.Object[] r4 = r0.content     // Catch: java.lang.Throwable -> L8e
            int r5 = r15 - r6
            r7 = r4[r15]     // Catch: java.lang.Throwable -> L8e
            r4[r5] = r7     // Catch: java.lang.Throwable -> L8e
            goto L90
        L8e:
            r0 = move-exception
            goto L9e
        L90:
            int r5 = r15 + 1
            goto Ld
        L94:
            int r1 = r3 - r6
            r4 = 0
            java.util.Arrays.fill(r7, r1, r3, r4)     // Catch: java.lang.Throwable -> L8e
            r0.size = r1     // Catch: java.lang.Throwable -> L8e
            monitor-exit(r2)
            return
        L9e:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.clear(java.lang.Object):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean drainChanges() {
        boolean z;
        Set set;
        Set set2;
        synchronized (this.observedScopeMapsLock) {
            z = this.sendingNotifications;
        }
        if (z) {
            return false;
        }
        boolean z2 = false;
        while (true) {
            AtomicReference atomicReference = this.pendingChanges;
            while (true) {
                Object obj = atomicReference.get();
                set = null;
                List list = null;
                List list2 = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof Set) {
                    set2 = (Set) obj;
                } else {
                    if (!(obj instanceof List)) {
                        ComposerKt.composeRuntimeError("Unexpected notification");
                        _UtilJvmKt$$ExternalSyntheticLambda0.m();
                        return false;
                    }
                    List list3 = (List) obj;
                    Set set3 = (Set) list3.get(0);
                    if (list3.size() == 2) {
                        list2 = list3.get(1);
                    } else if (list3.size() > 2) {
                        list2 = list3.subList(1, list3.size());
                    }
                    set2 = set3;
                    list = list2;
                }
                while (!atomicReference.compareAndSet(obj, list)) {
                    if (atomicReference.get() != obj) {
                        break;
                    }
                }
                set = set2;
                break;
            }
            if (set == null) {
                return z2;
            }
            synchronized (this.observedScopeMapsLock) {
                MutableVector mutableVector = this.observedScopeMaps;
                Object[] objArr = mutableVector.content;
                int i = mutableVector.size;
                for (int i2 = 0; i2 < i; i2++) {
                    z2 = ((ObservedScopeMap) objArr[i2]).recordInvalidation(set) || z2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void observeReads(java.lang.Object r22, kotlin.jvm.functions.Function1 r23, kotlin.jvm.functions.Function0 r24) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.observeReads(java.lang.Object, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0):void");
    }

    public final void start() {
        ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = this.applyObserver;
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus(SnapshotKt.applyObservers, composerKt$$ExternalSyntheticLambda0);
        }
        this.applyUnsubscribe = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(10, composerKt$$ExternalSyntheticLambda0);
    }

    public final void clear() {
        synchronized (this.observedScopeMapsLock) {
            MutableVector mutableVector = this.observedScopeMaps;
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i2];
                observedScopeMap.valueToScopes.clear();
                observedScopeMap.scopeToValues.clear();
                observedScopeMap.dependencyToDerivedStates.clear();
                observedScopeMap.recordedDerivedStateValues.clear();
            }
        }
    }
}
