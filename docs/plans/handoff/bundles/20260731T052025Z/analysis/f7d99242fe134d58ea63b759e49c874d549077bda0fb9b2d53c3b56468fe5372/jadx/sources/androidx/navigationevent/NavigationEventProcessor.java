package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArrayDeque;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavigationEventProcessor {
    public final StateFlowImpl _history;
    public final StateFlowImpl _transitionState = FlowKt.MutableStateFlow(NavigationEventTransitionState$Idle.INSTANCE);
    public final ArrayDeque defaultHandlers;
    public final MutableOrderedScatterSet defaultInputs;
    public boolean hasEnabledAnyHandlers;
    public boolean hasEnabledDefaultHandlers;
    public boolean hasEnabledOverlayHandlers;
    public final ReadonlyStateFlow history;
    public int inProgressDirection;
    public NavigationEventHandler inProgressHandler;
    public NavigationEventInput inProgressInput;
    public final ArrayDeque overlayHandlers;
    public final MutableOrderedScatterSet overlayInputs;
    public final MutableOrderedScatterSet unspecifiedInputs;

    public NavigationEventProcessor() {
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(new NavigationEventHistory());
        this._history = MutableStateFlow;
        this.history = FlowKt.asStateFlow(MutableStateFlow);
        this.overlayHandlers = new ArrayDeque();
        this.defaultHandlers = new ArrayDeque();
        this.unspecifiedInputs = OrderedScatterSetKt.mutableOrderedScatterSetOf();
        this.defaultInputs = OrderedScatterSetKt.mutableOrderedScatterSetOf();
        this.overlayInputs = OrderedScatterSetKt.mutableOrderedScatterSetOf();
    }

    public final void addInput(Dispatcher dispatcher, NavigationEventInput navigationEventInput, int i) {
        dispatcher.getClass();
        if (navigationEventInput.dispatcher == null) {
            (i != 0 ? i != 1 ? this.unspecifiedInputs : this.defaultInputs : this.overlayInputs).plusAssign(navigationEventInput);
            navigationEventInput.dispatcher = dispatcher;
            ((NavigationEventHistory) this.history.$$delegate_0.getValue()).getClass();
            navigationEventInput.onHasEnabledHandlersChanged(i != 0 ? i != 1 ? this.hasEnabledAnyHandlers : this.hasEnabledDefaultHandlers : this.hasEnabledOverlayHandlers);
            return;
        }
        StringBuilder sb = new StringBuilder("Input '");
        sb.append(navigationEventInput);
        Dispatcher dispatcher2 = navigationEventInput.dispatcher;
        sb.append("' is already added to dispatcher ");
        sb.append(dispatcher2);
        sb.append('.');
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public final void refreshEnabledHandlers() {
        boolean z;
        boolean z2;
        long j;
        NavigationEventHistory navigationEventHistory;
        ArrayDeque arrayDeque = this.overlayHandlers;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((NavigationEventHandler) it.next()).isBackEnabled) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        ArrayDeque arrayDeque2 = this.defaultHandlers;
        if (arrayDeque2 == null || !arrayDeque2.isEmpty()) {
            Iterator it2 = arrayDeque2.iterator();
            while (it2.hasNext()) {
                if (((NavigationEventHandler) it2.next()).isBackEnabled) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        boolean z3 = z || z2;
        boolean z4 = this.hasEnabledOverlayHandlers != z;
        boolean z5 = this.hasEnabledDefaultHandlers != z2;
        boolean z6 = this.hasEnabledAnyHandlers != z3;
        MutableOrderedScatterSet mutableOrderedScatterSet = this.overlayInputs;
        char c = 31;
        if (z4) {
            Object[] objArr = mutableOrderedScatterSet.elements;
            long[] jArr = mutableOrderedScatterSet.nodes;
            j = 2147483647L;
            int i = mutableOrderedScatterSet.tail;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr[i]).onHasEnabledHandlersChanged(z);
                i = i2;
                arrayDeque = arrayDeque;
            }
        } else {
            j = 2147483647L;
        }
        ArrayDeque arrayDeque3 = arrayDeque;
        MutableOrderedScatterSet mutableOrderedScatterSet2 = this.defaultInputs;
        if (z5) {
            Object[] objArr2 = mutableOrderedScatterSet2.elements;
            long[] jArr2 = mutableOrderedScatterSet2.nodes;
            int i3 = mutableOrderedScatterSet2.tail;
            while (i3 != Integer.MAX_VALUE) {
                int i4 = (int) ((jArr2[i3] >> c) & j);
                ((NavigationEventInput) objArr2[i3]).onHasEnabledHandlersChanged(z2);
                c = c;
                i3 = i4;
            }
        }
        char c2 = c;
        MutableOrderedScatterSet mutableOrderedScatterSet3 = this.unspecifiedInputs;
        if (z6) {
            Object[] objArr3 = mutableOrderedScatterSet3.elements;
            long[] jArr3 = mutableOrderedScatterSet3.nodes;
            int i5 = mutableOrderedScatterSet3.tail;
            while (i5 != Integer.MAX_VALUE) {
                int i6 = (int) ((jArr3[i5] >> c2) & j);
                ((NavigationEventInput) objArr3[i5]).onHasEnabledHandlersChanged(z3);
                i5 = i6;
            }
        }
        this.hasEnabledOverlayHandlers = z;
        this.hasEnabledDefaultHandlers = z2;
        this.hasEnabledAnyHandlers = z3;
        NavigationEventHandler navigationEventHandler = this.inProgressHandler;
        if (navigationEventHandler == null) {
            navigationEventHandler = resolveEnabledHandler(0);
        }
        NavigationEventHandler navigationEventHandler2 = this.inProgressHandler;
        if (navigationEventHandler2 == null) {
            navigationEventHandler2 = resolveEnabledHandler(0);
        }
        if (Intrinsics.areEqual(navigationEventHandler2, navigationEventHandler)) {
            if (navigationEventHandler2 == null) {
                navigationEventHistory = new NavigationEventHistory();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<E> it3 = arrayDeque3.iterator();
                while (it3.hasNext()) {
                    boolean z7 = ((NavigationEventHandler) it3.next()).isBackEnabled;
                }
                Iterator<E> it4 = arrayDeque2.iterator();
                while (it4.hasNext()) {
                    boolean z8 = ((NavigationEventHandler) it4.next()).isBackEnabled;
                }
                navigationEventHistory = new NavigationEventHistory(navigationEventHandler2.currentInfo, arrayList, EmptyList.INSTANCE, arrayList.size());
            }
            StateFlowImpl stateFlowImpl = this._history;
            if (Intrinsics.areEqual((NavigationEventHistory) stateFlowImpl.getValue(), navigationEventHistory)) {
                return;
            }
            stateFlowImpl.updateState(null, navigationEventHistory);
            Object[] objArr4 = mutableOrderedScatterSet.elements;
            long[] jArr4 = mutableOrderedScatterSet.nodes;
            int i7 = mutableOrderedScatterSet.tail;
            while (i7 != Integer.MAX_VALUE) {
                int i8 = (int) ((jArr4[i7] >> c2) & j);
                ((NavigationEventInput) objArr4[i7]).getClass();
                i7 = i8;
            }
            Object[] objArr5 = mutableOrderedScatterSet2.elements;
            long[] jArr5 = mutableOrderedScatterSet2.nodes;
            int i9 = mutableOrderedScatterSet2.tail;
            while (i9 != Integer.MAX_VALUE) {
                int i10 = (int) ((jArr5[i9] >> c2) & j);
                ((NavigationEventInput) objArr5[i9]).getClass();
                i9 = i10;
            }
            Object[] objArr6 = mutableOrderedScatterSet3.elements;
            long[] jArr6 = mutableOrderedScatterSet3.nodes;
            int i11 = mutableOrderedScatterSet3.tail;
            while (i11 != Integer.MAX_VALUE) {
                int i12 = (int) ((jArr6[i11] >> c2) & j);
                ((NavigationEventInput) objArr6[i11]).getClass();
                i11 = i12;
            }
        }
    }

    public final NavigationEventHandler resolveEnabledHandler(int i) {
        Object obj;
        Object obj2;
        ArrayDeque arrayDeque = this.defaultHandlers;
        ArrayDeque arrayDeque2 = this.overlayHandlers;
        Object obj3 = null;
        if (i == -1) {
            Iterator it = arrayDeque2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((NavigationEventHandler) obj).isBackEnabled) {
                    break;
                }
            }
            NavigationEventHandler navigationEventHandler = (NavigationEventHandler) obj;
            if (navigationEventHandler != null) {
                return navigationEventHandler;
            }
            Iterator it2 = arrayDeque.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((NavigationEventHandler) next).isBackEnabled) {
                    obj3 = next;
                    break;
                }
            }
            return (NavigationEventHandler) obj3;
        }
        if (i != 0) {
            if (i != 1) {
                DBUtil$$ExternalSyntheticBUOutline0.m(i, "'.", "Unsupported direction: '");
                return null;
            }
            Iterator it3 = arrayDeque2.iterator();
            while (it3.hasNext()) {
                ((NavigationEventHandler) it3.next()).getClass();
            }
            Iterator it4 = arrayDeque.iterator();
            while (it4.hasNext()) {
                ((NavigationEventHandler) it4.next()).getClass();
            }
            return null;
        }
        Iterator it5 = arrayDeque2.iterator();
        while (true) {
            if (!it5.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it5.next();
            if (((NavigationEventHandler) obj2).isBackEnabled) {
                break;
            }
        }
        NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) obj2;
        if (navigationEventHandler2 != null) {
            return navigationEventHandler2;
        }
        Iterator it6 = arrayDeque.iterator();
        while (true) {
            if (!it6.hasNext()) {
                break;
            }
            Object next2 = it6.next();
            if (((NavigationEventHandler) next2).isBackEnabled) {
                obj3 = next2;
                break;
            }
        }
        return (NavigationEventHandler) obj3;
    }
}
