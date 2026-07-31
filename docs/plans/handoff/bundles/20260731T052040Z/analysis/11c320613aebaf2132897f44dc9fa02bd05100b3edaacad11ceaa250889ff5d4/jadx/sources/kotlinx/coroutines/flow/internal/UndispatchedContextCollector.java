package kotlinx.coroutines.flow.internal;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.ProduceStateScope;
import androidx.compose.runtime.ProduceStateScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.navigation3.scene.Scene;
import androidx.navigation3.ui.AnimatedSceneKey;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UndispatchedContextCollector implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final Object countOrElement;
    public final Object emitContext;
    public final Object emitRef;

    public UndispatchedContextCollector(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        this.$r8$classId = 0;
        this.emitContext = coroutineContext;
        this.countOrElement = InlineList.threadContextElements(coroutineContext);
        this.emitRef = new UndispatchedContextCollector$emitRef$1(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        char c;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.emitRef;
        Object obj3 = this.countOrElement;
        Object obj4 = this.emitContext;
        switch (i) {
            case 0:
                Object withContextUndispatched = ChannelFlowKt.withContextUndispatched((CoroutineContext) obj4, obj, obj3, (UndispatchedContextCollector$emitRef$1) obj2, continuation);
                if (withContextUndispatched == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    break;
                }
                break;
            case 1:
                Transition transition = (Transition) obj3;
                ((ProduceStateScopeImpl) ((ProduceStateScope) obj4)).setValue(Boolean.valueOf(((Boolean) obj).booleanValue() ? ((Boolean) ((Function2) ((State) obj2).getValue()).invoke(transition.transitionState.getCurrentState(), transition.targetState$delegate.getValue())).booleanValue() : false));
                break;
            default:
                ((Boolean) obj).getClass();
                AnimatedSceneKey animatedSceneKey = new AnimatedSceneKey((Scene) ((Transition) obj4).targetState$delegate.getValue());
                SnapshotStateMap snapshotStateMap = (SnapshotStateMap) obj3;
                for (AnimatedSceneKey animatedSceneKey2 : CollectionsKt.toList(snapshotStateMap.keys)) {
                    if (!Intrinsics.areEqual(animatedSceneKey2, animatedSceneKey)) {
                        snapshotStateMap.remove(animatedSceneKey2);
                    }
                }
                MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) obj2;
                long[] jArr = mutableObjectFloatMap.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        char c2 = 7;
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            int i4 = 0;
                            while (i4 < i3) {
                                if ((j & 255) < 128) {
                                    int i5 = (i2 << 3) + i4;
                                    Object obj5 = mutableObjectFloatMap.keys[i5];
                                    c = c2;
                                    float f = mutableObjectFloatMap.values[i5];
                                    if (!Intrinsics.areEqual((AnimatedSceneKey) obj5, animatedSceneKey)) {
                                        mutableObjectFloatMap._size--;
                                        long[] jArr2 = mutableObjectFloatMap.metadata;
                                        int i6 = mutableObjectFloatMap._capacity;
                                        int i7 = i5 >> 3;
                                        int i8 = (i5 & 7) << 3;
                                        long j2 = (jArr2[i7] & (~(255 << i8))) | (254 << i8);
                                        jArr2[i7] = j2;
                                        jArr2[(((i5 - 7) & i6) + (i6 & 7)) >> 3] = j2;
                                        mutableObjectFloatMap.keys[i5] = null;
                                    }
                                } else {
                                    c = c2;
                                }
                                j >>= 8;
                                i4++;
                                c2 = c;
                            }
                            if (i3 != 8) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ UndispatchedContextCollector(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.emitContext = obj;
        this.countOrElement = obj2;
        this.emitRef = obj3;
    }
}
