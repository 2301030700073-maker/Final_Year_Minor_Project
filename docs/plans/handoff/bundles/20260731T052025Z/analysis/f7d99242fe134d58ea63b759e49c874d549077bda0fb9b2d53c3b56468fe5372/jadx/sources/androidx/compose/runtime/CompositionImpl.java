package androidx.compose.runtime;

import android.os.Trace;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.MutableSetWrapper;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.unit.IntRectKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.OperationKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.openid.appauth.AuthorizationRequest;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CompositionImpl implements RecomposeScopeOwner, Composition {
    public final MutableSetWrapper abandonSet;
    public final UiApplier applier;
    public final ChangeList changes;
    public final GapComposer composer;
    public final MutableScatterSet conditionallyInvalidatedScopes;
    public final MutableScatterMap derivedStates;
    public final MutableScatterSet invalidatedScopes;
    public CompositionImpl invalidationDelegate;
    public int invalidationDelegateGroup;
    public MutableScatterMap invalidations;
    public final ChangeList lateChanges;
    public final MutableScatterMap observations;
    public final MutableScatterMap observationsProcessed;
    public final PreviewView.AnonymousClass1 observerHolder;
    public final CompositionContext parent;
    public boolean pendingInvalidScopes;
    public PausedCompositionImpl pendingPausedComposition;
    public final AuthorizationRequest.Builder rememberManager;
    public ShouldPauseCallback shouldPause;
    public final SlotTable slotStorage;
    public int state;
    public final AtomicReference pendingModifications = new AtomicReference(null);
    public final Object lock = new Object();

    public CompositionImpl(CompositionContext compositionContext, UiApplier uiApplier) {
        this.parent = compositionContext;
        this.applier = uiApplier;
        MutableSetWrapper mutableSetWrapper = new MutableSetWrapper(new MutableScatterSet());
        this.abandonSet = mutableSetWrapper;
        SlotTable slotTable = new SlotTable();
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotTable.calledByMap = new MutableIntObjectMap();
        }
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotTable.collectSourceInformation();
        }
        this.slotStorage = slotTable;
        this.observations = OperationKt.m838constructorimpl$default();
        this.invalidatedScopes = new MutableScatterSet();
        this.conditionallyInvalidatedScopes = new MutableScatterSet();
        this.derivedStates = OperationKt.m838constructorimpl$default();
        ChangeList changeList = new ChangeList();
        this.changes = changeList;
        ChangeList changeList2 = new ChangeList();
        this.lateChanges = changeList2;
        this.observationsProcessed = OperationKt.m838constructorimpl$default();
        this.invalidations = OperationKt.m838constructorimpl$default();
        PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(17, compositionContext);
        this.observerHolder = anonymousClass1;
        this.rememberManager = new AuthorizationRequest.Builder();
        GapComposer gapComposer = new GapComposer(uiApplier, compositionContext, SlotTableKt.asGapBufferSlotTable(slotTable), mutableSetWrapper, changeList, changeList2, anonymousClass1, this);
        compositionContext.registerComposer$runtime(gapComposer);
        this.composer = gapComposer;
    }

    public final void abandonChanges() {
        this.pendingModifications.set(null);
        this.changes.operations.clear();
        this.lateChanges.operations.clear();
        MutableSetWrapper mutableSetWrapper = this.abandonSet;
        if (mutableSetWrapper.parent$1.isEmpty()) {
            return;
        }
        AuthorizationRequest.Builder builder = this.rememberManager;
        try {
            builder.prepare(mutableSetWrapper, this.composer.getErrorContext$runtime());
            builder.dispatchAbandons();
        } finally {
            builder.clear();
        }
    }

    public final void addPendingInvalidationsLocked(Set set, boolean z) {
        long j;
        long j2;
        long j3;
        char c;
        int i;
        long[] jArr;
        long[] jArr2;
        long j4;
        boolean contains;
        long[] jArr3;
        long j5;
        long[] jArr4;
        long[] jArr5;
        long j6;
        boolean z2;
        long[] jArr6;
        long j7;
        long[] jArr7;
        long[] jArr8;
        char c2;
        long j8;
        int i2;
        int i3;
        long[] jArr9;
        boolean z3 = set instanceof ScatterSetWrapper;
        MutableScatterMap mutableScatterMap = this.derivedStates;
        Object obj = null;
        int i4 = 8;
        if (z3) {
            MutableScatterSet mutableScatterSet = ((ScatterSetWrapper) set).set;
            Object[] objArr = mutableScatterSet.elements;
            long[] jArr10 = mutableScatterSet.metadata;
            int length = jArr10.length - 2;
            if (length >= 0) {
                int i5 = 0;
                j = 128;
                j2 = 255;
                while (true) {
                    long j9 = jArr10[i5];
                    char c3 = 7;
                    j3 = -9187201950435737472L;
                    if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j9 & 255) < 128) {
                                Object obj2 = objArr[(i5 << 3) + i7];
                                c2 = c3;
                                if (obj2 instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj2).invalidateForResult(obj);
                                } else {
                                    addPendingInvalidationsLocked(obj2, z);
                                    Object obj3 = mutableScatterMap.get(obj2);
                                    if (obj3 != null) {
                                        if (obj3 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) obj3;
                                            Object[] objArr2 = mutableScatterSet2.elements;
                                            long[] jArr11 = mutableScatterSet2.metadata;
                                            int length2 = jArr11.length - 2;
                                            if (length2 >= 0) {
                                                int i8 = i4;
                                                i2 = length;
                                                int i9 = 0;
                                                while (true) {
                                                    long j10 = jArr11[i9];
                                                    j8 = j9;
                                                    long[] jArr12 = jArr11;
                                                    if ((((~j10) << c2) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i10 = 8 - ((~(i9 - length2)) >>> 31);
                                                        int i11 = 0;
                                                        while (i11 < i10) {
                                                            if ((j10 & 255) < 128) {
                                                                jArr9 = jArr10;
                                                                addPendingInvalidationsLocked((DerivedSnapshotState) objArr2[(i9 << 3) + i11], z);
                                                            } else {
                                                                jArr9 = jArr10;
                                                            }
                                                            j10 >>= i8;
                                                            i11++;
                                                            jArr10 = jArr9;
                                                        }
                                                        jArr8 = jArr10;
                                                        if (i10 != i8) {
                                                            break;
                                                        }
                                                    } else {
                                                        jArr8 = jArr10;
                                                    }
                                                    if (i9 == length2) {
                                                        break;
                                                    }
                                                    i9++;
                                                    jArr11 = jArr12;
                                                    j9 = j8;
                                                    jArr10 = jArr8;
                                                    i8 = 8;
                                                }
                                            }
                                        } else {
                                            jArr8 = jArr10;
                                            j8 = j9;
                                            i2 = length;
                                            addPendingInvalidationsLocked((DerivedSnapshotState) obj3, z);
                                        }
                                        i3 = 8;
                                    }
                                }
                                jArr8 = jArr10;
                                j8 = j9;
                                i2 = length;
                                i3 = 8;
                            } else {
                                jArr8 = jArr10;
                                c2 = c3;
                                j8 = j9;
                                i2 = length;
                                i3 = i4;
                            }
                            j9 = j8 >> i3;
                            i7++;
                            length = i2;
                            i4 = i3;
                            c3 = c2;
                            jArr10 = jArr8;
                            obj = null;
                        }
                        jArr7 = jArr10;
                        c = c3;
                        int i12 = length;
                        if (i6 != i4) {
                            break;
                        } else {
                            length = i12;
                        }
                    } else {
                        jArr7 = jArr10;
                        c = 7;
                    }
                    if (i5 == length) {
                        break;
                    }
                    i5++;
                    jArr10 = jArr7;
                    obj = null;
                    i4 = 8;
                }
            } else {
                j = 128;
                j2 = 255;
                j3 = -9187201950435737472L;
                c = 7;
            }
        } else {
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
            c = 7;
            for (Object obj4 : set) {
                if (obj4 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj4).invalidateForResult(null);
                } else {
                    addPendingInvalidationsLocked(obj4, z);
                    Object obj5 = mutableScatterMap.get(obj4);
                    if (obj5 != null) {
                        if (obj5 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet3 = (MutableScatterSet) obj5;
                            Object[] objArr3 = mutableScatterSet3.elements;
                            long[] jArr13 = mutableScatterSet3.metadata;
                            int length3 = jArr13.length - 2;
                            if (length3 >= 0) {
                                while (true) {
                                    long j11 = jArr13[i];
                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i13 = 8 - ((~(i - length3)) >>> 31);
                                        for (int i14 = 0; i14 < i13; i14++) {
                                            if ((j11 & 255) < 128) {
                                                addPendingInvalidationsLocked((DerivedSnapshotState) objArr3[(i << 3) + i14], z);
                                            }
                                            j11 >>= 8;
                                        }
                                        if (i13 != 8) {
                                            break;
                                        }
                                    }
                                    i = i != length3 ? i + 1 : 0;
                                }
                            }
                        } else {
                            addPendingInvalidationsLocked((DerivedSnapshotState) obj5, z);
                        }
                    }
                }
            }
        }
        MutableScatterMap mutableScatterMap2 = this.observations;
        MutableScatterSet mutableScatterSet4 = this.invalidatedScopes;
        if (z) {
            MutableScatterSet mutableScatterSet5 = this.conditionallyInvalidatedScopes;
            if (mutableScatterSet5.isNotEmpty()) {
                long[] jArr14 = mutableScatterMap2.metadata;
                int length4 = jArr14.length - 2;
                if (length4 >= 0) {
                    int i15 = 0;
                    while (true) {
                        long j12 = jArr14[i15];
                        if ((((~j12) << c) & j12 & j3) != j3) {
                            int i16 = 8 - ((~(i15 - length4)) >>> 31);
                            int i17 = 0;
                            while (i17 < i16) {
                                if ((j12 & j2) < j) {
                                    int i18 = (i15 << 3) + i17;
                                    Object obj6 = mutableScatterMap2.keys[i18];
                                    Object obj7 = mutableScatterMap2.values[i18];
                                    if (obj7 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj7;
                                        Object[] objArr4 = mutableScatterSet6.elements;
                                        long[] jArr15 = mutableScatterSet6.metadata;
                                        int length5 = jArr15.length - 2;
                                        if (length5 >= 0) {
                                            j6 = j12;
                                            int i19 = 0;
                                            while (true) {
                                                long j13 = jArr15[i19];
                                                Object[] objArr5 = objArr4;
                                                long[] jArr16 = jArr15;
                                                if ((((~j13) << c) & j13 & j3) != j3) {
                                                    int i20 = 8 - ((~(i19 - length5)) >>> 31);
                                                    int i21 = 0;
                                                    while (i21 < i20) {
                                                        if ((j13 & j2) < j) {
                                                            jArr6 = jArr14;
                                                            int i22 = (i19 << 3) + i21;
                                                            j7 = j13;
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr5[i22];
                                                            if (mutableScatterSet5.contains(recomposeScopeImpl) || mutableScatterSet4.contains(recomposeScopeImpl)) {
                                                                mutableScatterSet6.removeElementAt(i22);
                                                            }
                                                        } else {
                                                            jArr6 = jArr14;
                                                            j7 = j13;
                                                        }
                                                        j13 = j7 >> 8;
                                                        i21++;
                                                        jArr14 = jArr6;
                                                    }
                                                    jArr5 = jArr14;
                                                    if (i20 != 8) {
                                                        break;
                                                    }
                                                } else {
                                                    jArr5 = jArr14;
                                                }
                                                if (i19 == length5) {
                                                    break;
                                                }
                                                i19++;
                                                objArr4 = objArr5;
                                                jArr15 = jArr16;
                                                jArr14 = jArr5;
                                            }
                                        } else {
                                            jArr5 = jArr14;
                                            j6 = j12;
                                        }
                                        z2 = mutableScatterSet6.isEmpty();
                                    } else {
                                        jArr5 = jArr14;
                                        j6 = j12;
                                        obj7.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj7;
                                        z2 = mutableScatterSet5.contains(recomposeScopeImpl2) || mutableScatterSet4.contains(recomposeScopeImpl2);
                                    }
                                    if (z2) {
                                        mutableScatterMap2.removeValueAt(i18);
                                    }
                                } else {
                                    jArr5 = jArr14;
                                    j6 = j12;
                                }
                                j12 = j6 >> 8;
                                i17++;
                                jArr14 = jArr5;
                            }
                            jArr4 = jArr14;
                            if (i16 != 8) {
                                break;
                            }
                        } else {
                            jArr4 = jArr14;
                        }
                        if (i15 == length4) {
                            break;
                        }
                        i15++;
                        jArr14 = jArr4;
                    }
                }
                mutableScatterSet5.clear();
                cleanUpDerivedStateObservations();
                return;
            }
        }
        if (mutableScatterSet4.isNotEmpty()) {
            long[] jArr17 = mutableScatterMap2.metadata;
            int length6 = jArr17.length - 2;
            if (length6 >= 0) {
                int i23 = 0;
                while (true) {
                    long j14 = jArr17[i23];
                    if ((((~j14) << c) & j14 & j3) != j3) {
                        int i24 = 8 - ((~(i23 - length6)) >>> 31);
                        int i25 = 0;
                        while (i25 < i24) {
                            if ((j14 & j2) < j) {
                                int i26 = (i23 << 3) + i25;
                                Object obj8 = mutableScatterMap2.keys[i26];
                                Object obj9 = mutableScatterMap2.values[i26];
                                if (obj9 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet7 = (MutableScatterSet) obj9;
                                    Object[] objArr6 = mutableScatterSet7.elements;
                                    long[] jArr18 = mutableScatterSet7.metadata;
                                    int length7 = jArr18.length - 2;
                                    if (length7 >= 0) {
                                        j4 = j14;
                                        int i27 = 0;
                                        while (true) {
                                            long j15 = jArr18[i27];
                                            Object[] objArr7 = objArr6;
                                            long[] jArr19 = jArr18;
                                            if ((((~j15) << c) & j15 & j3) != j3) {
                                                int i28 = 8 - ((~(i27 - length7)) >>> 31);
                                                int i29 = 0;
                                                while (i29 < i28) {
                                                    if ((j15 & j2) < j) {
                                                        jArr3 = jArr17;
                                                        int i30 = (i27 << 3) + i29;
                                                        j5 = j15;
                                                        if (mutableScatterSet4.contains((RecomposeScopeImpl) objArr7[i30])) {
                                                            mutableScatterSet7.removeElementAt(i30);
                                                        }
                                                    } else {
                                                        jArr3 = jArr17;
                                                        j5 = j15;
                                                    }
                                                    j15 = j5 >> 8;
                                                    i29++;
                                                    jArr17 = jArr3;
                                                }
                                                jArr2 = jArr17;
                                                if (i28 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr2 = jArr17;
                                            }
                                            if (i27 == length7) {
                                                break;
                                            }
                                            i27++;
                                            objArr6 = objArr7;
                                            jArr18 = jArr19;
                                            jArr17 = jArr2;
                                        }
                                    } else {
                                        jArr2 = jArr17;
                                        j4 = j14;
                                    }
                                    contains = mutableScatterSet7.isEmpty();
                                } else {
                                    jArr2 = jArr17;
                                    j4 = j14;
                                    obj9.getClass();
                                    contains = mutableScatterSet4.contains((RecomposeScopeImpl) obj9);
                                }
                                if (contains) {
                                    mutableScatterMap2.removeValueAt(i26);
                                }
                            } else {
                                jArr2 = jArr17;
                                j4 = j14;
                            }
                            j14 = j4 >> 8;
                            i25++;
                            jArr17 = jArr2;
                        }
                        jArr = jArr17;
                        if (i24 != 8) {
                            break;
                        }
                    } else {
                        jArr = jArr17;
                    }
                    if (i23 == length6) {
                        break;
                    }
                    i23++;
                    jArr17 = jArr;
                }
            }
            cleanUpDerivedStateObservations();
            mutableScatterSet4.clear();
        }
    }

    public final void applyChanges() {
        synchronized (this.lock) {
            try {
                applyChangesInLocked(this.changes);
                drainPendingModificationsLocked();
            } catch (Throwable th) {
                try {
                    if (!this.abandonSet.parent$1.isEmpty()) {
                        AuthorizationRequest.Builder builder = this.rememberManager;
                        try {
                            builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            builder.dispatchAbandons();
                            builder.clear();
                        } catch (Throwable th2) {
                            builder.clear();
                            throw th2;
                        }
                    }
                    throw th;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #7 {all -> 0x003e, blocks: (B:3:0x0013, B:5:0x0035, B:7:0x0039, B:11:0x0047, B:12:0x004b, B:16:0x0056, B:29:0x0081, B:31:0x008e, B:148:0x0043), top: B:2:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void applyChangesInLocked(androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList r34) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.applyChangesInLocked(androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList):void");
    }

    public final void applyLateChanges() {
        synchronized (this.lock) {
            try {
                ChangeList changeList = this.lateChanges;
                changeList.getClass();
                if (!changeList.operations.isEmpty()) {
                    applyChangesInLocked(this.lateChanges);
                }
            } catch (Throwable th) {
                try {
                    if (!this.abandonSet.parent$1.isEmpty()) {
                        AuthorizationRequest.Builder builder = this.rememberManager;
                        try {
                            builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            builder.dispatchAbandons();
                            builder.clear();
                        } catch (Throwable th2) {
                            builder.clear();
                            throw th2;
                        }
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public final void changesApplied() {
        AuthorizationRequest.Builder builder;
        synchronized (this.lock) {
            try {
                this.composer.providerUpdates = null;
                if (!this.abandonSet.parent$1.isEmpty()) {
                    builder = this.rememberManager;
                    try {
                        builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        builder.dispatchAbandons();
                        builder.clear();
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    if (!this.abandonSet.parent$1.isEmpty()) {
                        builder = this.rememberManager;
                        try {
                            builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            builder.dispatchAbandons();
                            builder.clear();
                        } finally {
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    abandonChanges();
                    throw th2;
                }
            }
        }
    }

    public final void cleanUpDerivedStateObservations() {
        long j;
        char c;
        long j2;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i;
        int i2;
        long j4;
        char c2;
        long j5;
        long j6;
        int i3;
        boolean z;
        int i4;
        int i5;
        MutableScatterMap mutableScatterMap = this.derivedStates;
        long[] jArr3 = mutableScatterMap.metadata;
        int length = jArr3.length - 2;
        long j7 = 255;
        char c3 = 7;
        long j8 = -9187201950435737472L;
        int i6 = 8;
        if (length >= 0) {
            int i7 = 0;
            while (true) {
                long j9 = jArr3[i7];
                j3 = 128;
                if ((((~j9) << c3) & j9 & j8) != j8) {
                    int i8 = 8 - ((~(i7 - length)) >>> 31);
                    int i9 = 0;
                    while (i9 < i8) {
                        if ((j9 & j7) < 128) {
                            j4 = j7;
                            int i10 = (i7 << 3) + i9;
                            Object obj = mutableScatterMap.keys[i10];
                            Object obj2 = mutableScatterMap.values[i10];
                            c2 = c3;
                            boolean z2 = obj2 instanceof MutableScatterSet;
                            j5 = j8;
                            MutableScatterMap mutableScatterMap2 = this.observations;
                            if (z2) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                long[] jArr4 = mutableScatterSet.metadata;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    int i11 = i6;
                                    j6 = j9;
                                    int i12 = 0;
                                    while (true) {
                                        long j10 = jArr4[i12];
                                        jArr2 = jArr3;
                                        i = length;
                                        if ((((~j10) << c2) & j10 & j5) != j5) {
                                            int i13 = 8 - ((~(i12 - length2)) >>> 31);
                                            int i14 = 0;
                                            while (i14 < i13) {
                                                if ((j10 & j4) < 128) {
                                                    i4 = i14;
                                                    int i15 = (i12 << 3) + i4;
                                                    i5 = i9;
                                                    if (!mutableScatterMap2.containsKey((DerivedSnapshotState) objArr[i15])) {
                                                        mutableScatterSet.removeElementAt(i15);
                                                    }
                                                } else {
                                                    i4 = i14;
                                                    i5 = i9;
                                                }
                                                j10 >>= i11;
                                                i14 = i4 + 1;
                                                i9 = i5;
                                            }
                                            i2 = i9;
                                            if (i13 != i11) {
                                                break;
                                            }
                                        } else {
                                            i2 = i9;
                                        }
                                        if (i12 == length2) {
                                            break;
                                        }
                                        i12++;
                                        jArr3 = jArr2;
                                        length = i;
                                        i9 = i2;
                                        i11 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    i = length;
                                    i2 = i9;
                                    j6 = j9;
                                }
                                z = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr3;
                                i = length;
                                i2 = i9;
                                j6 = j9;
                                obj2.getClass();
                                z = !mutableScatterMap2.containsKey((DerivedSnapshotState) obj2);
                            }
                            if (z) {
                                mutableScatterMap.removeValueAt(i10);
                            }
                            i3 = 8;
                        } else {
                            jArr2 = jArr3;
                            i = length;
                            i2 = i9;
                            j4 = j7;
                            c2 = c3;
                            j5 = j8;
                            j6 = j9;
                            i3 = i6;
                        }
                        j9 = j6 >> i3;
                        i9 = i2 + 1;
                        i6 = i3;
                        c3 = c2;
                        j7 = j4;
                        j8 = j5;
                        jArr3 = jArr2;
                        length = i;
                    }
                    jArr = jArr3;
                    int i16 = length;
                    j = j7;
                    c = c3;
                    j2 = j8;
                    if (i8 != i6) {
                        break;
                    } else {
                        length = i16;
                    }
                } else {
                    jArr = jArr3;
                    j = j7;
                    c = c3;
                    j2 = j8;
                }
                if (i7 == length) {
                    break;
                }
                i7++;
                c3 = c;
                j7 = j;
                j8 = j2;
                jArr3 = jArr;
                i6 = 8;
            }
        } else {
            j = 255;
            c = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
        }
        MutableScatterSet mutableScatterSet2 = this.conditionallyInvalidatedScopes;
        if (!mutableScatterSet2.isNotEmpty()) {
            return;
        }
        Object[] objArr2 = mutableScatterSet2.elements;
        long[] jArr5 = mutableScatterSet2.metadata;
        int length3 = jArr5.length - 2;
        if (length3 < 0) {
            return;
        }
        int i17 = 0;
        while (true) {
            long j11 = jArr5[i17];
            if ((((~j11) << c) & j11 & j2) != j2) {
                int i18 = 8 - ((~(i17 - length3)) >>> 31);
                for (int i19 = 0; i19 < i18; i19++) {
                    if ((j11 & j) < j3) {
                        int i20 = (i17 << 3) + i19;
                        if (((RecomposeScopeImpl) objArr2[i20]).trackedDependencies == null) {
                            mutableScatterSet2.removeElementAt(i20);
                        }
                    }
                    j11 >>= 8;
                }
                if (i18 != 8) {
                    return;
                }
            }
            if (i17 == length3) {
                return;
            } else {
                i17++;
            }
        }
    }

    public final boolean clearDeactivated() {
        boolean z;
        synchronized (this.lock) {
            z = true;
            if (this.state != 1) {
                z = false;
            }
            if (z) {
                this.state = 0;
            }
        }
        return z;
    }

    public final void composeContent(Function2 function2) {
        try {
            synchronized (this.lock) {
                drainPendingModificationsForCompositionLocked();
                MutableScatterMap mutableScatterMap = this.invalidations;
                this.invalidations = OperationKt.m838constructorimpl$default();
                try {
                    GapComposer gapComposer = this.composer;
                    ShouldPauseCallback shouldPauseCallback = this.shouldPause;
                    if (!gapComposer.changes.operations.isEmpty()) {
                        ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
                    }
                    gapComposer.shouldPauseCallback = shouldPauseCallback;
                    try {
                        gapComposer.m375doComposeaFTiNEg(mutableScatterMap, function2);
                    } finally {
                        gapComposer.shouldPauseCallback = null;
                    }
                } catch (Throwable th) {
                    this.invalidations = mutableScatterMap;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.abandonSet.parent$1.isEmpty()) {
                    AuthorizationRequest.Builder builder = this.rememberManager;
                    try {
                        builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        builder.dispatchAbandons();
                        builder.clear();
                    } catch (Throwable th3) {
                        builder.clear();
                        throw th3;
                    }
                }
                throw th2;
            } catch (Throwable th4) {
                abandonChanges();
                throw th4;
            }
        }
    }

    public final PausedCompositionImpl composeInitialPaused(boolean z, Function2 function2) {
        if (this.pendingPausedComposition != null) {
            PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
        }
        PausedCompositionImpl pausedCompositionImpl = new PausedCompositionImpl(this, this.parent, this.composer, this.abandonSet, function2, z, this.applier, this.lock);
        this.pendingPausedComposition = pausedCompositionImpl;
        return pausedCompositionImpl;
    }

    public final void deactivate() {
        AuthorizationRequest.Builder builder;
        synchronized (this.lock) {
            try {
                if (this.pendingPausedComposition != null) {
                    PreconditionsKt.throwIllegalStateException("Deactivate is not supported while pausable composition is in progress");
                }
                boolean z = this.slotStorage.groupsSize == 0;
                try {
                    try {
                        if (z) {
                            if (!this.abandonSet.parent$1.isEmpty()) {
                            }
                            this.observations.clear();
                            this.derivedStates.clear();
                            this.invalidations.clear();
                            this.changes.operations.clear();
                            this.lateChanges.operations.clear();
                            GapComposer gapComposer = this.composer;
                            gapComposer.invalidateStack.clear();
                            gapComposer.invalidations.clear();
                            gapComposer.changes.operations.clear();
                            gapComposer.providerUpdates = null;
                            this.state = 1;
                        }
                        builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        if (!z) {
                            SlotTable slotTable = this.slotStorage;
                            AuthorizationRequest.Builder builder2 = this.rememberManager;
                            SlotWriter openWriter = slotTable.openWriter();
                            try {
                                openWriter.forAllDataInRememberOrder(openWriter.currentGroup, new GapComposer$$ExternalSyntheticLambda3(15, builder2, openWriter));
                                openWriter.close(true);
                                this.applier.onEndChanges();
                                builder.dispatchRememberObservers();
                            } catch (Throwable th) {
                                openWriter.close(false);
                                throw th;
                            }
                        }
                        builder.dispatchAbandons();
                        builder.clear();
                        this.observations.clear();
                        this.derivedStates.clear();
                        this.invalidations.clear();
                        this.changes.operations.clear();
                        this.lateChanges.operations.clear();
                        GapComposer gapComposer2 = this.composer;
                        gapComposer2.invalidateStack.clear();
                        gapComposer2.invalidations.clear();
                        gapComposer2.changes.operations.clear();
                        gapComposer2.providerUpdates = null;
                        this.state = 1;
                    } catch (Throwable th2) {
                        builder.clear();
                        throw th2;
                    }
                    builder = this.rememberManager;
                } finally {
                    Trace.endSection();
                }
                Trace.beginSection("Compose:deactivate");
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void dispose() {
        synchronized (this.lock) {
            try {
                if (this.composer.isComposing) {
                    PreconditionsKt.throwIllegalStateException("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.state != 3) {
                    this.state = 3;
                    ChangeList changeList = this.composer.deferredChanges;
                    if (changeList != null) {
                        applyChangesInLocked(changeList);
                    }
                    int i = 0;
                    boolean z = this.slotStorage.groupsSize == 0;
                    if (!z || !this.abandonSet.parent$1.isEmpty()) {
                        AuthorizationRequest.Builder builder = this.rememberManager;
                        try {
                            builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            if (!z) {
                                SlotTable slotTable = this.slotStorage;
                                AuthorizationRequest.Builder builder2 = this.rememberManager;
                                SlotWriter openWriter = slotTable.openWriter();
                                try {
                                    openWriter.forAllDataInRememberOrder(openWriter.currentGroup, new ComposerKt$$ExternalSyntheticLambda0(i, builder2));
                                    openWriter.removeGroup();
                                    openWriter.close(true);
                                    this.applier.clear();
                                    this.applier.onEndChanges();
                                    builder.dispatchRememberObservers();
                                } catch (Throwable th) {
                                    openWriter.close(false);
                                    throw th;
                                }
                            }
                            builder.dispatchAbandons();
                            builder.clear();
                        } catch (Throwable th2) {
                            builder.clear();
                            throw th2;
                        }
                    }
                    GapComposer gapComposer = this.composer;
                    gapComposer.getClass();
                    Trace.beginSection("Compose:Composer.dispose");
                    try {
                        gapComposer.parentContext.unregisterComposer$runtime(gapComposer);
                        gapComposer.invalidateStack.clear();
                        gapComposer.invalidations.clear();
                        gapComposer.changes.operations.clear();
                        gapComposer.providerUpdates = null;
                        gapComposer.applier.clear();
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        this.parent.unregisterComposition$runtime(this);
    }

    public final void drainPendingModificationsForCompositionLocked() {
        Object obj = Updater.PendingApplyNoModifications;
        AtomicReference atomicReference = this.pendingModifications;
        Object andSet = atomicReference.getAndSet(obj);
        if (andSet != null) {
            if (andSet.equals(obj)) {
                ComposerKt.composeRuntimeError("pending composition has not been applied");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return;
            }
            if (andSet instanceof Set) {
                addPendingInvalidationsLocked((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + atomicReference);
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return;
            }
            for (Set set : (Set[]) andSet) {
                addPendingInvalidationsLocked(set, true);
            }
        }
    }

    public final void drainPendingModificationsLocked() {
        AtomicReference atomicReference = this.pendingModifications;
        Object andSet = atomicReference.getAndSet(null);
        if (Intrinsics.areEqual(andSet, Updater.PendingApplyNoModifications)) {
            return;
        }
        if (andSet instanceof Set) {
            addPendingInvalidationsLocked((Set) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set set : (Set[]) andSet) {
                addPendingInvalidationsLocked(set, false);
            }
            return;
        }
        if (andSet == null) {
            if (this.pendingPausedComposition == null) {
                ComposerKt.composeImmediateRuntimeError("calling recordModificationsOf and applyChanges concurrently is not supported");
            }
        } else {
            ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + atomicReference);
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
        }
    }

    public final void drainPendingModificationsOutOfBandLocked() {
        EmptySet emptySet = EmptySet.INSTANCE;
        AtomicReference atomicReference = this.pendingModifications;
        Object andSet = atomicReference.getAndSet(emptySet);
        if (Intrinsics.areEqual(andSet, Updater.PendingApplyNoModifications) || andSet == null) {
            return;
        }
        if (andSet instanceof Set) {
            addPendingInvalidationsLocked((Set) andSet, false);
            return;
        }
        if (!(andSet instanceof Object[])) {
            ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + atomicReference);
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return;
        }
        for (Set set : (Set[]) andSet) {
            addPendingInvalidationsLocked(set, false);
        }
    }

    public final void ensureRunning() {
        int i = this.state;
        if (i != 0) {
            PreconditionsKt.throwIllegalStateException(i != 1 ? i != 2 ? i != 3 ? "" : "The composition is disposed" : "A previous pausable composition for this composition was cancelled. This composition must be disposed." : "The composition should be activated before setting content.");
        }
        if (this.pendingPausedComposition == null) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
    }

    public final void insertMovableContent(ArrayList arrayList) {
        MutableSetWrapper mutableSetWrapper = this.abandonSet;
        GapComposer gapComposer = this.composer;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((MovableContentStateReference) ((Pair) arrayList.get(i)).first).composition != this) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
                break;
            }
        }
        try {
            gapComposer.getClass();
            Trace.beginSection("Compose:insertMovableContent");
            try {
                try {
                    gapComposer.insertMovableContentGuarded(arrayList);
                    gapComposer.cleanUpCompose();
                } catch (Throwable th) {
                    gapComposer.abortRoot();
                    throw th;
                }
            } finally {
                Trace.endSection();
            }
        } catch (Throwable th2) {
            try {
                if (!mutableSetWrapper.parent$1.isEmpty()) {
                    AuthorizationRequest.Builder builder = this.rememberManager;
                    try {
                        builder.prepare(mutableSetWrapper, gapComposer.getErrorContext$runtime());
                        builder.dispatchAbandons();
                        builder.clear();
                    } catch (Throwable th3) {
                        builder.clear();
                        throw th3;
                    }
                }
                throw th2;
            } catch (Throwable th4) {
                abandonChanges();
                throw th4;
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        CompositionImpl compositionImpl;
        int i = recomposeScopeImpl.flags;
        if ((i & 2) != 0) {
            recomposeScopeImpl.flags = i | 4;
        }
        GapAnchor gapAnchor = recomposeScopeImpl.anchor;
        if (gapAnchor == null || !gapAnchor.getValid()) {
            return InvalidationResult.IGNORED;
        }
        SlotTable slotTable = this.slotStorage;
        slotTable.getClass();
        GapAnchor gapAnchor2 = recomposeScopeImpl.anchor;
        if (gapAnchor2 != null && slotTable.ownsAnchor(IntRectKt.asGapAnchor(gapAnchor2))) {
            if (recomposeScopeImpl.block == null) {
                return InvalidationResult.IGNORED;
            }
            InvalidationResult invalidateChecked = invalidateChecked(recomposeScopeImpl, gapAnchor, obj);
            if (invalidateChecked != InvalidationResult.IGNORED) {
                this.observerHolder.current();
            }
            return invalidateChecked;
        }
        synchronized (this.lock) {
            compositionImpl = this.invalidationDelegate;
        }
        if (compositionImpl != null) {
            GapComposer gapComposer = compositionImpl.composer;
            if (gapComposer.isComposing && gapComposer.tryImminentInvalidation$runtime(recomposeScopeImpl, obj)) {
                return InvalidationResult.IMMINENT;
            }
        }
        return InvalidationResult.IGNORED;
    }

    public final InvalidationResult invalidateChecked(RecomposeScopeImpl recomposeScopeImpl, GapAnchor gapAnchor, Object obj) {
        CompositionImpl compositionImpl;
        synchronized (this.lock) {
            try {
                CompositionImpl compositionImpl2 = this.invalidationDelegate;
                if (compositionImpl2 != null) {
                    SlotTable slotTable = this.slotStorage;
                    int i = this.invalidationDelegateGroup;
                    if (slotTable.writer) {
                        ComposerKt.composeImmediateRuntimeError("Writer is active");
                    }
                    if (i < 0 || i >= slotTable.groupsSize) {
                        ComposerKt.composeImmediateRuntimeError("Invalid group index");
                    }
                    GapAnchor asGapAnchor = IntRectKt.asGapAnchor(gapAnchor);
                    if (slotTable.ownsAnchor(asGapAnchor)) {
                        int i2 = slotTable.groups[(i * 5) + 3] + i;
                        int i3 = asGapAnchor.location;
                        compositionImpl = (i <= i3 && i3 < i2) ? compositionImpl2 : null;
                    }
                    compositionImpl2 = null;
                }
                if (compositionImpl == null) {
                    GapComposer gapComposer = this.composer;
                    if (gapComposer.isComposing && gapComposer.tryImminentInvalidation$runtime(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    }
                    if (obj == null) {
                        this.invalidations.set(recomposeScopeImpl, NeverEqualPolicy.INSTANCE$2);
                    } else {
                        boolean z = obj instanceof DerivedSnapshotState;
                        MutableScatterMap mutableScatterMap = this.invalidations;
                        if (z) {
                            Object obj2 = mutableScatterMap.get(recomposeScopeImpl);
                            if (obj2 != null) {
                                if (obj2 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                    Object[] objArr = mutableScatterSet.elements;
                                    long[] jArr = mutableScatterSet.metadata;
                                    int length = jArr.length - 2;
                                    if (length >= 0) {
                                        int i4 = 0;
                                        loop0: while (true) {
                                            long j = jArr[i4];
                                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i5 = 8 - ((~(i4 - length)) >>> 31);
                                                for (int i6 = 0; i6 < i5; i6++) {
                                                    if ((255 & j) < 128 && objArr[(i4 << 3) + i6] == NeverEqualPolicy.INSTANCE$2) {
                                                        break loop0;
                                                    }
                                                    j >>= 8;
                                                }
                                                if (i5 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i4 == length) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                } else if (obj2 == NeverEqualPolicy.INSTANCE$2) {
                                }
                            }
                            OperationKt.m837addimpl(this.invalidations, recomposeScopeImpl, obj);
                        } else {
                            mutableScatterMap.set(recomposeScopeImpl, NeverEqualPolicy.INSTANCE$2);
                        }
                    }
                }
                if (compositionImpl != null) {
                    return compositionImpl.invalidateChecked(recomposeScopeImpl, gapAnchor, obj);
                }
                this.parent.invalidate$runtime(this);
                return this.composer.isComposing ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void invalidateScopeOfLocked(Object obj) {
        Object obj2 = this.observations.get(obj);
        if (obj2 == null) {
            return;
        }
        boolean z = obj2 instanceof MutableScatterSet;
        InvalidationResult invalidationResult = InvalidationResult.IMMINENT;
        MutableScatterMap mutableScatterMap = this.observationsProcessed;
        if (!z) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj2;
            if (recomposeScopeImpl.invalidateForResult(obj) == invalidationResult) {
                OperationKt.m837addimpl(mutableScatterMap, obj, recomposeScopeImpl);
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                        if (recomposeScopeImpl2.invalidateForResult(obj) == invalidationResult) {
                            OperationKt.m837addimpl(mutableScatterMap, obj, recomposeScopeImpl2);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean observesAnyOf(java.util.Set r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof androidx.compose.runtime.collection.ScatterSetWrapper
            androidx.collection.MutableScatterMap r3 = r0.derivedStates
            androidx.collection.MutableScatterMap r0 = r0.observations
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L5e
            androidx.compose.runtime.collection.ScatterSetWrapper r1 = (androidx.compose.runtime.collection.ScatterSetWrapper) r1
            androidx.collection.MutableScatterSet r1 = r1.set
            java.lang.Object[] r2 = r1.elements
            long[] r1 = r1.metadata
            int r6 = r1.length
            int r6 = r6 + (-2)
            if (r6 < 0) goto L7b
            r7 = r4
        L1c:
            r8 = r1[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L59
            int r10 = r7 - r6
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r4
        L36:
            if (r12 >= r10) goto L57
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.3E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L53
            int r13 = r7 << 3
            int r13 = r13 + r12
            r13 = r2[r13]
            boolean r14 = r0.containsKey(r13)
            if (r14 != 0) goto L52
            boolean r13 = r3.containsKey(r13)
            if (r13 == 0) goto L53
        L52:
            return r5
        L53:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L36
        L57:
            if (r10 != r11) goto L7b
        L59:
            if (r7 == r6) goto L7b
            int r7 = r7 + 1
            goto L1c
        L5e:
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r1 = r1.iterator()
        L64:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L7b
            java.lang.Object r2 = r1.next()
            boolean r6 = r0.containsKey(r2)
            if (r6 != 0) goto L7a
            boolean r2 = r3.containsKey(r2)
            if (r2 == 0) goto L64
        L7a:
            return r5
        L7b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.observesAnyOf(java.util.Set):boolean");
    }

    public final boolean recompose() {
        synchronized (this.lock) {
            PausedCompositionImpl pausedCompositionImpl = this.pendingPausedComposition;
            boolean z = false;
            if (pausedCompositionImpl != null && (pausedCompositionImpl.state.get() != PausedCompositionState.Recomposing || pausedCompositionImpl.owningThread != Expect_jvmKt.currentThreadId())) {
                AtomicReference atomicReference = pausedCompositionImpl.state;
                PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
                while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2) && atomicReference.get() == pausedCompositionState) {
                }
                ((MutableIntList) pausedCompositionImpl.pausableApplier.mOnInvalidateMenuCallback).add(9);
                return false;
            }
            drainPendingModificationsForCompositionLocked();
            try {
                MutableScatterMap mutableScatterMap = this.invalidations;
                this.invalidations = OperationKt.m838constructorimpl$default();
                try {
                    GapComposer gapComposer = this.composer;
                    ShouldPauseCallback shouldPauseCallback = this.shouldPause;
                    Operations operations = gapComposer.changes.operations;
                    if (!operations.isEmpty()) {
                        ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
                    }
                    if (mutableScatterMap._size > 0 || !gapComposer.invalidations.isEmpty()) {
                        gapComposer.shouldPauseCallback = shouldPauseCallback;
                        try {
                            gapComposer.m375doComposeaFTiNEg(mutableScatterMap, null);
                            gapComposer.shouldPauseCallback = null;
                            z = !operations.isEmpty();
                        } catch (Throwable th) {
                            gapComposer.shouldPauseCallback = null;
                            throw th;
                        }
                    }
                    if (!z) {
                        drainPendingModificationsLocked();
                    }
                    return z;
                } catch (Throwable th2) {
                    this.invalidations = mutableScatterMap;
                    throw th2;
                }
            } catch (Throwable th3) {
                try {
                    if (!this.abandonSet.parent$1.isEmpty()) {
                        AuthorizationRequest.Builder builder = this.rememberManager;
                        try {
                            builder.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            builder.dispatchAbandons();
                            builder.clear();
                        } catch (Throwable th4) {
                            builder.clear();
                            throw th4;
                        }
                    }
                    throw th3;
                } catch (Throwable th5) {
                    abandonChanges();
                    throw th5;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final void recomposeScopeReleased() {
        this.pendingInvalidScopes = true;
        this.observerHolder.current();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.Set[]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object[]] */
    public final void recordModificationsOf(ScatterSetWrapper scatterSetWrapper) {
        ScatterSetWrapper scatterSetWrapper2;
        while (true) {
            Object obj = this.pendingModifications.get();
            if (obj == null || obj.equals(Updater.PendingApplyNoModifications)) {
                scatterSetWrapper2 = scatterSetWrapper;
            } else if (obj instanceof Set) {
                scatterSetWrapper2 = new Set[]{obj, scatterSetWrapper};
            } else {
                if (!(obj instanceof Object[])) {
                    DBUtil$$ExternalSyntheticBUOutline0.m((Object) this.pendingModifications, "corrupt pendingModifications: ");
                    return;
                }
                Set[] setArr = (Set[]) obj;
                int length = setArr.length;
                ?? copyOf = Arrays.copyOf(setArr, length + 1);
                copyOf[length] = scatterSetWrapper;
                scatterSetWrapper2 = copyOf;
            }
            AtomicReference atomicReference = this.pendingModifications;
            while (!atomicReference.compareAndSet(obj, scatterSetWrapper2)) {
                if (atomicReference.get() != obj) {
                    break;
                }
            }
            if (obj == null) {
                synchronized (this.lock) {
                    drainPendingModificationsLocked();
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.runtime.RecomposeScopeOwner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recordReadOf(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.recordReadOf(java.lang.Object):void");
    }

    public final void recordWriteOf(Object obj) {
        synchronized (this.lock) {
            try {
                invalidateScopeOfLocked(obj);
                Object obj2 = this.derivedStates.get(obj);
                if (obj2 != null) {
                    if (obj2 instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                        Object[] objArr = mutableScatterSet.elements;
                        long[] jArr = mutableScatterSet.metadata;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i = 0;
                            while (true) {
                                long j = jArr[i];
                                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i2 = 8 - ((~(i - length)) >>> 31);
                                    for (int i3 = 0; i3 < i2; i3++) {
                                        if ((255 & j) < 128) {
                                            invalidateScopeOfLocked((DerivedSnapshotState) objArr[(i << 3) + i3]);
                                        }
                                        j >>= 8;
                                    }
                                    if (i2 != 8) {
                                        break;
                                    }
                                }
                                if (i == length) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        }
                    } else {
                        invalidateScopeOfLocked((DerivedSnapshotState) obj2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setContent(Function2 function2) {
        boolean clearDeactivated = clearDeactivated();
        ensureRunning();
        CompositionContext compositionContext = this.parent;
        if (!clearDeactivated) {
            compositionContext.composeInitial$runtime(this, function2);
            return;
        }
        GapComposer gapComposer = this.composer;
        gapComposer.reusingGroup = 0;
        gapComposer.reusing = true;
        compositionContext.composeInitial$runtime(this, function2);
        gapComposer.endReuseFromRoot$runtime();
    }

    public final void addPendingInvalidationsLocked(Object obj, boolean z) {
        Object obj2 = this.observations.get(obj);
        if (obj2 == null) {
            return;
        }
        boolean z2 = obj2 instanceof MutableScatterSet;
        InvalidationResult invalidationResult = InvalidationResult.IGNORED;
        MutableScatterSet mutableScatterSet = this.invalidatedScopes;
        MutableScatterSet mutableScatterSet2 = this.conditionallyInvalidatedScopes;
        MutableScatterMap mutableScatterMap = this.observationsProcessed;
        if (z2) {
            MutableScatterSet mutableScatterSet3 = (MutableScatterSet) obj2;
            Object[] objArr = mutableScatterSet3.elements;
            long[] jArr = mutableScatterSet3.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                            if (!OperationKt.m839removeimpl(mutableScatterMap, obj, recomposeScopeImpl) && recomposeScopeImpl.invalidateForResult(obj) != invalidationResult) {
                                if (recomposeScopeImpl.trackedDependencies != null && !z) {
                                    mutableScatterSet2.add(recomposeScopeImpl);
                                } else {
                                    mutableScatterSet.add(recomposeScopeImpl);
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        } else {
            RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj2;
            if (OperationKt.m839removeimpl(mutableScatterMap, obj, recomposeScopeImpl2) || recomposeScopeImpl2.invalidateForResult(obj) == invalidationResult) {
                return;
            }
            if (recomposeScopeImpl2.trackedDependencies != null && !z) {
                mutableScatterSet2.add(recomposeScopeImpl2);
            } else {
                mutableScatterSet.add(recomposeScopeImpl2);
            }
        }
    }
}
