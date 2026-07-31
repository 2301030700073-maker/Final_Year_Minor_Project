package androidx.navigation.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.Lock;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.FloatingWindow;
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
import androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda0;
import androidx.navigation.ui.ActionBarOnDestinationChangedListener;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.OperationKt;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public Lifecycle.State hostLifecycleState;
    public final FragmentNavigator$$ExternalSyntheticLambda0 lifecycleObserver;
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
        this._currentBackStack = FlowKt.MutableStateFlow(emptyList);
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(emptyList);
        this._visibleEntries = MutableStateFlow;
        this.visibleEntries = FlowKt.asStateFlow(MutableStateFlow);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new ArrayList();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new FragmentNavigator$$ExternalSyntheticLambda0(2, this);
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        this.backStackEntriesToDispatch = new ArrayList();
        this._currentBackStackEntryFlow = FlowKt.MutableSharedFlow$default(0, 2, BufferOverflow.DROP_OLDEST);
    }

    public static NavDestination findDestinationComprehensive$navigation_runtime_release(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        if (navDestination.impl.id == i && (navDestination2 == null || (navDestination.equals(navDestination2) && Intrinsics.areEqual(navDestination.parent, navDestination2.parent)))) {
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
        boolean z = navDestination2 instanceof FloatingWindow;
        ArrayDeque arrayDeque = this.backQueue;
        if (!z) {
            while (!arrayDeque.isEmpty() && (((NavBackStackEntry) arrayDeque.last()).destination instanceof FloatingWindow) && popBackStackInternal$navigation_runtime_release(((NavBackStackEntry) arrayDeque.last()).destination.impl.id, true, false)) {
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
        while (navDestination4 != null && findDestination$navigation_runtime_release(navDestination4.impl.id, navDestination4) != navDestination4) {
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
            if (((SparseArrayCompat) ((NavGraph) navDestination5).impl.nameLowerCase).get(navDestination2.impl.id) != null) {
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(new StringBuilder("NavigatorBackStack for "), navDestination.navigatorName, " should already be created"));
                return;
            }
            ((NavController$NavControllerNavigatorState) obj4).addInternal(navBackStackEntry6);
        }
        arrayDeque.addAll(arrayDeque2);
        arrayDeque.addLast(navBackStackEntry);
        Iterator it2 = CollectionsKt.plus(arrayDeque2, navBackStackEntry).iterator();
        while (it2.hasNext()) {
            NavBackStackEntry navBackStackEntry7 = (NavBackStackEntry) it2.next();
            NavGraph navGraph4 = navBackStackEntry7.destination.parent;
            if (navGraph4 != null) {
                linkChildToParent$navigation_runtime_release(navBackStackEntry7, getBackStackEntry$navigation_runtime_release(((NavDestination) navGraph4).impl.id));
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
                while (it2.hasNext()) {
                    ((ActionBarOnDestinationChangedListener) it2.next()).onDestinationChanged(this.navController, navBackStackEntry2.destination, navBackStackEntry2.impl.getArguments$navigation_common_release());
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

    public final boolean executePopOperations$navigation_runtime_release(ArrayList arrayList, NavDestination navDestination, boolean z, boolean z2) {
        final NavControllerImpl navControllerImpl;
        boolean z3;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                navControllerImpl = this;
                z3 = z2;
                break;
            }
            Navigator navigator = (Navigator) it.next();
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.backQueue.last();
            navControllerImpl = this;
            z3 = z2;
            MenuKt$$ExternalSyntheticLambda0 menuKt$$ExternalSyntheticLambda0 = new MenuKt$$ExternalSyntheticLambda0(ref$BooleanRef2, ref$BooleanRef, navControllerImpl, z3, arrayDeque);
            navigator.getClass();
            navBackStackEntry.getClass();
            navControllerImpl.popFromBackStackHandler = menuKt$$ExternalSyntheticLambda0;
            navigator.popBackStack(navBackStackEntry, z3);
            navControllerImpl.popFromBackStackHandler = null;
            if (!ref$BooleanRef2.element) {
                break;
            }
            this = navControllerImpl;
            z2 = z3;
        }
        if (z3) {
            final int i = 0;
            LinkedHashMap linkedHashMap = navControllerImpl.backStackMap;
            if (!z) {
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new TakeWhileSequence(SequencesKt.generateSequence(navDestination, new RoomDatabase$$ExternalSyntheticLambda0(26)), new Function1(navControllerImpl) { // from class: androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda4
                    public final /* synthetic */ NavControllerImpl f$0;

                    {
                        this.f$0 = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean containsKey;
                        int i2 = i;
                        NavControllerImpl navControllerImpl2 = this.f$0;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i2) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.id));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.id));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }, 0));
                while (filteringSequence$iterator$1.hasNext()) {
                    Integer valueOf = Integer.valueOf(((NavDestination) filteringSequence$iterator$1.next()).impl.id);
                    NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) arrayDeque.firstOrNull();
                    linkedHashMap.put(valueOf, navBackStackEntryState != null ? (String) navBackStackEntryState.impl.upstream : null);
                }
            }
            if (!arrayDeque.isEmpty()) {
                SharingConfig sharingConfig = ((NavBackStackEntryState) arrayDeque.first()).impl;
                final int i2 = 1;
                FilteringSequence$iterator$1 filteringSequence$iterator$12 = new FilteringSequence$iterator$1(new TakeWhileSequence(SequencesKt.generateSequence(navControllerImpl.findDestination$navigation_runtime_release(sharingConfig.extraBufferCapacity, null), new RoomDatabase$$ExternalSyntheticLambda0(27)), new Function1(navControllerImpl) { // from class: androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda4
                    public final /* synthetic */ NavControllerImpl f$0;

                    {
                        this.f$0 = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean containsKey;
                        int i22 = i2;
                        NavControllerImpl navControllerImpl2 = this.f$0;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i22) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.id));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.backStackMap.containsKey(Integer.valueOf(navDestination2.impl.id));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }, 0));
                while (filteringSequence$iterator$12.hasNext()) {
                    linkedHashMap.put(Integer.valueOf(((NavDestination) filteringSequence$iterator$12.next()).impl.id), (String) sharingConfig.upstream);
                }
                if (linkedHashMap.values().contains((String) sharingConfig.upstream)) {
                    navControllerImpl.backStackStates.put((String) sharingConfig.upstream, arrayDeque);
                }
            }
        }
        navControllerImpl.updateOnBackPressedCallbackEnabledCallback.invoke();
        return ref$BooleanRef.element;
    }

    public final NavDestination findDestination$navigation_runtime_release(int i, NavDestination navDestination) {
        NavDestination navDestination2;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        if (((NavDestination) navGraph).impl.id == i) {
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
            if (((NavBackStackEntry) obj).destination.impl.id == i) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        StringBuilder m30m = CameraDevices$CC.m30m(i, "No destination with ID ", " is on the NavController's back stack. The current destination is ");
        m30m.append(getCurrentDestination$navigation_runtime_release());
        throw new IllegalArgumentException(m30m.toString().toString());
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle.State getHostLifecycleState$navigation_runtime_release() {
        return this.lifecycleOwner == null ? Lifecycle.State.CREATED : this.hostLifecycleState;
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

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ff, code lost:
    
        if (r13.equals(r0) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0111, code lost:
    
        r0 = new kotlin.collections.ArrayDeque();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011b, code lost:
    
        if ((r12.size() - r5) < r14) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011d, code lost:
    
        r4 = (androidx.navigation.NavBackStackEntry) kotlin.collections.CollectionsKt.removeLast(r12);
        unlinkChildFromParent$navigation_runtime_release(r4);
        r24 = r1;
        r15 = new androidx.navigation.NavBackStackEntry(r4.context, r4.destination, r4.destination.addInDefaultArgs(r27), r4.hostLifecycleState, r4.viewModelStoreProvider, r4.id, r4.savedState);
        r1 = r4.hostLifecycleState;
        r8 = r15.impl;
        r8.getClass();
        r1.getClass();
        r8.hostLifecycleState = r1;
        r1 = r4.impl.maxLifecycle;
        r1.getClass();
        r8.maxLifecycle = r1;
        r8.updateState$navigation_common_release();
        r0.addFirst(r15);
        r1 = r24;
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x016c, code lost:
    
        r24 = r1;
        r1 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0176, code lost:
    
        if (r1.hasNext() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0178, code lost:
    
        r4 = (androidx.navigation.NavBackStackEntry) r1.next();
        r5 = r4.destination.parent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0182, code lost:
    
        if (r5 == null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0184, code lost:
    
        linkChildToParent$navigation_runtime_release(r4, getBackStackEntry$navigation_runtime_release(((androidx.navigation.NavDestination) r5).impl.id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x018f, code lost:
    
        r12.addLast(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0193, code lost:
    
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019b, code lost:
    
        if (r0.hasNext() == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019d, code lost:
    
        r1 = (androidx.navigation.NavBackStackEntry) r0.next();
        r11.getNavigator(r1.destination.navigatorName).onLaunchSingleTop(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01af, code lost:
    
        r23 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010f, code lost:
    
        if (r0.id == r4.impl.id) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01f9 A[LOOP:1: B:19:0x01f3->B:21:0x01f9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0097 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void navigate$navigation_runtime_release(androidx.navigation.NavDestination r26, android.os.Bundle r27, androidx.navigation.NavOptions r28) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.internal.NavControllerImpl.navigate$navigation_runtime_release(androidx.navigation.NavDestination, android.os.Bundle, androidx.navigation.NavOptions):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00cc A[EDGE_INSN: B:48:0x00cc->B:49:0x00cc BREAK  A[LOOP:0: B:6:0x0020->B:57:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[LOOP:0: B:6:0x0020->B:57:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean popBackStackInternal$navigation_runtime_release(java.lang.String r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.internal.NavControllerImpl.popBackStackInternal$navigation_runtime_release(java.lang.String, boolean, boolean):boolean");
    }

    public final void popEntryFromBackStack$navigation_runtime_release(NavBackStackEntry navBackStackEntry, boolean z, ArrayDeque arrayDeque) {
        NavControllerViewModel navControllerViewModel;
        ReadonlyStateFlow readonlyStateFlow;
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
        if ((navController$NavControllerNavigatorState == null || (readonlyStateFlow = navController$NavControllerNavigatorState.transitionsInProgress) == null || (set = (Set) readonlyStateFlow.$$delegate_0.getValue()) == null || !set.contains(navBackStackEntry2)) && !this.parentToChildCount.containsKey(navBackStackEntry2)) {
            z2 = false;
        }
        Lifecycle.State state = navBackStackEntry2.impl.lifecycle.state;
        Lifecycle.State state2 = Lifecycle.State.CREATED;
        if (state.compareTo(state2) >= 0) {
            if (z) {
                navBackStackEntry2.setMaxLifecycle(state2);
                arrayDeque.addFirst(new NavBackStackEntryState(navBackStackEntry2));
            }
            if (z2) {
                navBackStackEntry2.setMaxLifecycle(state2);
            } else {
                navBackStackEntry2.setMaxLifecycle(Lifecycle.State.DESTROYED);
                unlinkChildFromParent$navigation_runtime_release(navBackStackEntry2);
            }
        }
        if (z || z2 || (navControllerViewModel = this.viewModel) == null) {
            return;
        }
        String str = navBackStackEntry2.id;
        str.getClass();
        ViewModelStore viewModelStore = (ViewModelStore) navControllerViewModel.viewModelStores.remove(str);
        if (viewModelStore != null) {
            viewModelStore.clear();
        }
    }

    public final ArrayList populateVisibleEntries$navigation_runtime_release() {
        Lifecycle.State state;
        ArrayList arrayList = new ArrayList();
        Iterator it = this.navigatorState.values().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            state = Lifecycle.State.STARTED;
            if (!hasNext) {
                break;
            }
            Iterable iterable = (Iterable) ((NavController$NavControllerNavigatorState) it.next()).transitionsInProgress.$$delegate_0.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && navBackStackEntry.impl.maxLifecycle.compareTo(state) < 0) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt.addAll(arrayList2, arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = this.backQueue.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) next;
            if (!arrayList.contains(navBackStackEntry2) && navBackStackEntry2.impl.maxLifecycle.compareTo(state) >= 0) {
                arrayList3.add(next);
            }
        }
        CollectionsKt.addAll(arrayList3, arrayList);
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
                    DBUtil$$ExternalSyntheticBUOutline0.m("Restore State failed: destination ", OperationKt.getDisplayName(navContext, sharingConfig2.extraBufferCapacity), " cannot be found from the current destination ", graph$navigation_runtime_release);
                    return false;
                }
                Lifecycle.State hostLifecycleState$navigation_runtime_release = getHostLifecycleState$navigation_runtime_release();
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
                String str2 = (String) sharingConfig2.upstream;
                Bundle bundle4 = (Bundle) sharingConfig2.context;
                str2.getClass();
                arrayList.add(new NavBackStackEntry(navContext, findDestinationComprehensive$navigation_runtime_release, bundle2, hostLifecycleState$navigation_runtime_release, navControllerViewModel, str2, bundle4));
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
                arrayList2.add(IntOffsetKt.mutableListOf(navBackStackEntry3));
            }
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        Iterator it5 = arrayList2.iterator();
        while (it5.hasNext()) {
            List list2 = (List) it5.next();
            Navigator navigator = this._navigatorProvider.getNavigator(((NavBackStackEntry) CollectionsKt.first(list2)).destination.navigatorName);
            ArrayList arrayList4 = arrayList;
            this.addToBackStackHandler = new XmlSettingsParser$$ExternalSyntheticLambda7(ref$BooleanRef, arrayList4, new Ref$IntRef(), this, bundle, 5);
            navigator.navigate(list2, navOptions);
            this.addToBackStackHandler = null;
            arrayList = arrayList4;
        }
        return ref$BooleanRef.element;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0310 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setGraph$navigation_runtime_release(androidx.navigation.NavGraph r28, android.os.Bundle r29) {
        /*
            Method dump skipped, instructions count: 1346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.internal.NavControllerImpl.setGraph$navigation_runtime_release(androidx.navigation.NavGraph, android.os.Bundle):void");
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
        ReadonlyStateFlow readonlyStateFlow;
        Set set;
        ArrayList mutableList = CollectionsKt.toMutableList((Collection) this.backQueue);
        if (mutableList.isEmpty()) {
            return;
        }
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(((NavBackStackEntry) CollectionsKt.last(mutableList)).destination);
        ArrayList arrayList = new ArrayList();
        if (CollectionsKt.last(mutableListOf) instanceof FloatingWindow) {
            Iterator it = CollectionsKt.reversed(mutableList).iterator();
            while (it.hasNext()) {
                NavDestination navDestination = ((NavBackStackEntry) it.next()).destination;
                arrayList.add(navDestination);
                if (!(navDestination instanceof FloatingWindow) && !(navDestination instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap hashMap = new HashMap();
        for (NavBackStackEntry navBackStackEntry : CollectionsKt.reversed(mutableList)) {
            Lifecycle.State state = navBackStackEntry.impl.maxLifecycle;
            NavDestination navDestination2 = navBackStackEntry.destination;
            NavDestination navDestination3 = (NavDestination) CollectionsKt.firstOrNull((List) mutableListOf);
            Lifecycle.State state2 = Lifecycle.State.RESUMED;
            Lifecycle.State state3 = Lifecycle.State.STARTED;
            if (navDestination3 != null && navDestination3.impl.id == navDestination2.impl.id) {
                if (state != state2) {
                    NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = (NavController$NavControllerNavigatorState) this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry.destination.navigatorName));
                    if (Intrinsics.areEqual((navController$NavControllerNavigatorState == null || (readonlyStateFlow = navController$NavControllerNavigatorState.transitionsInProgress) == null || (set = (Set) readonlyStateFlow.$$delegate_0.getValue()) == null) ? null : Boolean.valueOf(set.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInt = (AtomicInt) this.parentToChildCount.get(navBackStackEntry)) != null && atomicInt.atomicInt.get() == 0)) {
                        hashMap.put(navBackStackEntry, state3);
                    } else {
                        hashMap.put(navBackStackEntry, state2);
                    }
                }
                NavDestination navDestination4 = (NavDestination) CollectionsKt.firstOrNull((List) arrayList);
                if (navDestination4 != null && navDestination4.impl.id == navDestination2.impl.id) {
                    CollectionsKt.removeFirst(arrayList);
                }
                CollectionsKt.removeFirst(mutableListOf);
                NavGraph navGraph = navDestination2.parent;
                if (navGraph != null) {
                    mutableListOf.add(navGraph);
                }
            } else if (arrayList.isEmpty() || navDestination2.impl.id != ((NavDestination) CollectionsKt.first((List) arrayList)).impl.id) {
                navBackStackEntry.setMaxLifecycle(Lifecycle.State.CREATED);
            } else {
                NavDestination navDestination5 = (NavDestination) CollectionsKt.removeFirst(arrayList);
                if (state == state2) {
                    navBackStackEntry.setMaxLifecycle(state3);
                } else if (state != state3) {
                    hashMap.put(navBackStackEntry, state3);
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
            Lifecycle.State state4 = (Lifecycle.State) hashMap.get(navBackStackEntry2);
            if (state4 != null) {
                navBackStackEntry2.setMaxLifecycle(state4);
            } else {
                navBackStackEntry2.impl.updateState$navigation_common_release();
            }
        }
    }

    public final boolean popBackStackInternal$navigation_runtime_release(int i, boolean z, boolean z2) {
        NavDestination navDestination;
        ArrayDeque arrayDeque = this.backQueue;
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
            NavDestinationImpl navDestinationImpl = navDestination.impl;
            Navigator navigator = this._navigatorProvider.getNavigator(str);
            if (z || navDestinationImpl.id != i) {
                arrayList.add(navigator);
            }
            if (navDestinationImpl.id == i) {
                break;
            }
        }
        if (navDestination == null) {
            int i2 = NavDestination.$r8$clinit;
            Log.i("NavController", "Ignoring popBackStack to destination " + OperationKt.getDisplayName(this.navController.navContext, i) + " as it was not found on the current back stack");
            return false;
        }
        return executePopOperations$navigation_runtime_release(arrayList, navDestination, z, z2);
    }

    public final void navigate$navigation_runtime_release(String str, NavOptions navOptions) {
        if (this._graph != null) {
            NavGraph topGraph$navigation_runtime_release = getTopGraph$navigation_runtime_release();
            NavDestination.DeepLinkMatch matchRouteComprehensive = topGraph$navigation_runtime_release.matchRouteComprehensive(str, true, topGraph$navigation_runtime_release);
            if (matchRouteComprehensive != null) {
                NavDestination navDestination = matchRouteComprehensive.destination;
                Bundle addInDefaultArgs = navDestination.addInDefaultArgs(matchRouteComprehensive.matchingArgs);
                if (addInDefaultArgs == null) {
                    addInDefaultArgs = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                }
                int i = NavDestination.$r8$clinit;
                String str2 = (String) navDestination.impl.route;
                Uri parse = Uri.parse(str2 != null ? "android-app://androidx.navigation/".concat(str2) : "");
                parse.getClass();
                Intent intent = new Intent();
                intent.setDataAndType(parse, null);
                intent.setAction(null);
                addInDefaultArgs.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
                navigate$navigation_runtime_release(navDestination, addInDefaultArgs, navOptions);
                return;
            }
            Regex$$ExternalSyntheticBUOutline0.m(this._graph, CameraDevices$CC.m31m("Navigation destination that matches route ", str, " cannot be found in the navigation graph "));
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", this, 46);
    }
}
