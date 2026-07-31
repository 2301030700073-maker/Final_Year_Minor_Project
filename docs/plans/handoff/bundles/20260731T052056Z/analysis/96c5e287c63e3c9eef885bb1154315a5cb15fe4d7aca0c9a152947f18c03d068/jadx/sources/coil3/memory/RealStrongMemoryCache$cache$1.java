package coil3.memory;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec;
import androidx.compose.foundation.text.modifiers.SelectionController$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import coil3.memory.RealStrongMemoryCache;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache$cache$1 implements VectorizedAnimationSpec, MouseSelectionObserver {
    public final Object map;
    public long maxSize;
    public long size;
    public final Object this$0;

    public RealStrongMemoryCache$cache$1(RealStrongMemoryCache realStrongMemoryCache, long j) {
        this.this$0 = realStrongMemoryCache;
        this.map = new LinkedHashMap(0, 0.75f, true);
        this.maxSize = j;
        if (j > 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("maxSize <= 0");
        throw null;
    }

    public void entryRemoved(Object obj, Object obj2, RealStrongMemoryCache.InternalValue internalValue) {
        RealStrongMemoryCache.InternalValue internalValue2 = (RealStrongMemoryCache.InternalValue) obj2;
        ((PriorityQueue) ((RealStrongMemoryCache) this.this$0).weakMemoryCache).set((MemoryCache$Key) obj, internalValue2.image, internalValue2.extras, internalValue2.size);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return Long.MAX_VALUE;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return getVelocityFromNanos(Long.MAX_VALUE, animationVector, animationVector2, animationVector3);
    }

    public long getSize() {
        long j = this.size;
        if (j != -1) {
            return j;
        }
        long j2 = 0;
        for (Map.Entry entry : ((LinkedHashMap) this.map).entrySet()) {
            j2 += safeSizeOf(entry.getKey(), entry.getValue());
        }
        this.size = j2;
        return j2;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((VectorizedDurationBasedAnimationSpec) this.map).getValueFromNanos(repetitionPlayTimeNanos(j), animationVector, animationVector2, repetitionStartVelocity(j, animationVector, animationVector3, animationVector2));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((VectorizedDurationBasedAnimationSpec) this.map).getVelocityFromNanos(repetitionPlayTimeNanos(j), animationVector, animationVector2, repetitionStartVelocity(j, animationVector, animationVector3, animationVector2));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onDrag-3MmeM6k */
    public boolean mo221onDrag3MmeM6k(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SelectionController$$ExternalSyntheticLambda0) this.map).invoke();
        if (layoutCoordinates == null) {
            return true;
        }
        SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) this.this$0;
        long j2 = this.size;
        if (!layoutCoordinates.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrarImpl, j2)) {
            return false;
        }
        if (!selectionRegistrarImpl.m234notifySelectionUpdatenjBpvok(layoutCoordinates, j, this.maxSize, selectionAdjustment$Companion$$ExternalSyntheticLambda0, false)) {
            return true;
        }
        this.maxSize = j;
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    public void onDragDone() {
        SelectionManager$$ExternalSyntheticLambda1 selectionManager$$ExternalSyntheticLambda1 = ((SelectionRegistrarImpl) this.this$0).onSelectionUpdateEndCallback;
        if (selectionManager$$ExternalSyntheticLambda1 != null) {
            selectionManager$$ExternalSyntheticLambda1.invoke();
        }
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onExtend-k-4lQ0M */
    public boolean mo222onExtendk4lQ0M(long j) {
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SelectionController$$ExternalSyntheticLambda0) this.map).invoke();
        if (layoutCoordinates == null) {
            return false;
        }
        SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) this.this$0;
        long j2 = this.size;
        if (!layoutCoordinates.isAttached()) {
            return false;
        }
        if (selectionRegistrarImpl.m234notifySelectionUpdatenjBpvok(layoutCoordinates, j, this.maxSize, SelectionAdjustment$Companion.None, false)) {
            this.maxSize = j;
        }
        return SelectionRegistrarKt.hasSelection(selectionRegistrarImpl, j2);
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onExtendDrag-k-4lQ0M */
    public boolean mo223onExtendDragk4lQ0M(long j) {
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SelectionController$$ExternalSyntheticLambda0) this.map).invoke();
        if (layoutCoordinates == null) {
            return true;
        }
        SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) this.this$0;
        long j2 = this.size;
        if (!layoutCoordinates.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrarImpl, j2)) {
            return false;
        }
        if (!selectionRegistrarImpl.m234notifySelectionUpdatenjBpvok(layoutCoordinates, j, this.maxSize, SelectionAdjustment$Companion.None, false)) {
            return true;
        }
        this.maxSize = j;
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onStart-9KIMszo */
    public boolean mo224onStart9KIMszo(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0, int i) {
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SelectionController$$ExternalSyntheticLambda0) this.map).invoke();
        if (layoutCoordinates == null) {
            return false;
        }
        SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) this.this$0;
        long j2 = this.size;
        if (!layoutCoordinates.isAttached()) {
            return false;
        }
        FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 frameworkSQLiteDatabase$$ExternalSyntheticLambda0 = selectionRegistrarImpl.onSelectionUpdateStartCallback;
        if (frameworkSQLiteDatabase$$ExternalSyntheticLambda0 != null) {
            frameworkSQLiteDatabase$$ExternalSyntheticLambda0.invoke(Boolean.FALSE, layoutCoordinates, new Offset(j), selectionAdjustment$Companion$$ExternalSyntheticLambda0);
        }
        this.maxSize = j;
        return SelectionRegistrarKt.hasSelection(selectionRegistrarImpl, j2);
    }

    public long repetitionPlayTimeNanos(long j) {
        long j2 = this.size;
        if (j + j2 <= 0) {
            return 0L;
        }
        long j3 = j + j2;
        long j4 = this.maxSize;
        long j5 = j3 / j4;
        if (((RepeatMode) this.this$0) != RepeatMode.Restart && j5 % 2 != 0) {
            return ((j5 + 1) * j4) - j3;
        }
        Long.signum(j5);
        return j3 - (j5 * j4);
    }

    public AnimationVector repetitionStartVelocity(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j2 = this.size;
        long j3 = j + j2;
        long j4 = this.maxSize;
        return j3 > j4 ? ((VectorizedDurationBasedAnimationSpec) this.map).getVelocityFromNanos(j4 - j2, animationVector, animationVector3, animationVector2) : animationVector2;
    }

    public long safeSizeOf(Object obj, Object obj2) {
        try {
            long j = ((RealStrongMemoryCache.InternalValue) obj2).size;
            if (j >= 0) {
                return j;
            }
            throw new IllegalStateException(("sizeOf(" + obj + ", " + obj2 + ") returned a negative value: " + j).toString());
        } catch (Exception e) {
            this.size = -1L;
            throw e;
        }
    }

    public void trimToSize(long j) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.map;
        while (getSize() > j) {
            if (linkedHashMap.isEmpty()) {
                if (getSize() == 0) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("sizeOf() is returning inconsistent values");
                return;
            } else {
                Map.Entry entry = (Map.Entry) CollectionsKt.first(linkedHashMap.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.remove(key);
                this.size = getSize() - safeSizeOf(key, value);
                entryRemoved(key, value, null);
            }
        }
    }

    public RealStrongMemoryCache$cache$1(SelectionController$$ExternalSyntheticLambda0 selectionController$$ExternalSyntheticLambda0, SelectionRegistrarImpl selectionRegistrarImpl, long j) {
        this.map = selectionController$$ExternalSyntheticLambda0;
        this.this$0 = selectionRegistrarImpl;
        this.size = j;
        this.maxSize = 0L;
    }

    public RealStrongMemoryCache$cache$1(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode) {
        this.map = vectorizedDurationBasedAnimationSpec;
        this.this$0 = repeatMode;
        this.maxSize = (vectorizedDurationBasedAnimationSpec.getDurationMillis() + vectorizedDurationBasedAnimationSpec.getDelayMillis()) * 1000000;
        this.size = 0L;
    }
}
