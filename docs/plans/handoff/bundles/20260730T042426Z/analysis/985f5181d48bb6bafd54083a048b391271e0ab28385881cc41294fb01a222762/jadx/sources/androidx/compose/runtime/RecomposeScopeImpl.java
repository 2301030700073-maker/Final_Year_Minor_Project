package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterSet;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecomposeScopeImpl.kt */
/* loaded from: classes.dex */
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope {
    private Anchor anchor;
    private Function2 block;
    private int currentToken;
    private int flags;
    private RecomposeScopeOwner owner;
    private MutableScatterMap trackedDependencies;
    private MutableObjectIntMap trackedInstances;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public RecomposeScopeImpl(RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final Anchor getAnchor() {
        return this.anchor;
    }

    public final void setAnchor(Anchor anchor) {
        this.anchor = anchor;
    }

    public final boolean getValid() {
        if (this.owner == null) {
            return false;
        }
        Anchor anchor = this.anchor;
        return anchor != null ? anchor.getValid() : false;
    }

    public final boolean getCanRecompose() {
        return this.block != null;
    }

    public final boolean getUsed() {
        return (this.flags & 1) != 0;
    }

    public final void setUsed(boolean z) {
        if (z) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
    }

    public final boolean getDefaultsInScope() {
        return (this.flags & 2) != 0;
    }

    public final void setDefaultsInScope(boolean z) {
        if (z) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public final boolean getDefaultsInvalid() {
        return (this.flags & 4) != 0;
    }

    public final void setDefaultsInvalid(boolean z) {
        if (z) {
            this.flags |= 4;
        } else {
            this.flags &= -5;
        }
    }

    public final boolean getRequiresRecompose() {
        return (this.flags & 8) != 0;
    }

    public final void setRequiresRecompose(boolean z) {
        if (z) {
            this.flags |= 8;
        } else {
            this.flags &= -9;
        }
    }

    public final void compose(Composer composer) {
        Unit unit;
        Function2 function2 = this.block;
        if (function2 != null) {
            function2.invoke(composer, 1);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new IllegalStateException("Invalid restart scope");
        }
    }

    public final InvalidationResult invalidateForResult(Object obj) {
        InvalidationResult invalidate;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        return (recomposeScopeOwner == null || (invalidate = recomposeScopeOwner.invalidate(this, obj)) == null) ? InvalidationResult.IGNORED : invalidate;
    }

    public final void release() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.recomposeScopeReleased(this);
        }
        this.owner = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
    }

    public final void adoptedBy(RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public void invalidate() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.invalidate(this, null);
        }
    }

    @Override // androidx.compose.runtime.ScopeUpdateScope
    public void updateScope(Function2 function2) {
        this.block = function2;
    }

    private final boolean getRereading() {
        return (this.flags & 32) != 0;
    }

    private final void setRereading(boolean z) {
        if (z) {
            this.flags |= 32;
        } else {
            this.flags &= -33;
        }
    }

    public final boolean getForcedRecompose() {
        return (this.flags & 64) != 0;
    }

    public final void setForcedRecompose(boolean z) {
        if (z) {
            this.flags |= 64;
        } else {
            this.flags &= -65;
        }
    }

    public final boolean getSkipped$runtime_release() {
        return (this.flags & 16) != 0;
    }

    private final void setSkipped(boolean z) {
        if (z) {
            this.flags |= 16;
        } else {
            this.flags &= -17;
        }
    }

    public final void start(int i) {
        this.currentToken = i;
        setSkipped(false);
    }

    public final void scopeSkipped() {
        setSkipped(true);
    }

    public final boolean recordRead(Object obj) {
        if (getRereading()) {
            return false;
        }
        MutableObjectIntMap mutableObjectIntMap = this.trackedInstances;
        if (mutableObjectIntMap == null) {
            mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
            this.trackedInstances = mutableObjectIntMap;
        }
        return mutableObjectIntMap.put(obj, this.currentToken, -1) == this.currentToken;
    }

    public final void recordDerivedStateValue(DerivedState derivedState, Object obj) {
        MutableScatterMap mutableScatterMap = this.trackedDependencies;
        if (mutableScatterMap == null) {
            mutableScatterMap = new MutableScatterMap(0, 1, null);
            this.trackedDependencies = mutableScatterMap;
        }
        mutableScatterMap.set(derivedState, obj);
    }

    public final boolean isConditional() {
        return this.trackedDependencies != null;
    }

    public final boolean isInvalidFor(Object obj) {
        MutableScatterMap mutableScatterMap;
        if (obj == null || (mutableScatterMap = this.trackedDependencies) == null) {
            return true;
        }
        if (obj instanceof DerivedState) {
            return checkDerivedStateChanged((DerivedState) obj, mutableScatterMap);
        }
        if (!(obj instanceof ScatterSet)) {
            return true;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.isNotEmpty()) {
            Object[] objArr = scatterSet.elements;
            long[] jArr = scatterSet.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                Object obj2 = objArr[(i << 3) + i3];
                                if (!(obj2 instanceof DerivedState) || checkDerivedStateChanged((DerivedState) obj2, mutableScatterMap)) {
                                    return true;
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return false;
    }

    private final boolean checkDerivedStateChanged(DerivedState derivedState, MutableScatterMap mutableScatterMap) {
        Intrinsics.checkNotNull(derivedState, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
        SnapshotMutationPolicy policy = derivedState.getPolicy();
        if (policy == null) {
            policy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return !policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), mutableScatterMap.get(derivedState));
    }

    public final void rereadTrackedInstances() {
        MutableObjectIntMap mutableObjectIntMap;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner == null || (mutableObjectIntMap = this.trackedInstances) == null) {
            return;
        }
        setRereading(true);
        try {
            Object[] objArr = mutableObjectIntMap.keys;
            int[] iArr = mutableObjectIntMap.values;
            long[] jArr = mutableObjectIntMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                int i4 = (i << 3) + i3;
                                Object obj = objArr[i4];
                                int i5 = iArr[i4];
                                recomposeScopeOwner.recordReadOf(obj);
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
        } finally {
            setRereading(false);
        }
    }

    public final Function1 end(final int i) {
        final MutableObjectIntMap mutableObjectIntMap = this.trackedInstances;
        if (mutableObjectIntMap == null || getSkipped$runtime_release()) {
            return null;
        }
        Object[] objArr = mutableObjectIntMap.keys;
        int[] iArr = mutableObjectIntMap.values;
        long[] jArr = mutableObjectIntMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return null;
        }
        int i2 = 0;
        while (true) {
            long j = jArr[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj = objArr[i5];
                        if (iArr[i5] != i) {
                            return new Function1() { // from class: androidx.compose.runtime.RecomposeScopeImpl$end$1$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                    invoke((Composition) obj2);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composition composition) {
                                    int i6;
                                    MutableObjectIntMap mutableObjectIntMap2;
                                    int i7;
                                    MutableScatterMap mutableScatterMap;
                                    i6 = RecomposeScopeImpl.this.currentToken;
                                    if (i6 != i) {
                                        return;
                                    }
                                    MutableObjectIntMap mutableObjectIntMap3 = mutableObjectIntMap;
                                    mutableObjectIntMap2 = RecomposeScopeImpl.this.trackedInstances;
                                    if (!Intrinsics.areEqual(mutableObjectIntMap3, mutableObjectIntMap2) || !(composition instanceof CompositionImpl)) {
                                        return;
                                    }
                                    MutableObjectIntMap mutableObjectIntMap4 = mutableObjectIntMap;
                                    int i8 = i;
                                    RecomposeScopeImpl recomposeScopeImpl = RecomposeScopeImpl.this;
                                    long[] jArr2 = mutableObjectIntMap4.metadata;
                                    int length2 = jArr2.length - 2;
                                    if (length2 < 0) {
                                        return;
                                    }
                                    int i9 = 0;
                                    while (true) {
                                        long j2 = jArr2[i9];
                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i10 = 8;
                                            int i11 = 8 - ((~(i9 - length2)) >>> 31);
                                            int i12 = 0;
                                            while (i12 < i11) {
                                                if ((255 & j2) < 128) {
                                                    int i13 = (i9 << 3) + i12;
                                                    Object obj2 = mutableObjectIntMap4.keys[i13];
                                                    boolean z = mutableObjectIntMap4.values[i13] != i8;
                                                    if (z) {
                                                        CompositionImpl compositionImpl = (CompositionImpl) composition;
                                                        compositionImpl.removeObservation$runtime_release(obj2, recomposeScopeImpl);
                                                        if (obj2 instanceof DerivedState) {
                                                            compositionImpl.removeDerivedStateObservation$runtime_release((DerivedState) obj2);
                                                            mutableScatterMap = recomposeScopeImpl.trackedDependencies;
                                                            if (mutableScatterMap != null) {
                                                                mutableScatterMap.remove(obj2);
                                                            }
                                                        }
                                                    }
                                                    if (z) {
                                                        mutableObjectIntMap4.removeValueAt(i13);
                                                    }
                                                    i7 = 8;
                                                } else {
                                                    i7 = i10;
                                                }
                                                j2 >>= i7;
                                                i12++;
                                                i10 = i7;
                                            }
                                            if (i11 != i10) {
                                                return;
                                            }
                                        }
                                        if (i9 == length2) {
                                            return;
                                        } else {
                                            i9++;
                                        }
                                    }
                                }
                            };
                        }
                    }
                    j >>= 8;
                }
                if (i3 != 8) {
                    return null;
                }
            }
            if (i2 == length) {
                return null;
            }
            i2++;
        }
    }

    /* compiled from: RecomposeScopeImpl.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void adoptAnchoredScopes$runtime_release(SlotWriter slotWriter, List list, RecomposeScopeOwner recomposeScopeOwner) {
            if (list.isEmpty()) {
                return;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object slot = slotWriter.slot((Anchor) list.get(i), 0);
                RecomposeScopeImpl recomposeScopeImpl = slot instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) slot : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.adoptedBy(recomposeScopeOwner);
                }
            }
        }
    }
}
