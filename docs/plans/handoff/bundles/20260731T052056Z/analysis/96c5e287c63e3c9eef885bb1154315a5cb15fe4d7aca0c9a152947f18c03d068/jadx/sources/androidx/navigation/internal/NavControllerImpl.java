package androidx.navigation.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.DialogNavigator;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.FileTreeWalk;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavControllerImpl {
    public final StateFlowImpl _currentBackStack;
    public final SharedFlowImpl _currentBackStackEntryFlow;
    public NavGraph _graph;
    public final NavigatorProvider _navigatorProvider;
    public final StateFlowImpl _visibleEntries;
    public Function1 addToBackStackHandler;
    public final ArrayDeque backQueue = new ArrayDeque();
    public final ArrayList backStackEntriesToDispatch;
    public final LinkedHashMap backStackMap;
    public final LinkedHashMap backStackStates;
    public Bundle[] backStackToRestore;
    public final LinkedHashMap childToParentEntries;
    public int dispatchReentrantCount;
    public final LinkedHashMap entrySavedState;
    public Lifecycle$State hostLifecycleState;
    public final NavControllerImpl$$ExternalSyntheticLambda1 lifecycleObserver;
    public LifecycleOwner lifecycleOwner;
    public final NavHostController navController;
    public final LinkedHashMap navigatorState;
    public Bundle navigatorStateToRestore;
    public final ArrayList onDestinationChangedListeners;
    public final LinkedHashMap parentToChildCount;
    public MenuKt$$ExternalSyntheticLambda0 popFromBackStackHandler;
    public final NavController$$ExternalSyntheticLambda0 updateOnBackPressedCallbackEnabledCallback;
    public NavControllerViewModel viewModel;
    public final ReadonlyStateFlow visibleEntries;

    public NavControllerImpl(NavHostController navHostController, NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0) {
        this.navController = navHostController;
        this.updateOnBackPressedCallbackEnabledCallback = navController$$ExternalSyntheticLambda0;
        EmptyList emptyList = EmptyList.INSTANCE;
        this._currentBackStack = StateFlowKt.MutableStateFlow(emptyList);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(emptyList);
        this._visibleEntries = MutableStateFlow;
        this.visibleEntries = new ReadonlyStateFlow(MutableStateFlow);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new ArrayList();
        this.hostLifecycleState = Lifecycle$State.INITIALIZED;
        this.lifecycleObserver = new NavControllerImpl$$ExternalSyntheticLambda1(0, this);
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        this.backStackEntriesToDispatch = new ArrayList();
        this._currentBackStackEntryFlow = StateFlowKt.MutableSharedFlow$default(0, 2, BufferOverflow.DROP_OLDEST);
    }

    public static NavDestination findDestinationComprehensive$navigation_runtime_release(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        if (navDestination.impl.size == i && (navDestination2 == null || (navDestination.equals(navDestination2) && Intrinsics.areEqual(navDestination.parent, navDestination2.parent)))) {
            return navDestination;
        }
        NavGraph navGraph = navDestination instanceof NavGraph ? (NavGraph) navDestination : null;
        if (navGraph == null) {
            navGraph = navDestination.parent;
            navGraph.getClass();
        }
        return navGraph.impl.findNodeComprehensive$navigation_common_release(i, navGraph, navDestination2, z);
    }

    public static /* synthetic */ void popEntryFromBackStack$navigation_runtime_release$default(NavControllerImpl navControllerImpl, NavBackStackEntry navBackStackEntry) {
        navControllerImpl.popEntryFromBackStack$navigation_runtime_release(navBackStackEntry, false, new ArrayDeque());
    }

    public final void addEntryToBackStack(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list) {
        Object obj;
        Object obj2;
        NavContext navContext = this.navController.navContext;
        NavDestination navDestination2 = navBackStackEntry.destination;
        boolean z = navDestination2 instanceof DialogNavigator.Destination;
        ArrayDeque arrayDeque = this.backQueue;
        if (!z) {
            while (!arrayDeque.isEmpty() && (((NavBackStackEntry) arrayDeque.last()).destination instanceof DialogNavigator.Destination) && popBackStackInternal$navigation_runtime_release(((NavBackStackEntry) arrayDeque.last()).destination.impl.size, true, false)) {
            }
        }
        ArrayDeque arrayDeque2 = new ArrayDeque();
        Object obj3 = null;
        if (navDestination instanceof NavGraph) {
            NavDestination navDestination3 = navDestination2;
            do {
                navDestination3.getClass();
                navDestination3 = navDestination3.parent;
                if (navDestination3 != null) {
                    ListIterator listIterator = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            obj2 = null;
                            break;
                        } else {
                            obj2 = listIterator.previous();
                            if (Intrinsics.areEqual(((NavBackStackEntry) obj2).destination, navDestination3)) {
                                break;
                            }
                        }
                    }
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
                    if (navBackStackEntry2 == null) {
                        navBackStackEntry2 = Lock.create$default(navContext, navDestination3, bundle, getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                    }
                    arrayDeque2.addFirst(navBackStackEntry2);
                    if (!arrayDeque.isEmpty() && ((NavBackStackEntry) arrayDeque.last()).destination == navDestination3) {
                        popEntryFromBackStack$navigation_runtime_release$default(this, (NavBackStackEntry) arrayDeque.last());
                    }
                }
                if (navDestination3 == null) {
                    break;
                }
            } while (navDestination3 != navDestination);
        }
        NavDestination navDestination4 = arrayDeque2.isEmpty() ? navDestination2 : ((NavBackStackEntry) arrayDeque2.first()).destination;
        while (navDestination4 != null && findDestination$navigation_runtime_release(navDestination4.impl.size, navDestination4) != navDestination4) {
            navDestination4 = navDestination4.parent;
            if (navDestination4 != null) {
                Bundle bundle2 = (bundle == null || !bundle.isEmpty()) ? bundle : null;
                ListIterator listIterator2 = list.listIterator(list.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        obj = null;
                        break;
                    } else {
                        obj = listIterator2.previous();
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj).destination, navDestination4)) {
                            break;
                        }
                    }
                }
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj;
                if (navBackStackEntry3 == null) {
                    navBackStackEntry3 = Lock.create$default(navContext, navDestination4, navDestination4.addInDefaultArgs(bundle2), getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                }
                arrayDeque2.addFirst(navBackStackEntry3);
            }
        }
        if (!arrayDeque2.isEmpty()) {
            navDestination2 = ((NavBackStackEntry) arrayDeque2.first()).destination;
        }
        while (!arrayDeque.isEmpty() && (((NavBackStackEntry) arrayDeque.last()).destination instanceof NavGraph)) {
            NavDestination navDestination5 = ((NavBackStackEntry) arrayDeque.last()).destination;
            navDestination5.getClass();
            if (ArraySetKt.commonGet((SparseArrayCompat) ((NavGraph) navDestination5).impl.readyAsyncCalls, navDestination2.impl.size) != null) {
                break;
            } else {
                popEntryFromBackStack$navigation_runtime_release$default(this, (NavBackStackEntry) arrayDeque.last());
            }
        }
        NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) arrayDeque.firstOrNull();
        if (navBackStackEntry4 == null) {
            navBackStackEntry4 = (NavBackStackEntry) arrayDeque2.firstOrNull();
        }
        if (!Intrinsics.areEqual(navBackStackEntry4 != null ? navBackStackEntry4.destination : null, this._graph)) {
            ListIterator listIterator3 = list.listIterator(list.size());
            while (true) {
                if (!listIterator3.hasPrevious()) {
                    break;
                }
                Object previous = listIterator3.previous();
                NavDestination navDestination6 = ((NavBackStackEntry) previous).destination;
                NavGraph navGraph = this._graph;
                navGraph.getClass();
                if (Intrinsics.areEqual(navDestination6, navGraph)) {
                    obj3 = previous;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntry5 = (NavBackStackEntry) obj3;
            if (navBackStackEntry5 == null) {
                NavGraph navGraph2 = this._graph;
                navGraph2.getClass();
                NavGraph navGraph3 = this._graph;
                navGraph3.getClass();
                navBackStackEntry5 = Lock.create$default(navContext, navGraph2, navGraph3.addInDefaultArgs(bundle), getHostLifecycleState$navigation_runtime_release(), this.viewModel);
            }
            arrayDeque2.addFirst(navBackStackEntry5);
        }
        Iterator it = arrayDeque2.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry6 = (NavBackStackEntry) it.next();
            Object obj4 = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry6.destination.navigatorName));
            if (obj4 == null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(new StringBuilder("NavigatorBackStack for "), navDestination.navigatorName, " should already be created"));
                return;
            }
            ((NavController$NavControllerNavigatorState) obj4).addInternal(navBackStackEntry6);
        }
        arrayDeque.addAll(arrayDeque2);
        arrayDeque.addLast(navBackStackEntry);
        Iterator it2 = CollectionsKt.plus((Collection) arrayDeque2, (Object) navBackStackEntry).iterator();
        while (it2.hasNext()) {
            NavBackStackEntry navBackStackEntry7 = (NavBackStackEntry) it2.next();
            NavGraph navGraph4 = navBackStackEntry7.destination.parent;
            if (navGraph4 != null) {
                linkChildToParent$navigation_runtime_release(navBackStackEntry7, getBackStackEntry$navigation_runtime_release(((NavDestination) navGraph4).impl.size));
            }
        }
    }

    public final boolean dispatchOnDestinationChanged$navigation_runtime_release() {
        ArrayDeque arrayDeque;
        while (true) {
            arrayDeque = this.backQueue;
            if (arrayDeque.isEmpty() || !(((NavBackStackEntry) arrayDeque.last()).destination instanceof NavGraph)) {
                break;
            }
            popEntryFromBackStack$navigation_runtime_release$default(this, (NavBackStackEntry) arrayDeque.last());
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.lastOrNull();
        ArrayList arrayList = this.backStackEntriesToDispatch;
        if (navBackStackEntry != null) {
            arrayList.add(navBackStackEntry);
        }
        this.dispatchReentrantCount++;
        updateBackStackLifecycle$navigation_runtime_release();
        int i = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i;
        if (i == 0) {
            ArrayList mutableList = CollectionsKt.toMutableList((Collection) arrayList);
            arrayList.clear();
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it.next();
                Iterator it2 = CollectionsKt.toList(this.onDestinationChangedListeners).iterator();
                if (it2.hasNext()) {
                    if (it2.next() != null) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                        return false;
                    }
                    NavDestination navDestination = navBackStackEntry2.destination;
                    navBackStackEntry2.impl.getArguments$navigation_common_release();
                    throw null;
                }
                this._currentBackStackEntryFlow.tryEmit(navBackStackEntry2);
            }
            ArrayList arrayList2 = new ArrayList(arrayDeque);
            StateFlowImpl stateFlowImpl = this._currentBackStack;
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, arrayList2);
            ArrayList populateVisibleEntries$navigation_runtime_release = populateVisibleEntries$navigation_runtime_release();
            StateFlowImpl stateFlowImpl2 = this._visibleEntries;
            stateFlowImpl2.getClass();
            stateFlowImpl2.updateState(null, populateVisibleEntries$navigation_runtime_release);
        }
        return navBackStackEntry != null;
    }

    public final NavDestination findDestination$navigation_runtime_release(int i, NavDestination navDestination) {
        NavDestination navDestination2;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        if (((NavDestination) navGraph).impl.size == i) {
            if (navDestination == null) {
                return navGraph;
            }
            if (Intrinsics.areEqual(navGraph, navDestination) && navDestination.parent == null) {
                return this._graph;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.backQueue.lastOrNull();
        if (navBackStackEntry == null || (navDestination2 = navBackStackEntry.destination) == null) {
            navDestination2 = this._graph;
            navDestination2.getClass();
        }
        return findDestinationComprehensive$navigation_runtime_release(i, navDestination2, navDestination, false);
    }

    public final NavBackStackEntry getBackStackEntry$navigation_runtime_release(int i) {
        Object obj;
        ArrayDeque arrayDeque = this.backQueue;
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            if (((NavBackStackEntry) obj).destination.impl.size == i) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        StringBuilder m20m = Animation.CC.m20m(i, "No destination with ID ", " is on the NavController's back stack. The current destination is ");
        m20m.append(getCurrentDestination$navigation_runtime_release());
        throw new IllegalArgumentException(m20m.toString().toString());
    }

    public final NavDestination getCurrentDestination$navigation_runtime_release() {
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.backQueue.lastOrNull();
        if (navBackStackEntry != null) {
            return navBackStackEntry.destination;
        }
        return null;
    }

    public final NavGraph getGraph$navigation_runtime_release() {
        NavGraph navGraph = this._graph;
        if (navGraph != null) {
            navGraph.getClass();
            return navGraph;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle$State getHostLifecycleState$navigation_runtime_release() {
        return this.lifecycleOwner == null ? Lifecycle$State.CREATED : this.hostLifecycleState;
    }

    public final NavGraph getTopGraph$navigation_runtime_release() {
        NavDestination navDestination;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.backQueue.lastOrNull();
        if (navBackStackEntry == null || (navDestination = navBackStackEntry.destination) == null) {
            navDestination = this._graph;
            navDestination.getClass();
        }
        NavGraph navGraph = navDestination instanceof NavGraph ? (NavGraph) navDestination : null;
        if (navGraph != null) {
            return navGraph;
        }
        NavGraph navGraph2 = navDestination.parent;
        navGraph2.getClass();
        return navGraph2;
    }

    public final void linkChildToParent$navigation_runtime_release(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.childToParentEntries.put(navBackStackEntry, navBackStackEntry2);
        LinkedHashMap linkedHashMap = this.parentToChildCount;
        if (linkedHashMap.get(navBackStackEntry2) == null) {
            linkedHashMap.put(navBackStackEntry2, new AtomicInt());
        }
        Object obj = linkedHashMap.get(navBackStackEntry2);
        obj.getClass();
        ((AtomicInt) obj).atomicInt.incrementAndGet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0201, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x010e, code lost:
    
        if (r23.impl.size == r10.impl.size) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00fc, code lost:
    
        if (r13.equals(r10) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0110, code lost:
    
        r10 = new kotlin.collections.ArrayDeque();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011b, code lost:
    
        if (androidx.room.Room.getLastIndex(r22.backQueue) < r11) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011d, code lost:
    
        r12 = (androidx.navigation.NavBackStackEntry) kotlin.collections.CollectionsKt.removeLast(r22.backQueue);
        unlinkChildFromParent$navigation_runtime_release(r12);
        r13 = new androidx.navigation.NavBackStackEntry(r12.context, r12.destination, r12.destination.addInDefaultArgs(r24), r12.hostLifecycleState, r12.viewModelStoreProvider, r12.id, r12.savedState);
        r0 = r13.impl;
        r4 = r12.hostLifecycleState;
        r0.getClass();
        r4.getClass();
        r0.hostLifecycleState = r4;
        r0 = r13.impl;
        r4 = r12.impl.maxLifecycle;
        r0.getClass();
        r4.getClass();
        r0.maxLifecycle = r4;
        r0.updateState$navigation_common_release();
        r10.addFirst(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x016c, code lost:
    
        r0 = r10.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0174, code lost:
    
        if (r0.hasNext() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0176, code lost:
    
        r4 = (androidx.navigation.NavBackStackEntry) r0.next();
        r7 = r4.destination.parent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0180, code lost:
    
        if (r7 == null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0182, code lost:
    
        linkChildToParent$navigation_runtime_release(r4, getBackStackEntry$navigation_runtime_release(((androidx.navigation.NavDestination) r7).impl.size));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x018d, code lost:
    
        r22.backQueue.addLast(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0193, code lost:
    
        r0 = r10.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x019b, code lost:
    
        if (r0.hasNext() == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019d, code lost:
    
        r4 = (androidx.navigation.NavBackStackEntry) r0.next();
        r7 = r22._navigatorProvider.getNavigator(r4.destination.navigatorName);
        r9 = r4.destination;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01af, code lost:
    
        if (r9 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b2, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b3, code lost:
    
        if (r9 != null) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b6, code lost:
    
        r7.navigate(r9);
        r7 = r7.getState();
        r9 = r7.backStackLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01bf, code lost:
    
        monitor-enter(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c0, code lost:
    
        r10 = kotlin.collections.CollectionsKt.toMutableList((java.util.Collection) r7.backStack.$$delegate_0.getValue());
        r11 = r10.listIterator(r10.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01da, code lost:
    
        if (r11.hasPrevious() == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ea, code lost:
    
        if (((androidx.navigation.NavBackStackEntry) r11.previous()).id.equals(r4.id) == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ec, code lost:
    
        r11 = r11.nextIndex();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01f4, code lost:
    
        r10.set(r11, r4);
        r7._backStack.updateState(null, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01fd, code lost:
    
        monitor-exit(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01f3, code lost:
    
        r11 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01f1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0200, code lost:
    
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0208  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void navigate$navigation_runtime_release(androidx.navigation.NavDestination r23, android.os.Bundle r24, androidx.navigation.NavOptions r25) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.internal.NavControllerImpl.navigate$navigation_runtime_release(androidx.navigation.NavDestination, android.os.Bundle, androidx.navigation.NavOptions):void");
    }

    public final boolean popBackStackInternal$navigation_runtime_release(int i, boolean z, boolean z2) {
        NavDestination navDestination;
        final NavControllerImpl navControllerImpl;
        boolean z3;
        ArrayDeque arrayDeque = this.backQueue;
        final int i2 = 0;
        if (arrayDeque.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.reversed(arrayDeque).iterator();
        while (true) {
            if (!it.hasNext()) {
                navDestination = null;
                break;
            }
            navDestination = ((NavBackStackEntry) it.next()).destination;
            String str = navDestination.navigatorName;
            RulerTrackingMap rulerTrackingMap = navDestination.impl;
            Navigator navigator = this._navigatorProvider.getNavigator(str);
            if (z || rulerTrackingMap.size != i) {
                arrayList.add(navigator);
            }
            if (rulerTrackingMap.size == i) {
                break;
            }
        }
        if (navDestination == null) {
            int i3 = NavDestination.$r8$clinit;
            Log.i("NavController", "Ignoring popBackStack to destination " + UStringsKt.getDisplayName(this.navController.navContext, i) + " as it was not found on the current back stack");
            return false;
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                navControllerImpl = this;
                z3 = z2;
                break;
            }
            Navigator navigator2 = (Navigator) it2.next();
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.last();
            navControllerImpl = this;
            z3 = z2;
            MenuKt$$ExternalSyntheticLambda0 menuKt$$ExternalSyntheticLambda0 = new MenuKt$$ExternalSyntheticLambda0(ref$BooleanRef2, ref$BooleanRef, navControllerImpl, z3, arrayDeque2);
            navigator2.getClass();
            navBackStackEntry.getClass();
            navControllerImpl.popFromBackStackHandler = menuKt$$ExternalSyntheticLambda0;
            navigator2.popBackStack(navBackStackEntry, z3);
            navControllerImpl.popFromBackStackHandler = null;
            if (!ref$BooleanRef2.element) {
                break;
            }
            this = navControllerImpl;
            z2 = z3;
        }
        if (z3) {
            LinkedHashMap linkedHashMap = navControllerImpl.backStackMap;
            if (!z) {
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FileTreeWalk(SequencesKt.generateSequence(navDestination, new PagingSource$$ExternalSyntheticLambda0(27)), new Function1(navControllerImpl) { // from class: androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda4
                    public final /* synthetic */ NavControllerImpl f$0;

                    {
                        this.f$0 = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean containsKey;
                        int i4 = i2;
                        NavControllerImpl navControllerImpl2 = this.f$0;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i4) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.size));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.size));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }));
                while (filteringSequence$iterator$1.hasNext()) {
                    Integer valueOf = Integer.valueOf(((NavDestination) filteringSequence$iterator$1.next()).impl.size);
                    NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) arrayDeque2.firstOrNull();
                    linkedHashMap.put(valueOf, navBackStackEntryState != null ? (String) navBackStackEntryState.impl.upstream : null);
                }
            }
            if (!arrayDeque2.isEmpty()) {
                SharingConfig sharingConfig = ((NavBackStackEntryState) arrayDeque2.first()).impl;
                String str2 = (String) sharingConfig.upstream;
                final int i4 = 1;
                FilteringSequence$iterator$1 filteringSequence$iterator$12 = new FilteringSequence$iterator$1(new FileTreeWalk(SequencesKt.generateSequence(navControllerImpl.findDestination$navigation_runtime_release(sharingConfig.extraBufferCapacity, null), new PagingSource$$ExternalSyntheticLambda0(28)), new Function1(navControllerImpl) { // from class: androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda4
                    public final /* synthetic */ NavControllerImpl f$0;

                    {
                        this.f$0 = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean containsKey;
                        int i42 = i4;
                        NavControllerImpl navControllerImpl2 = this.f$0;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i42) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.size));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.size));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }));
                while (filteringSequence$iterator$12.hasNext()) {
                    linkedHashMap.put(Integer.valueOf(((NavDestination) filteringSequence$iterator$12.next()).impl.size), str2);
                }
                if (linkedHashMap.values().contains(str2)) {
                    navControllerImpl.backStackStates.put(str2, arrayDeque2);
                }
            }
        }
        navControllerImpl.updateOnBackPressedCallbackEnabledCallback.invoke();
        return ref$BooleanRef.element;
    }

    public final void popEntryFromBackStack$navigation_runtime_release(NavBackStackEntry navBackStackEntry, boolean z, ArrayDeque arrayDeque) {
        NavControllerViewModel navControllerViewModel;
        Set set;
        navBackStackEntry.getClass();
        ArrayDeque arrayDeque2 = this.backQueue;
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) arrayDeque2.last();
        if (!Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry)) {
            StringBuilder sb = new StringBuilder("Attempted to pop ");
            sb.append(navBackStackEntry.destination);
            NavDestination navDestination = navBackStackEntry2.destination;
            sb.append(", which is not the top of the back stack (");
            sb.append(navDestination);
            sb.append(')');
            throw new IllegalStateException(sb.toString().toString());
        }
        CollectionsKt.removeLast(arrayDeque2);
        NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = (NavController$NavControllerNavigatorState) this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry2.destination.navigatorName));
        boolean z2 = true;
        if ((navController$NavControllerNavigatorState == null || (set = (Set) navController$NavControllerNavigatorState.transitionsInProgress.$$delegate_0.getValue()) == null || !set.contains(navBackStackEntry2)) && !this.parentToChildCount.containsKey(navBackStackEntry2)) {
            z2 = false;
        }
        Lifecycle$State lifecycle$State = navBackStackEntry2.impl.lifecycle.state;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.CREATED;
        if (lifecycle$State.isAtLeast(lifecycle$State2)) {
            if (z) {
                navBackStackEntry2.setMaxLifecycle(lifecycle$State2);
                arrayDeque.addFirst(new NavBackStackEntryState(navBackStackEntry2));
            }
            if (z2) {
                navBackStackEntry2.setMaxLifecycle(lifecycle$State2);
            } else {
                navBackStackEntry2.setMaxLifecycle(Lifecycle$State.DESTROYED);
                unlinkChildFromParent$navigation_runtime_release(navBackStackEntry2);
            }
        }
        if (z || z2 || (navControllerViewModel = this.viewModel) == null) {
            return;
        }
        ViewModelStore viewModelStore = (ViewModelStore) navControllerViewModel.viewModelStores.remove(navBackStackEntry2.id);
        if (viewModelStore != null) {
            viewModelStore.clear();
        }
    }

    public final ArrayList populateVisibleEntries$navigation_runtime_release() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            Iterable iterable = (Iterable) ((NavController$NavControllerNavigatorState) it.next()).transitionsInProgress.$$delegate_0.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.impl.maxLifecycle.isAtLeast(Lifecycle$State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = this.backQueue.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) next;
            if (!arrayList.contains(navBackStackEntry2) && navBackStackEntry2.impl.maxLifecycle.isAtLeast(Lifecycle$State.STARTED)) {
                arrayList3.add(next);
            }
        }
        CollectionsKt.addAll(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object next2 = it3.next();
            if (!(((NavBackStackEntry) next2).destination instanceof NavGraph)) {
                arrayList4.add(next2);
            }
        }
        return arrayList4;
    }

    public final boolean restoreStateInternal(int i, Bundle bundle, NavOptions navOptions) {
        NavDestination graph$navigation_runtime_release;
        NavBackStackEntry navBackStackEntry;
        NavDestination navDestination;
        Bundle bundle2;
        Integer valueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.backStackMap;
        if (!linkedHashMap.containsKey(valueOf)) {
            return false;
        }
        String str = (String) linkedHashMap.get(Integer.valueOf(i));
        Collection values = linkedHashMap.values();
        values.getClass();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual((String) it.next(), str)) {
                it.remove();
            }
        }
        ArrayDeque arrayDeque = (ArrayDeque) TypeIntrinsics.asMutableMap(this.backStackStates).remove(str);
        NavContext navContext = this.navController.navContext;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.backQueue.lastOrNull();
        if (navBackStackEntry2 == null || (graph$navigation_runtime_release = navBackStackEntry2.destination) == null) {
            graph$navigation_runtime_release = getGraph$navigation_runtime_release();
        }
        if (arrayDeque != null) {
            Iterator it2 = arrayDeque.iterator();
            while (it2.hasNext()) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) it2.next();
                SharingConfig sharingConfig = navBackStackEntryState.impl;
                SharingConfig sharingConfig2 = navBackStackEntryState.impl;
                NavDestination findDestinationComprehensive$navigation_runtime_release = findDestinationComprehensive$navigation_runtime_release(sharingConfig.extraBufferCapacity, graph$navigation_runtime_release, null, true);
                if (findDestinationComprehensive$navigation_runtime_release == null) {
                    int i2 = NavDestination.$r8$clinit;
                    TimeSource$Companion$$ExternalSyntheticLambda0.m("Restore State failed: destination ", UStringsKt.getDisplayName(navContext, sharingConfig2.extraBufferCapacity), " cannot be found from the current destination ", graph$navigation_runtime_release);
                    return false;
                }
                Lifecycle$State hostLifecycleState$navigation_runtime_release = getHostLifecycleState$navigation_runtime_release();
                NavControllerViewModel navControllerViewModel = this.viewModel;
                navContext.getClass();
                hostLifecycleState$navigation_runtime_release.getClass();
                Bundle bundle3 = (Bundle) sharingConfig2.onBufferOverflow;
                if (bundle3 != null) {
                    Context context = navContext.context;
                    bundle3.setClassLoader(context != null ? context.getClassLoader() : null);
                    bundle2 = bundle3;
                } else {
                    bundle2 = null;
                }
                arrayList.add(new NavBackStackEntry(navContext, findDestinationComprehensive$navigation_runtime_release, bundle2, hostLifecycleState$navigation_runtime_release, navControllerViewModel, (String) sharingConfig2.upstream, (Bundle) sharingConfig2.context));
                graph$navigation_runtime_release = findDestinationComprehensive$navigation_runtime_release;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object next = it3.next();
            if (!(((NavBackStackEntry) next).destination instanceof NavGraph)) {
                arrayList3.add(next);
            }
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) it4.next();
            List list = (List) CollectionsKt.lastOrNull(arrayList2);
            if (Intrinsics.areEqual((list == null || (navBackStackEntry = (NavBackStackEntry) CollectionsKt.last(list)) == null || (navDestination = navBackStackEntry.destination) == null) ? null : navDestination.navigatorName, navBackStackEntry3.destination.navigatorName)) {
                list.add(navBackStackEntry3);
            } else {
                arrayList2.add(Room.mutableListOf(navBackStackEntry3));
            }
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        Iterator it5 = arrayList2.iterator();
        while (it5.hasNext()) {
            List list2 = (List) it5.next();
            Navigator navigator = this._navigatorProvider.getNavigator(((NavBackStackEntry) CollectionsKt.first(list2)).destination.navigatorName);
            ArrayList arrayList4 = arrayList;
            this.addToBackStackHandler = new GamesHubScreenKt$$ExternalSyntheticLambda23(ref$BooleanRef, arrayList4, new Ref$IntRef(), this, bundle, 5);
            navigator.navigate(list2, navOptions);
            this.addToBackStackHandler = null;
            arrayList = arrayList4;
        }
        return ref$BooleanRef.element;
    }

    public final void unlinkChildFromParent$navigation_runtime_release(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.childToParentEntries.remove(navBackStackEntry);
        if (navBackStackEntry2 == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.parentToChildCount;
        AtomicInt atomicInt = (AtomicInt) linkedHashMap.get(navBackStackEntry2);
        Integer valueOf = atomicInt != null ? Integer.valueOf(atomicInt.atomicInt.decrementAndGet()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = (NavController$NavControllerNavigatorState) this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry2.destination.navigatorName));
            if (navController$NavControllerNavigatorState != null) {
                navController$NavControllerNavigatorState.markTransitionComplete(navBackStackEntry2);
            }
            linkedHashMap.remove(navBackStackEntry2);
        }
    }

    public final void updateBackStackLifecycle$navigation_runtime_release() {
        AtomicInt atomicInt;
        Set set;
        ArrayList mutableList = CollectionsKt.toMutableList((Collection) this.backQueue);
        if (mutableList.isEmpty()) {
            return;
        }
        ArrayList mutableListOf = Room.mutableListOf(((NavBackStackEntry) CollectionsKt.last((List) mutableList)).destination);
        ArrayList arrayList = new ArrayList();
        if (CollectionsKt.last((List) mutableListOf) instanceof DialogNavigator.Destination) {
            Iterator it = CollectionsKt.reversed(mutableList).iterator();
            while (it.hasNext()) {
                NavDestination navDestination = ((NavBackStackEntry) it.next()).destination;
                arrayList.add(navDestination);
                if (!(navDestination instanceof DialogNavigator.Destination) && !(navDestination instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap hashMap = new HashMap();
        for (NavBackStackEntry navBackStackEntry : CollectionsKt.reversed(mutableList)) {
            Lifecycle$State lifecycle$State = navBackStackEntry.impl.maxLifecycle;
            NavDestination navDestination2 = navBackStackEntry.destination;
            NavDestination navDestination3 = (NavDestination) CollectionsKt.firstOrNull((List) mutableListOf);
            if (navDestination3 != null && navDestination3.impl.size == navDestination2.impl.size) {
                Lifecycle$State lifecycle$State2 = Lifecycle$State.RESUMED;
                if (lifecycle$State != lifecycle$State2) {
                    NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = (NavController$NavControllerNavigatorState) this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry.destination.navigatorName));
                    if (Intrinsics.areEqual((navController$NavControllerNavigatorState == null || (set = (Set) navController$NavControllerNavigatorState.transitionsInProgress.$$delegate_0.getValue()) == null) ? null : Boolean.valueOf(set.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInt = (AtomicInt) this.parentToChildCount.get(navBackStackEntry)) != null && atomicInt.atomicInt.get() == 0)) {
                        hashMap.put(navBackStackEntry, Lifecycle$State.STARTED);
                    } else {
                        hashMap.put(navBackStackEntry, lifecycle$State2);
                    }
                }
                NavDestination navDestination4 = (NavDestination) CollectionsKt.firstOrNull((List) arrayList);
                if (navDestination4 != null && navDestination4.impl.size == navDestination2.impl.size) {
                    CollectionsKt.removeFirst(arrayList);
                }
                CollectionsKt.removeFirst(mutableListOf);
                NavGraph navGraph = navDestination2.parent;
                if (navGraph != null) {
                    mutableListOf.add(navGraph);
                }
            } else if (arrayList.isEmpty() || navDestination2.impl.size != ((NavDestination) CollectionsKt.first((List) arrayList)).impl.size) {
                navBackStackEntry.setMaxLifecycle(Lifecycle$State.CREATED);
            } else {
                NavDestination navDestination5 = (NavDestination) CollectionsKt.removeFirst(arrayList);
                if (lifecycle$State == Lifecycle$State.RESUMED) {
                    navBackStackEntry.setMaxLifecycle(Lifecycle$State.STARTED);
                } else {
                    Lifecycle$State lifecycle$State3 = Lifecycle$State.STARTED;
                    if (lifecycle$State != lifecycle$State3) {
                        hashMap.put(navBackStackEntry, lifecycle$State3);
                    }
                }
                NavGraph navGraph2 = navDestination5.parent;
                if (navGraph2 != null && !arrayList.contains(navGraph2)) {
                    arrayList.add(navGraph2);
                }
            }
        }
        Iterator it2 = mutableList.iterator();
        while (it2.hasNext()) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it2.next();
            Lifecycle$State lifecycle$State4 = (Lifecycle$State) hashMap.get(navBackStackEntry2);
            if (lifecycle$State4 != null) {
                navBackStackEntry2.setMaxLifecycle(lifecycle$State4);
            } else {
                navBackStackEntry2.impl.updateState$navigation_common_release();
            }
        }
    }
}
