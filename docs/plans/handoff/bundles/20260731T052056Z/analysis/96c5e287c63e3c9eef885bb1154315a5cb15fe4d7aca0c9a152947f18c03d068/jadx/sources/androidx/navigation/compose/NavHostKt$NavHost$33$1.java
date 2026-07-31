package androidx.navigation.compose;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavHostKt$NavHost$33$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ NavBackStackEntry $backStackEntry;
    public final /* synthetic */ ComposeNavigator $composeNavigator;
    public final /* synthetic */ NavHostController $navController;
    public final /* synthetic */ Transition $transition;
    public final /* synthetic */ State $visibleEntries$delegate;
    public final /* synthetic */ MutableObjectFloatMap $zIndices;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$33$1(Transition transition, NavHostController navHostController, NavBackStackEntry navBackStackEntry, MutableObjectFloatMap mutableObjectFloatMap, State state, ComposeNavigator composeNavigator, Continuation continuation) {
        super(2, continuation);
        this.$transition = transition;
        this.$navController = navHostController;
        this.$backStackEntry = navBackStackEntry;
        this.$zIndices = mutableObjectFloatMap;
        this.$visibleEntries$delegate = state;
        this.$composeNavigator = composeNavigator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavHostKt$NavHost$33$1(this.$transition, this.$navController, this.$backStackEntry, this.$zIndices, this.$visibleEntries$delegate, this.$composeNavigator, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        NavHostKt$NavHost$33$1 navHostKt$NavHost$33$1 = (NavHostKt$NavHost$33$1) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        navHostKt$NavHost$33$1.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        Transition transition = this.$transition;
        Object currentState = transition.transitionState.getCurrentState();
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
        if (Intrinsics.areEqual(currentState, parcelableSnapshotMutableState.getValue()) && (((NavBackStackEntry) this.$navController.impl.backQueue.lastOrNull()) == null || Intrinsics.areEqual(parcelableSnapshotMutableState.getValue(), this.$backStackEntry))) {
            Iterator it = ((List) this.$visibleEntries$delegate.getValue()).iterator();
            while (it.hasNext()) {
                this.$composeNavigator.getState().markTransitionComplete((NavBackStackEntry) it.next());
            }
            MutableObjectFloatMap mutableObjectFloatMap = this.$zIndices;
            long[] jArr = mutableObjectFloatMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((j & 255) < 128) {
                                int i4 = (i << 3) + i3;
                                Object obj2 = mutableObjectFloatMap.keys[i4];
                                float f = mutableObjectFloatMap.values[i4];
                                if (!Intrinsics.areEqual((String) obj2, ((NavBackStackEntry) parcelableSnapshotMutableState.getValue()).id)) {
                                    mutableObjectFloatMap._size--;
                                    long[] jArr2 = mutableObjectFloatMap.metadata;
                                    int i5 = mutableObjectFloatMap._capacity;
                                    int i6 = i4 >> 3;
                                    int i7 = (i4 & 7) << 3;
                                    long j2 = (jArr2[i6] & (~(255 << i7))) | (254 << i7);
                                    jArr2[i6] = j2;
                                    jArr2[(((i4 - 7) & i5) + (i5 & 7)) >> 3] = j2;
                                    mutableObjectFloatMap.keys[i4] = null;
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
        return Unit.INSTANCE;
    }
}
