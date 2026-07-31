package androidx.navigationevent;

import androidx.navigationevent.NavigationEventTransitionState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Dispatcher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavigationEventProcessor {
    public final StateFlowImpl _history;
    public final StateFlowImpl _transitionState = FlowKt.MutableStateFlow(NavigationEventTransitionState.Idle.INSTANCE);
    public final ArrayDeque defaultHandlers;
    public final LinkedHashSet defaultInputs;
    public boolean hasEnabledAnyHandlers;
    public boolean hasEnabledDefaultHandlers;
    public boolean hasEnabledOverlayHandlers;
    public final ReadonlyStateFlow history;
    public int inProgressDirection;
    public NavigationEventHandler inProgressHandler;
    public NavigationEventInput inProgressInput;
    public final ArrayDeque overlayHandlers;
    public final LinkedHashSet overlayInputs;
    public final LinkedHashSet unspecifiedInputs;

    public NavigationEventProcessor() {
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(new NavigationEventHistory());
        this._history = MutableStateFlow;
        this.history = new ReadonlyStateFlow(MutableStateFlow, null);
        this.overlayHandlers = new ArrayDeque();
        this.defaultHandlers = new ArrayDeque();
        this.unspecifiedInputs = new LinkedHashSet();
        this.defaultInputs = new LinkedHashSet();
        this.overlayInputs = new LinkedHashSet();
    }

    public final void addInput(Dispatcher dispatcher, NavigationEventInput navigationEventInput, int i) {
        dispatcher.getClass();
        if (navigationEventInput.dispatcher == null) {
            (i != 0 ? i != 1 ? this.unspecifiedInputs : this.defaultInputs : this.overlayInputs).add(navigationEventInput);
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
        ArrayDeque arrayDeque = this.overlayHandlers;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                NavigationEventHandler navigationEventHandler = (NavigationEventHandler) it.next();
                if (navigationEventHandler.isBackEnabled || navigationEventHandler.isForwardEnabled) {
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
                NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) it2.next();
                if (navigationEventHandler2.isBackEnabled || navigationEventHandler2.isForwardEnabled) {
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
        if (z4) {
            Iterator it3 = this.overlayInputs.iterator();
            while (it3.hasNext()) {
                ((NavigationEventInput) it3.next()).onHasEnabledHandlersChanged(z);
            }
        }
        if (z5) {
            Iterator it4 = this.defaultInputs.iterator();
            while (it4.hasNext()) {
                ((NavigationEventInput) it4.next()).onHasEnabledHandlersChanged(z2);
            }
        }
        if (z6) {
            Iterator it5 = this.unspecifiedInputs.iterator();
            while (it5.hasNext()) {
                ((NavigationEventInput) it5.next()).onHasEnabledHandlersChanged(z3);
            }
        }
        this.hasEnabledOverlayHandlers = z;
        this.hasEnabledDefaultHandlers = z2;
        this.hasEnabledAnyHandlers = z3;
        NavigationEventHandler navigationEventHandler3 = this.inProgressHandler;
        if (navigationEventHandler3 == null) {
            navigationEventHandler3 = resolveEnabledHandler(0);
        }
        updateEnabledHandlerInfo$navigationevent(navigationEventHandler3);
    }

    public final NavigationEventHandler resolveEnabledHandler(int i) {
        Object obj;
        Object obj2;
        Object obj3;
        ArrayDeque arrayDeque = this.defaultHandlers;
        ArrayDeque arrayDeque2 = this.overlayHandlers;
        Object obj4 = null;
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
                    obj4 = next;
                    break;
                }
            }
            return (NavigationEventHandler) obj4;
        }
        if (i == 0) {
            Iterator it3 = arrayDeque2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it3.next();
                NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) obj2;
                if (navigationEventHandler2.isBackEnabled || navigationEventHandler2.isForwardEnabled) {
                    break;
                }
            }
            NavigationEventHandler navigationEventHandler3 = (NavigationEventHandler) obj2;
            if (navigationEventHandler3 != null) {
                return navigationEventHandler3;
            }
            Iterator it4 = arrayDeque.iterator();
            while (it4.hasNext()) {
                Object next2 = it4.next();
                NavigationEventHandler navigationEventHandler4 = (NavigationEventHandler) next2;
                if (navigationEventHandler4.isBackEnabled || navigationEventHandler4.isForwardEnabled) {
                    obj4 = next2;
                    break;
                }
            }
            return (NavigationEventHandler) obj4;
        }
        if (i != 1) {
            throw new IllegalStateException(("Unsupported direction: '" + i + "'.").toString());
        }
        Iterator it5 = arrayDeque2.iterator();
        while (true) {
            if (!it5.hasNext()) {
                obj3 = null;
                break;
            }
            obj3 = it5.next();
            if (((NavigationEventHandler) obj3).isForwardEnabled) {
                break;
            }
        }
        NavigationEventHandler navigationEventHandler5 = (NavigationEventHandler) obj3;
        if (navigationEventHandler5 != null) {
            return navigationEventHandler5;
        }
        Iterator it6 = arrayDeque.iterator();
        while (true) {
            if (!it6.hasNext()) {
                break;
            }
            Object next3 = it6.next();
            if (((NavigationEventHandler) next3).isForwardEnabled) {
                obj4 = next3;
                break;
            }
        }
        return (NavigationEventHandler) obj4;
    }

    public final void updateEnabledHandlerInfo$navigationevent(NavigationEventHandler navigationEventHandler) {
        NavigationEventHistory navigationEventHistory;
        NavigationEventHandler navigationEventHandler2 = this.inProgressHandler;
        if (navigationEventHandler2 == null) {
            navigationEventHandler2 = resolveEnabledHandler(0);
        }
        if (Intrinsics.areEqual(navigationEventHandler2, navigationEventHandler)) {
            if (navigationEventHandler2 == null) {
                navigationEventHistory = new NavigationEventHistory();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<E> it = this.overlayHandlers.iterator();
                while (it.hasNext()) {
                    NavigationEventHandler navigationEventHandler3 = (NavigationEventHandler) it.next();
                    if (navigationEventHandler3.isBackEnabled && !navigationEventHandler3.backInfo.isEmpty()) {
                        arrayList.addAll(navigationEventHandler3.backInfo);
                    }
                }
                Iterator<E> it2 = this.defaultHandlers.iterator();
                while (it2.hasNext()) {
                    NavigationEventHandler navigationEventHandler4 = (NavigationEventHandler) it2.next();
                    if (navigationEventHandler4.isBackEnabled && !navigationEventHandler4.backInfo.isEmpty()) {
                        arrayList.addAll(navigationEventHandler4.backInfo);
                    }
                }
                NavigationEventInfo navigationEventInfo = navigationEventHandler2.currentInfo;
                List list = navigationEventHandler2.forwardInfo;
                navigationEventInfo.getClass();
                list.getClass();
                ListBuilder createListBuilder = Jsoup.createListBuilder();
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, createListBuilder);
                createListBuilder.add(navigationEventInfo);
                CollectionsKt__MutableCollectionsKt.addAll(list, createListBuilder);
                navigationEventHistory = new NavigationEventHistory(arrayList.size(), createListBuilder.build());
            }
            StateFlowImpl stateFlowImpl = this._history;
            if (Intrinsics.areEqual((NavigationEventHistory) stateFlowImpl.getValue(), navigationEventHistory)) {
                return;
            }
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, navigationEventHistory);
            Iterator it3 = this.overlayInputs.iterator();
            while (it3.hasNext()) {
                ((NavigationEventInput) it3.next()).getClass();
            }
            Iterator it4 = this.defaultInputs.iterator();
            while (it4.hasNext()) {
                ((NavigationEventInput) it4.next()).getClass();
            }
            Iterator it5 = this.unspecifiedInputs.iterator();
            while (it5.hasNext()) {
                ((NavigationEventInput) it5.next()).getClass();
            }
        }
    }
}
