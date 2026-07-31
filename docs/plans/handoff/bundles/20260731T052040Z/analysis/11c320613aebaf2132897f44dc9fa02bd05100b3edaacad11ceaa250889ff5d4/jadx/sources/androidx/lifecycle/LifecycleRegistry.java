package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.Recreator;
import coil3.memory.MemoryCacheService;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LifecycleRegistry extends Lifecycle {
    public final StateFlowImpl _currentStateFlow;
    public int addingObserverCounter;
    public final boolean enforceMainThread;
    public boolean handlingEvent;
    public final MemoryCacheService lifecycleOwner;
    public boolean newEventOccurred;
    public ProcessFinisher observerMap;
    public final ArrayList parentStates;
    public Lifecycle.State state;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserverWithState {
        public LifecycleEventObserver lifecycleObserver;
        public Lifecycle.State state;

        public final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            Lifecycle.State state = this.state;
            if (targetState.compareTo(state) < 0) {
                state = targetState;
            }
            this.state = state;
            this.lifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.state = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        new AtomicReference(null);
        this.enforceMainThread = z;
        this.observerMap = new ProcessFinisher(21);
        lifecycleOwner.getClass();
        MemoryCacheService memoryCacheService = new MemoryCacheService();
        memoryCacheService.imageLoader = new WeakReference(lifecycleOwner);
        this.lifecycleOwner = memoryCacheService;
        this.parentStates = new ArrayList();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.state = state;
        this._currentStateFlow = FlowKt.MutableStateFlow(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleEventObserver defaultLifecycleObserverAdapter;
        ObserverWithState observerWithState;
        LifecycleOwner lifecycleOwner;
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.state;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState2 = new ObserverWithState();
        observerWithState2.state = state2;
        HashMap hashMap = Lifecycling.callbackCache;
        boolean z = lifecycleObserver instanceof LifecycleEventObserver;
        boolean z2 = lifecycleObserver instanceof DefaultLifecycleObserver;
        int i = 2;
        if (z && z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
        } else if (z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) null);
        } else if (z) {
            defaultLifecycleObserverAdapter = (LifecycleEventObserver) lifecycleObserver;
        } else {
            Class<?> cls = lifecycleObserver.getClass();
            if (Lifecycling.getObserverConstructorType(cls) == 2) {
                Object obj = Lifecycling.classToAdapters.get(cls);
                obj.getClass();
                List list = (List) obj;
                if (list.size() == 1) {
                    Lifecycling.createGeneratedAdapter((Constructor) list.get(0), lifecycleObserver);
                    throw null;
                }
                int size = list.size();
                GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
                if (size > 0) {
                    Lifecycling.createGeneratedAdapter((Constructor) list.get(0), lifecycleObserver);
                    throw null;
                }
                defaultLifecycleObserverAdapter = new Recreator(generatedAdapterArr, i);
            } else {
                defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(lifecycleObserver);
            }
        }
        observerWithState2.lifecycleObserver = defaultLifecycleObserverAdapter;
        ProcessFinisher processFinisher = this.observerMap;
        processFinisher.getClass();
        MutableScatterMap mutableScatterMap = (MutableScatterMap) processFinisher.context;
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) mutableScatterMap.get(lifecycleObserver);
        if (fastSafeIterableMap$Entry != null) {
            observerWithState = fastSafeIterableMap$Entry.value;
        } else {
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = new FastSafeIterableMap$Entry(lifecycleObserver, observerWithState2);
            mutableScatterMap.set(lifecycleObserver, fastSafeIterableMap$Entry2);
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = (FastSafeIterableMap$Entry) processFinisher.lastActivityManager;
            if (fastSafeIterableMap$Entry3 == null) {
                processFinisher.config = fastSafeIterableMap$Entry2;
                processFinisher.lastActivityManager = fastSafeIterableMap$Entry2;
            } else {
                fastSafeIterableMap$Entry3.next = fastSafeIterableMap$Entry2;
                fastSafeIterableMap$Entry2.prev = fastSafeIterableMap$Entry3;
                processFinisher.lastActivityManager = fastSafeIterableMap$Entry2;
            }
            observerWithState = null;
        }
        if (observerWithState == null && (lifecycleOwner = (LifecycleOwner) ((WeakReference) this.lifecycleOwner.imageLoader).get()) != null) {
            boolean z3 = this.addingObserverCounter != 0 || this.handlingEvent;
            Lifecycle.State calculateTargetState = calculateTargetState(lifecycleObserver);
            this.addingObserverCounter++;
            while (observerWithState2.state.compareTo(calculateTargetState) < 0) {
                ProcessFinisher processFinisher2 = this.observerMap;
                processFinisher2.getClass();
                if (!((MutableScatterMap) processFinisher2.context).containsKey(lifecycleObserver)) {
                    break;
                }
                Lifecycle.State state3 = observerWithState2.state;
                ArrayList arrayList = this.parentStates;
                arrayList.add(state3);
                Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                Lifecycle.State state4 = observerWithState2.state;
                companion.getClass();
                state4.getClass();
                int ordinal = state4.ordinal();
                Lifecycle.Event event = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? null : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE;
                if (event == null) {
                    LayoutNode$$ExternalSyntheticBUOutline0.m(observerWithState2.state, "no event up from ");
                    return;
                } else {
                    observerWithState2.dispatchEvent(lifecycleOwner, event);
                    CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList);
                    calculateTargetState = calculateTargetState(lifecycleObserver);
                }
            }
            if (!z3) {
                sync();
            }
            this.addingObserverCounter--;
        }
    }

    public final Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        ProcessFinisher processFinisher = this.observerMap;
        processFinisher.getClass();
        lifecycleObserver.getClass();
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) ((MutableScatterMap) processFinisher.context).get(lifecycleObserver);
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = fastSafeIterableMap$Entry != null ? fastSafeIterableMap$Entry.prev : null;
        Lifecycle.State state = fastSafeIterableMap$Entry2 != null ? fastSafeIterableMap$Entry2.value.state : null;
        ArrayList arrayList = this.parentStates;
        Lifecycle.State state2 = arrayList.isEmpty() ? null : (Lifecycle.State) Modifier.CC.m(1, arrayList);
        Lifecycle.State state3 = this.state;
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    public final void enforceMainThreadIfNeeded(String str) {
        if (this.enforceMainThread) {
            ArchTaskExecutor.getInstance().mDelegate.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Object) Modifier.CC.m("Method ", str, " must be called on the main thread"));
        }
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        event.getClass();
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    public final void moveToState(Lifecycle.State state) {
        if (this.state == state) {
            return;
        }
        LifecycleOwner lifecycleOwner = (LifecycleOwner) ((WeakReference) this.lifecycleOwner.imageLoader).get();
        Lifecycle.State state2 = this.state;
        Lifecycle.State state3 = Lifecycle.State.INITIALIZED;
        Lifecycle.State state4 = Lifecycle.State.DESTROYED;
        if (state2 == state3 && state == state4) {
            throw new IllegalStateException(("State must be at least '" + Lifecycle.State.CREATED + "' to be moved to '" + state + "' in component " + lifecycleOwner).toString());
        }
        if (state2 == state4 && state2 != state) {
            throw new IllegalStateException(("State is '" + state4 + "' and cannot be moved to `" + state + "` in component " + lifecycleOwner).toString());
        }
        this.state = state;
        if (this.handlingEvent || this.addingObserverCounter != 0) {
            this.newEventOccurred = true;
            return;
        }
        this.handlingEvent = true;
        sync();
        this.handlingEvent = false;
        if (this.state == state4) {
            this.observerMap = new ProcessFinisher(21);
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("removeObserver");
        ProcessFinisher processFinisher = this.observerMap;
        processFinisher.getClass();
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) ((MutableScatterMap) processFinisher.context).remove(lifecycleObserver);
        if (fastSafeIterableMap$Entry == null) {
            return;
        }
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = fastSafeIterableMap$Entry.prev;
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = fastSafeIterableMap$Entry.next;
        if (fastSafeIterableMap$Entry2 == null) {
            processFinisher.config = fastSafeIterableMap$Entry3;
        } else {
            fastSafeIterableMap$Entry2.next = fastSafeIterableMap$Entry3;
        }
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry4 = fastSafeIterableMap$Entry.next;
        if (fastSafeIterableMap$Entry4 == null) {
            processFinisher.lastActivityManager = fastSafeIterableMap$Entry2;
        } else {
            fastSafeIterableMap$Entry4.prev = fastSafeIterableMap$Entry2;
        }
        fastSafeIterableMap$Entry.isRemoved = true;
    }

    public final void setCurrentState(Lifecycle.State state) {
        state.getClass();
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }

    public final void sync() {
        Object obj = ((WeakReference) this.lifecycleOwner.imageLoader).get();
        if (obj == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
        while (true) {
            ProcessFinisher processFinisher = this.observerMap;
            final int i = 0;
            if (((MutableScatterMap) processFinisher.context)._size == 0) {
                break;
            }
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) processFinisher.config;
            if (fastSafeIterableMap$Entry == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("Collection is empty.");
                return;
            }
            Lifecycle.State state = fastSafeIterableMap$Entry.value.state;
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = (FastSafeIterableMap$Entry) processFinisher.lastActivityManager;
            if (fastSafeIterableMap$Entry2 == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("Collection is empty.");
                return;
            }
            Lifecycle.State state2 = fastSafeIterableMap$Entry2.value.state;
            if (state == state2 && this.state == state2) {
                break;
            }
            this.newEventOccurred = false;
            Lifecycle.State state3 = this.state;
            if (fastSafeIterableMap$Entry == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("Collection is empty.");
                return;
            }
            if (state3.compareTo(state) < 0) {
                ProcessFinisher processFinisher2 = this.observerMap;
                Function1 function1 = new Function1(this) { // from class: androidx.lifecycle.LifecycleRegistry$$ExternalSyntheticLambda0
                    public final /* synthetic */ LifecycleRegistry f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i2 = i;
                        Unit unit = Unit.INSTANCE;
                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                        LifecycleRegistry lifecycleRegistry = this.f$0;
                        Map.Entry entry = (Map.Entry) obj2;
                        switch (i2) {
                            case 0:
                                entry.getClass();
                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry.getValue();
                                while (true) {
                                    Lifecycle.State state4 = observerWithState.state;
                                    Lifecycle.State state5 = lifecycleRegistry.state;
                                    ArrayList arrayList = lifecycleRegistry.parentStates;
                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.newEventOccurred) {
                                        ProcessFinisher processFinisher3 = lifecycleRegistry.observerMap;
                                        processFinisher3.getClass();
                                        lifecycleObserver.getClass();
                                        if (!((MutableScatterMap) processFinisher3.context).containsKey(lifecycleObserver)) {
                                            break;
                                        } else {
                                            Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                                            Lifecycle.State state6 = observerWithState.state;
                                            companion.getClass();
                                            state6.getClass();
                                            int ordinal = state6.ordinal();
                                            Lifecycle.Event event = ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? null : Lifecycle.Event.ON_PAUSE : Lifecycle.Event.ON_STOP : Lifecycle.Event.ON_DESTROY;
                                            if (event == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda1.m(observerWithState.state, "no event down from ");
                                                break;
                                            } else {
                                                arrayList.add(event.getTargetState());
                                                observerWithState.dispatchEvent(lifecycleOwner2, event);
                                                CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList);
                                            }
                                        }
                                    }
                                }
                                break;
                            default:
                                entry.getClass();
                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry.getValue();
                                while (true) {
                                    Lifecycle.State state7 = observerWithState2.state;
                                    Lifecycle.State state8 = lifecycleRegistry.state;
                                    ArrayList arrayList2 = lifecycleRegistry.parentStates;
                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.newEventOccurred) {
                                        ProcessFinisher processFinisher4 = lifecycleRegistry.observerMap;
                                        processFinisher4.getClass();
                                        lifecycleObserver2.getClass();
                                        if (!((MutableScatterMap) processFinisher4.context).containsKey(lifecycleObserver2)) {
                                            break;
                                        } else {
                                            arrayList2.add(observerWithState2.state);
                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.Companion;
                                            Lifecycle.State state9 = observerWithState2.state;
                                            companion2.getClass();
                                            state9.getClass();
                                            int ordinal2 = state9.ordinal();
                                            Lifecycle.Event event2 = ordinal2 != 1 ? ordinal2 != 2 ? ordinal2 != 3 ? null : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE;
                                            if (event2 == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda1.m(observerWithState2.state, "no event up from ");
                                                break;
                                            } else {
                                                observerWithState2.dispatchEvent(lifecycleOwner2, event2);
                                                CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList2);
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                        return null;
                    }
                };
                processFinisher2.getClass();
                for (FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = (FastSafeIterableMap$Entry) processFinisher2.lastActivityManager; fastSafeIterableMap$Entry3 != null; fastSafeIterableMap$Entry3 = fastSafeIterableMap$Entry3.prev) {
                    if (!fastSafeIterableMap$Entry3.isRemoved) {
                        function1.invoke(fastSafeIterableMap$Entry3);
                    }
                }
            }
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry4 = (FastSafeIterableMap$Entry) this.observerMap.lastActivityManager;
            if (!this.newEventOccurred && fastSafeIterableMap$Entry4 != null && this.state.compareTo(fastSafeIterableMap$Entry4.value.state) > 0) {
                ProcessFinisher processFinisher3 = this.observerMap;
                final int i2 = 1;
                Function1 function12 = new Function1(this) { // from class: androidx.lifecycle.LifecycleRegistry$$ExternalSyntheticLambda0
                    public final /* synthetic */ LifecycleRegistry f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i22 = i2;
                        Unit unit = Unit.INSTANCE;
                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                        LifecycleRegistry lifecycleRegistry = this.f$0;
                        Map.Entry entry = (Map.Entry) obj2;
                        switch (i22) {
                            case 0:
                                entry.getClass();
                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry.getValue();
                                while (true) {
                                    Lifecycle.State state4 = observerWithState.state;
                                    Lifecycle.State state5 = lifecycleRegistry.state;
                                    ArrayList arrayList = lifecycleRegistry.parentStates;
                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.newEventOccurred) {
                                        ProcessFinisher processFinisher32 = lifecycleRegistry.observerMap;
                                        processFinisher32.getClass();
                                        lifecycleObserver.getClass();
                                        if (!((MutableScatterMap) processFinisher32.context).containsKey(lifecycleObserver)) {
                                            break;
                                        } else {
                                            Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                                            Lifecycle.State state6 = observerWithState.state;
                                            companion.getClass();
                                            state6.getClass();
                                            int ordinal = state6.ordinal();
                                            Lifecycle.Event event = ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? null : Lifecycle.Event.ON_PAUSE : Lifecycle.Event.ON_STOP : Lifecycle.Event.ON_DESTROY;
                                            if (event == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda1.m(observerWithState.state, "no event down from ");
                                                break;
                                            } else {
                                                arrayList.add(event.getTargetState());
                                                observerWithState.dispatchEvent(lifecycleOwner2, event);
                                                CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList);
                                            }
                                        }
                                    }
                                }
                                break;
                            default:
                                entry.getClass();
                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry.getValue();
                                while (true) {
                                    Lifecycle.State state7 = observerWithState2.state;
                                    Lifecycle.State state8 = lifecycleRegistry.state;
                                    ArrayList arrayList2 = lifecycleRegistry.parentStates;
                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.newEventOccurred) {
                                        ProcessFinisher processFinisher4 = lifecycleRegistry.observerMap;
                                        processFinisher4.getClass();
                                        lifecycleObserver2.getClass();
                                        if (!((MutableScatterMap) processFinisher4.context).containsKey(lifecycleObserver2)) {
                                            break;
                                        } else {
                                            arrayList2.add(observerWithState2.state);
                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.Companion;
                                            Lifecycle.State state9 = observerWithState2.state;
                                            companion2.getClass();
                                            state9.getClass();
                                            int ordinal2 = state9.ordinal();
                                            Lifecycle.Event event2 = ordinal2 != 1 ? ordinal2 != 2 ? ordinal2 != 3 ? null : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE;
                                            if (event2 == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda1.m(observerWithState2.state, "no event up from ");
                                                break;
                                            } else {
                                                observerWithState2.dispatchEvent(lifecycleOwner2, event2);
                                                CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList2);
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                        return null;
                    }
                };
                processFinisher3.getClass();
                for (FastSafeIterableMap$Entry fastSafeIterableMap$Entry5 = (FastSafeIterableMap$Entry) processFinisher3.config; fastSafeIterableMap$Entry5 != null; fastSafeIterableMap$Entry5 = fastSafeIterableMap$Entry5.next) {
                    if (!fastSafeIterableMap$Entry5.isRemoved) {
                        function12.invoke(fastSafeIterableMap$Entry5);
                    }
                }
            }
        }
        this.newEventOccurred = false;
        this._currentStateFlow.setValue(this.state);
    }
}
