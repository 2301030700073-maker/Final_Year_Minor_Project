package androidx.compose.foundation;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.VerticalScrollLayoutModifier;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.work.OperationKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScrollNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ScrollNode$$ExternalSyntheticLambda0(VerticalScrollLayoutModifier verticalScrollLayoutModifier, Placeable placeable, int i) {
        this.$r8$classId = 1;
        this.f$0 = verticalScrollLayoutModifier;
        this.f$2 = placeable;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Composition composition;
        Unit unit;
        Composition composition2;
        Unit unit2;
        int i;
        int i2 = this.$r8$classId;
        Unit unit3 = Unit.INSTANCE;
        Object obj2 = this.f$2;
        int i3 = this.f$1;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                ScrollNode scrollNode = (ScrollNode) obj3;
                Placeable placeable = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int intValue = scrollNode.state.value$delegate.getIntValue();
                if (intValue < 0) {
                    intValue = 0;
                }
                if (intValue <= i3) {
                    i3 = intValue;
                }
                int i4 = -i3;
                boolean z = scrollNode.isVertical;
                int i5 = z ? 0 : i4;
                if (!z) {
                    i4 = 0;
                }
                placementScope.motionFrameOfReferencePlacement = true;
                Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, i5, i4);
                placementScope.motionFrameOfReferencePlacement = false;
                break;
            case 1:
                VerticalScrollLayoutModifier verticalScrollLayoutModifier = (VerticalScrollLayoutModifier) obj3;
                Placeable placeable2 = (Placeable) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int i6 = verticalScrollLayoutModifier.cursorOffset;
                TextFieldScrollerPosition textFieldScrollerPosition = verticalScrollLayoutModifier.scrollerPosition;
                TransformedText transformedText = verticalScrollLayoutModifier.transformedText;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) verticalScrollLayoutModifier.textLayoutResultProvider.invoke();
                textFieldScrollerPosition.update(Orientation.Vertical, BasicTextKt.access$getCursorRectInScroller(placementScope2, i6, transformedText, textLayoutResultProxy != null ? textLayoutResultProxy.value : null, false, placeable2.width), i3, placeable2.height);
                Placeable.PlacementScope.placeRelative$default(placementScope2, placeable2, 0, Math.round(-textFieldScrollerPosition.offset$delegate.getFloatValue()));
                break;
            default:
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                Composition composition3 = (Composition) obj;
                if (recomposeScopeImpl.currentToken == i3 && Intrinsics.areEqual(mutableObjectIntMap, recomposeScopeImpl.trackedInstances) && (composition3 instanceof CompositionImpl)) {
                    long[] jArr = mutableObjectIntMap.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i7 = 0;
                        while (true) {
                            long j = jArr[i7];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i8 = 8;
                                int i9 = 8 - ((~(i7 - length)) >>> 31);
                                int i10 = 0;
                                while (i10 < i9) {
                                    if ((255 & j) < 128) {
                                        int i11 = (i7 << 3) + i10;
                                        Object obj4 = mutableObjectIntMap.keys[i11];
                                        boolean z2 = mutableObjectIntMap.values[i11] != i3;
                                        if (z2) {
                                            i = i8;
                                            CompositionImpl compositionImpl = (CompositionImpl) composition3;
                                            composition2 = composition3;
                                            MutableScatterMap mutableScatterMap = compositionImpl.observations;
                                            OperationKt.m839removeimpl(mutableScatterMap, obj4, recomposeScopeImpl);
                                            unit2 = unit3;
                                            if (obj4 instanceof DerivedSnapshotState) {
                                                DerivedSnapshotState derivedSnapshotState = (DerivedSnapshotState) obj4;
                                                if (!mutableScatterMap.containsKey(derivedSnapshotState)) {
                                                    OperationKt.m840removeScopeimpl(compositionImpl.derivedStates, derivedSnapshotState);
                                                }
                                                MutableScatterMap mutableScatterMap2 = recomposeScopeImpl.trackedDependencies;
                                                if (mutableScatterMap2 != null) {
                                                    mutableScatterMap2.remove(obj4);
                                                }
                                            }
                                        } else {
                                            composition2 = composition3;
                                            unit2 = unit3;
                                            i = i8;
                                        }
                                        if (z2) {
                                            mutableObjectIntMap.removeValueAt(i11);
                                        }
                                    } else {
                                        composition2 = composition3;
                                        unit2 = unit3;
                                        i = i8;
                                    }
                                    j >>= i;
                                    i10++;
                                    i8 = i;
                                    composition3 = composition2;
                                    unit3 = unit2;
                                }
                                composition = composition3;
                                unit = unit3;
                                if (i9 != i8) {
                                    break;
                                }
                            } else {
                                composition = composition3;
                                unit = unit3;
                            }
                            if (i7 == length) {
                                break;
                            } else {
                                i7++;
                                composition3 = composition;
                                unit3 = unit;
                            }
                        }
                    }
                }
                break;
        }
        return unit3;
    }

    public /* synthetic */ ScrollNode$$ExternalSyntheticLambda0(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
    }
}
