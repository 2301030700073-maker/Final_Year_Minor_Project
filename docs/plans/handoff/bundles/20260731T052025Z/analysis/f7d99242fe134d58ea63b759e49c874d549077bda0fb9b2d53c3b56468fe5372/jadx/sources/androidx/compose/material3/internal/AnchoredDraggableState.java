package androidx.compose.material3.internal;

import androidx.cardview.widget.CardView;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnchoredDraggableState {
    public final AnchoredDraggableState$anchoredDragScope$1 anchoredDragScope;
    public final ParcelableSnapshotMutableState anchors$delegate;
    public final ImageLoader$Builder$$ExternalSyntheticLambda1 animationSpec;
    public final Function1 confirmValueChange;
    public final ParcelableSnapshotMutableState currentValue$delegate;
    public final ParcelableSnapshotMutableState dragTarget$delegate;
    public final ParcelableSnapshotMutableFloatState lastVelocity$delegate;
    public final AppBarKt$$ExternalSyntheticLambda0 positionalThreshold;
    public final Function0 velocityThreshold;
    public final InternalMutatorMutex dragMutex = new InternalMutatorMutex();
    public final CardView.AnonymousClass1 draggableState = new CardView.AnonymousClass1(this);
    public final DerivedSnapshotState targetValue$delegate = Updater.derivedStateOf(new AnchoredDraggableState$$ExternalSyntheticLambda0(this, 0));
    public final DerivedSnapshotState closestValue$delegate = Updater.derivedStateOf(new AnchoredDraggableState$$ExternalSyntheticLambda0(this, 1));
    public final ParcelableSnapshotMutableFloatState offset$delegate = new ParcelableSnapshotMutableFloatState(Float.NaN);

    public AnchoredDraggableState(SheetValue sheetValue, AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0, Function0 function0, ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1, Function1 function1) {
        this.positionalThreshold = appBarKt$$ExternalSyntheticLambda0;
        this.velocityThreshold = function0;
        this.animationSpec = imageLoader$Builder$$ExternalSyntheticLambda1;
        this.confirmValueChange = function1;
        this.currentValue$delegate = Updater.mutableStateOf$default(sheetValue);
        Updater.derivedStateOf(NeverEqualPolicy.INSTANCE$3, new AnchoredDraggableState$$ExternalSyntheticLambda0(this, 2));
        this.lastVelocity$delegate = new ParcelableSnapshotMutableFloatState(0.0f);
        this.dragTarget$delegate = Updater.mutableStateOf$default(null);
        this.anchors$delegate = Updater.mutableStateOf$default(new MapDraggableAnchors(EmptyMap.INSTANCE));
        this.anchoredDragScope = new AnchoredDraggableState$anchoredDragScope$1(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object anchoredDrag(java.lang.Object r18, androidx.compose.foundation.MutatePriority r19, kotlin.jvm.functions.Function4 r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            r17 = this;
            r1 = r17
            r0 = r21
            boolean r2 = r0 instanceof androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3
            if (r2 == 0) goto L18
            r2 = r0
            androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3 r2 = (androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.label = r3
        L16:
            r6 = r2
            goto L1e
        L18:
            androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3 r2 = new androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3
            r2.<init>(r1, r0)
            goto L16
        L1e:
            java.lang.Object r0 = r6.result
            int r2 = r6.label
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r7 = r1.offset$delegate
            kotlin.jvm.functions.Function1 r8 = r1.confirmValueChange
            r9 = 1056964608(0x3f000000, float:0.5)
            r10 = 1
            r15 = 0
            if (r2 == 0) goto L3c
            if (r2 != r10) goto L35
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L32
            goto L70
        L32:
            r0 = move-exception
            goto La8
        L35:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            r0 = 0
            return r0
        L3c:
            kotlin.ResultKt.throwOnFailure(r0)
            androidx.compose.material3.internal.MapDraggableAnchors r0 = r1.getAnchors()
            java.util.Map r0 = r0.anchors
            r2 = r18
            boolean r0 = r0.containsKey(r2)
            if (r0 == 0) goto Lde
            androidx.compose.material3.internal.InternalMutatorMutex r13 = r1.dragMutex     // Catch: java.lang.Throwable -> L32
            androidx.compose.material3.TooltipStateImpl$show$2 r14 = new androidx.compose.material3.TooltipStateImpl$show$2     // Catch: java.lang.Throwable -> L32
            r5 = 3
            r3 = r20
            r0 = r14
            r4 = r15
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La6
            r6.label = r10     // Catch: java.lang.Throwable -> L32
            r13.getClass()     // Catch: java.lang.Throwable -> L32
            androidx.compose.foundation.MutatorMutex$mutate$2 r11 = new androidx.compose.foundation.MutatorMutex$mutate$2     // Catch: java.lang.Throwable -> L32
            r16 = 1
            r12 = r19
            r11.<init>(r12, r13, r14, r15, r16)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = kotlinx.coroutines.JobKt.coroutineScope(r11, r6)     // Catch: java.lang.Throwable -> L32
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r2) goto L70
            return r2
        L70:
            r1.setDragTarget(r15)
            androidx.compose.material3.internal.MapDraggableAnchors r0 = r1.getAnchors()
            float r2 = r7.getFloatValue()
            java.lang.Object r0 = r0.closestAnchor(r2)
            if (r0 == 0) goto Le1
            float r2 = r7.getFloatValue()
            androidx.compose.material3.internal.MapDraggableAnchors r3 = r1.getAnchors()
            float r3 = r3.positionOf(r0)
            float r2 = r2 - r3
            float r2 = java.lang.Math.abs(r2)
            int r2 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
            if (r2 > 0) goto Le1
            java.lang.Object r2 = r8.invoke(r0)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto Le1
            r1.setCurrentValue(r0)
            goto Le1
        La6:
            r0 = move-exception
            r15 = r4
        La8:
            r1.setDragTarget(r15)
            androidx.compose.material3.internal.MapDraggableAnchors r2 = r1.getAnchors()
            float r3 = r7.getFloatValue()
            java.lang.Object r2 = r2.closestAnchor(r3)
            if (r2 == 0) goto Ldd
            float r3 = r7.getFloatValue()
            androidx.compose.material3.internal.MapDraggableAnchors r4 = r1.getAnchors()
            float r4 = r4.positionOf(r2)
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            int r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r3 > 0) goto Ldd
            java.lang.Object r3 = r8.invoke(r2)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto Ldd
            r1.setCurrentValue(r2)
        Ldd:
            throw r0
        Lde:
            r17.setCurrentValue(r18)
        Le1:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.AnchoredDraggableState.anchoredDrag(java.lang.Object, androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function4, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final Object computeTarget(float f, float f2, Object obj) {
        MapDraggableAnchors anchors = getAnchors();
        float positionOf = anchors.positionOf(obj);
        float floatValue = ((Number) this.velocityThreshold.invoke()).floatValue();
        if (positionOf != f && !Float.isNaN(positionOf)) {
            AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0 = this.positionalThreshold;
            if (positionOf < f) {
                if (f2 >= floatValue) {
                    Object closestAnchor = anchors.closestAnchor(f, true);
                    closestAnchor.getClass();
                    return closestAnchor;
                }
                Object closestAnchor2 = anchors.closestAnchor(f, true);
                closestAnchor2.getClass();
                if (f >= Math.abs(Math.abs(((Number) appBarKt$$ExternalSyntheticLambda0.invoke(Float.valueOf(Math.abs(anchors.positionOf(closestAnchor2) - positionOf)))).floatValue()) + positionOf)) {
                    return closestAnchor2;
                }
            } else {
                if (f2 <= (-floatValue)) {
                    Object closestAnchor3 = anchors.closestAnchor(f, false);
                    closestAnchor3.getClass();
                    return closestAnchor3;
                }
                Object closestAnchor4 = anchors.closestAnchor(f, false);
                closestAnchor4.getClass();
                float abs = Math.abs(positionOf - Math.abs(((Number) appBarKt$$ExternalSyntheticLambda0.invoke(Float.valueOf(Math.abs(positionOf - anchors.positionOf(closestAnchor4))))).floatValue()));
                if (f >= 0.0f ? f <= abs : Math.abs(f) >= abs) {
                    return closestAnchor4;
                }
            }
        }
        return obj;
    }

    public final MapDraggableAnchors getAnchors() {
        return (MapDraggableAnchors) this.anchors$delegate.getValue();
    }

    public final float newOffsetForDelta$material3(float f) {
        Float valueOf;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.offset$delegate;
        float floatValue = (Float.isNaN(parcelableSnapshotMutableFloatState.getFloatValue()) ? 0.0f : parcelableSnapshotMutableFloatState.getFloatValue()) + f;
        float minAnchor = getAnchors().minAnchor();
        Collection values = getAnchors().anchors.values();
        values.getClass();
        Iterator it = values.iterator();
        if (it.hasNext()) {
            float floatValue2 = ((Number) it.next()).floatValue();
            while (it.hasNext()) {
                floatValue2 = Math.max(floatValue2, ((Number) it.next()).floatValue());
            }
            valueOf = Float.valueOf(floatValue2);
        } else {
            valueOf = null;
        }
        return RangesKt.coerceIn(floatValue, minAnchor, valueOf != null ? valueOf.floatValue() : Float.NaN);
    }

    public final float requireOffset() {
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.offset$delegate;
        if (!Float.isNaN(parcelableSnapshotMutableFloatState.getFloatValue())) {
            return parcelableSnapshotMutableFloatState.getFloatValue();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        return 0.0f;
    }

    public final void setCurrentValue(Object obj) {
        this.currentValue$delegate.setValue(obj);
    }

    public final void setDragTarget(Object obj) {
        this.dragTarget$delegate.setValue(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object anchoredDrag(androidx.compose.foundation.MutatePriority r12, androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3 r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1 r0 = (androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1 r0 = new androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1
            r0.<init>(r11, r14)
        L18:
            java.lang.Object r14 = r0.result
            int r1 = r0.label
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r2 = r11.offset$delegate
            kotlin.jvm.functions.Function1 r3 = r11.confirmValueChange
            r4 = 1056964608(0x3f000000, float:0.5)
            r5 = 1
            if (r1 == 0) goto L35
            if (r1 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L2b
            goto L56
        L2b:
            r0 = move-exception
            r12 = r0
            goto L8b
        L2e:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r11)
            r11 = 0
            return r11
        L35:
            kotlin.ResultKt.throwOnFailure(r14)
            androidx.compose.material3.internal.InternalMutatorMutex r7 = r11.dragMutex     // Catch: java.lang.Throwable -> L2b
            androidx.datastore.core.FileReadScope$readData$2 r8 = new androidx.datastore.core.FileReadScope$readData$2     // Catch: java.lang.Throwable -> L2b
            r14 = 5
            r9 = 0
            r8.<init>(r11, r13, r9, r14)     // Catch: java.lang.Throwable -> L2b
            r0.label = r5     // Catch: java.lang.Throwable -> L2b
            r7.getClass()     // Catch: java.lang.Throwable -> L2b
            androidx.compose.foundation.MutatorMutex$mutate$2 r5 = new androidx.compose.foundation.MutatorMutex$mutate$2     // Catch: java.lang.Throwable -> L2b
            r10 = 1
            r6 = r12
            r5.<init>(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r12 = kotlinx.coroutines.JobKt.coroutineScope(r5, r0)     // Catch: java.lang.Throwable -> L2b
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r12 != r13) goto L56
            return r13
        L56:
            androidx.compose.material3.internal.MapDraggableAnchors r12 = r11.getAnchors()
            float r13 = r2.getFloatValue()
            java.lang.Object r12 = r12.closestAnchor(r13)
            if (r12 == 0) goto L88
            float r13 = r2.getFloatValue()
            androidx.compose.material3.internal.MapDraggableAnchors r14 = r11.getAnchors()
            float r14 = r14.positionOf(r12)
            float r13 = r13 - r14
            float r13 = java.lang.Math.abs(r13)
            int r13 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r13 > 0) goto L88
            java.lang.Object r13 = r3.invoke(r12)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto L88
            r11.setCurrentValue(r12)
        L88:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L8b:
            androidx.compose.material3.internal.MapDraggableAnchors r13 = r11.getAnchors()
            float r14 = r2.getFloatValue()
            java.lang.Object r13 = r13.closestAnchor(r14)
            if (r13 == 0) goto Lbd
            float r14 = r2.getFloatValue()
            androidx.compose.material3.internal.MapDraggableAnchors r0 = r11.getAnchors()
            float r0 = r0.positionOf(r13)
            float r14 = r14 - r0
            float r14 = java.lang.Math.abs(r14)
            int r14 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r14 > 0) goto Lbd
            java.lang.Object r14 = r3.invoke(r13)
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            if (r14 == 0) goto Lbd
            r11.setCurrentValue(r13)
        Lbd:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.AnchoredDraggableState.anchoredDrag(androidx.compose.foundation.MutatePriority, androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
