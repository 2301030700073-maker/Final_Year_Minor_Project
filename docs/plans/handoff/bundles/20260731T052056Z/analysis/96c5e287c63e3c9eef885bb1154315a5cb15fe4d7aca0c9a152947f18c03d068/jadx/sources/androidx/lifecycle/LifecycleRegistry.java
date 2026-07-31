package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.Animation;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleRegistry;
import androidx.paging.HintHandler;
import androidx.savedstate.Recreator;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecycleRegistry {
    public final StateFlowImpl _currentStateFlow;
    public int addingObserverCounter;
    public final boolean enforceMainThread;
    public boolean handlingEvent;
    public final WeakReference lifecycleOwner;
    public boolean newEventOccurred;
    public Lifecycle$State state;
    public HintHandler internalScopeRef = new HintHandler(25);
    public SVG observerMap = new SVG(19);
    public final ArrayList parentStates = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ObserverWithState {
        public LifecycleEventObserver lifecycleObserver;
        public Lifecycle$State state;

        public final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
            Lifecycle$State targetState = lifecycle$Event.getTargetState();
            Lifecycle$State lifecycle$State = this.state;
            if (targetState != null && targetState.compareTo(lifecycle$State) < 0) {
                lifecycle$State = targetState;
            }
            this.state = lifecycle$State;
            this.lifecycleObserver.onStateChanged(lifecycleOwner, lifecycle$Event);
            this.state = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.enforceMainThread = z;
        this.lifecycleOwner = new WeakReference(lifecycleOwner);
        Lifecycle$State lifecycle$State = Lifecycle$State.INITIALIZED;
        this.state = lifecycle$State;
        this._currentStateFlow = StateFlowKt.MutableStateFlow(lifecycle$State);
    }

    public final void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleEventObserver defaultLifecycleObserverAdapter;
        LifecycleOwner lifecycleOwner;
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle$State lifecycle$State = this.state;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.DESTROYED;
        if (lifecycle$State != lifecycle$State2) {
            lifecycle$State2 = Lifecycle$State.INITIALIZED;
        }
        lifecycle$State2.getClass();
        ObserverWithState observerWithState = new ObserverWithState();
        observerWithState.state = lifecycle$State2;
        HashMap hashMap = Lifecycling.callbackCache;
        boolean z = lifecycleObserver instanceof LifecycleEventObserver;
        boolean z2 = lifecycleObserver instanceof DefaultLifecycleObserver;
        ObserverWithState observerWithState2 = null;
        if (z && z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(r4, (DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
        } else if (z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(r4, (DefaultLifecycleObserver) lifecycleObserver, observerWithState2);
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
                defaultLifecycleObserverAdapter = new Recreator(3, generatedAdapterArr);
            } else {
                defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(lifecycleObserver);
            }
        }
        observerWithState.lifecycleObserver = defaultLifecycleObserverAdapter;
        SVG svg = this.observerMap;
        svg.getClass();
        MutableScatterMap mutableScatterMap = (MutableScatterMap) svg.rootElement;
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) mutableScatterMap.get(lifecycleObserver);
        if (fastSafeIterableMap$Entry != null) {
            observerWithState2 = fastSafeIterableMap$Entry.value;
        } else {
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = new FastSafeIterableMap$Entry(lifecycleObserver, observerWithState);
            mutableScatterMap.set(lifecycleObserver, fastSafeIterableMap$Entry2);
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = (FastSafeIterableMap$Entry) svg.idToElementMap;
            if (fastSafeIterableMap$Entry3 == null) {
                svg.cssRules = fastSafeIterableMap$Entry2;
                svg.idToElementMap = fastSafeIterableMap$Entry2;
            } else {
                fastSafeIterableMap$Entry3.next = fastSafeIterableMap$Entry2;
                fastSafeIterableMap$Entry2.prev = fastSafeIterableMap$Entry3;
                svg.idToElementMap = fastSafeIterableMap$Entry2;
            }
        }
        if (observerWithState2 == null && (lifecycleOwner = (LifecycleOwner) this.lifecycleOwner.delegate.get()) != null) {
            r4 = (this.addingObserverCounter != 0 || this.handlingEvent) ? 1 : 0;
            Lifecycle$State calculateTargetState = calculateTargetState(lifecycleObserver);
            this.addingObserverCounter++;
            while (observerWithState.state.compareTo(calculateTargetState) < 0) {
                SVG svg2 = this.observerMap;
                svg2.getClass();
                if (!((MutableScatterMap) svg2.rootElement).containsKey(lifecycleObserver)) {
                    break;
                }
                Lifecycle$State lifecycle$State3 = observerWithState.state;
                ArrayList arrayList = this.parentStates;
                arrayList.add(lifecycle$State3);
                Lifecycle$Event.Companion companion = Lifecycle$Event.Companion;
                Lifecycle$State lifecycle$State4 = observerWithState.state;
                companion.getClass();
                Lifecycle$Event upFrom = Lifecycle$Event.Companion.upFrom(lifecycle$State4);
                if (upFrom == null) {
                    Gson$$ExternalSyntheticBUOutline0.m$3("no event up from ", observerWithState.state);
                    return;
                } else {
                    observerWithState.dispatchEvent(lifecycleOwner, upFrom);
                    CollectionsKt.removeLastOrNull(arrayList);
                    calculateTargetState = calculateTargetState(lifecycleObserver);
                }
            }
            if (r4 == 0) {
                sync();
            }
            this.addingObserverCounter--;
        }
    }

    public final Lifecycle$State calculateTargetState(LifecycleObserver lifecycleObserver) {
        SVG svg = this.observerMap;
        svg.getClass();
        lifecycleObserver.getClass();
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) ((MutableScatterMap) svg.rootElement).get(lifecycleObserver);
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = fastSafeIterableMap$Entry != null ? fastSafeIterableMap$Entry.prev : null;
        Lifecycle$State lifecycle$State = fastSafeIterableMap$Entry2 != null ? fastSafeIterableMap$Entry2.value.state : null;
        ArrayList arrayList = this.parentStates;
        Lifecycle$State lifecycle$State2 = arrayList.isEmpty() ? null : (Lifecycle$State) Animation.CC.m(1, arrayList);
        Lifecycle$State lifecycle$State3 = this.state;
        if (lifecycle$State == null || lifecycle$State.compareTo(lifecycle$State3) >= 0) {
            lifecycle$State = lifecycle$State3;
        }
        return (lifecycle$State2 == null || lifecycle$State2.compareTo(lifecycle$State) >= 0) ? lifecycle$State : lifecycle$State2;
    }

    public final void enforceMainThreadIfNeeded(String str) {
        if (this.enforceMainThread) {
            ArchTaskExecutor.getInstance().getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m("Method ", str, " must be called on the main thread"));
        }
    }

    public final void handleLifecycleEvent(Lifecycle$Event lifecycle$Event) {
        lifecycle$Event.getClass();
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(lifecycle$Event.getTargetState());
    }

    public final void moveToState(Lifecycle$State lifecycle$State) {
        if (this.state == lifecycle$State) {
            return;
        }
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.lifecycleOwner.delegate.get();
        Lifecycle$State lifecycle$State2 = this.state;
        if (lifecycle$State2 == Lifecycle$State.INITIALIZED && lifecycle$State == Lifecycle$State.DESTROYED) {
            throw new IllegalStateException(("State must be at least '" + Lifecycle$State.CREATED + "' to be moved to '" + lifecycle$State + "' in component " + lifecycleOwner).toString());
        }
        Lifecycle$State lifecycle$State3 = Lifecycle$State.DESTROYED;
        if (lifecycle$State2 == lifecycle$State3 && lifecycle$State2 != lifecycle$State) {
            throw new IllegalStateException(("State is '" + lifecycle$State3 + "' and cannot be moved to `" + lifecycle$State + "` in component " + lifecycleOwner).toString());
        }
        this.state = lifecycle$State;
        if (this.handlingEvent || this.addingObserverCounter != 0) {
            this.newEventOccurred = true;
            return;
        }
        this.handlingEvent = true;
        sync();
        this.handlingEvent = false;
        if (this.state == lifecycle$State3) {
            this.observerMap = new SVG(19);
        }
    }

    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("removeObserver");
        SVG svg = this.observerMap;
        svg.getClass();
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) ((MutableScatterMap) svg.rootElement).remove(lifecycleObserver);
        if (fastSafeIterableMap$Entry == null) {
            return;
        }
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = fastSafeIterableMap$Entry.prev;
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = fastSafeIterableMap$Entry.next;
        if (fastSafeIterableMap$Entry2 == null) {
            svg.cssRules = fastSafeIterableMap$Entry3;
        } else {
            fastSafeIterableMap$Entry2.next = fastSafeIterableMap$Entry3;
        }
        FastSafeIterableMap$Entry fastSafeIterableMap$Entry4 = fastSafeIterableMap$Entry.next;
        if (fastSafeIterableMap$Entry4 == null) {
            svg.idToElementMap = fastSafeIterableMap$Entry2;
        } else {
            fastSafeIterableMap$Entry4.prev = fastSafeIterableMap$Entry2;
        }
        fastSafeIterableMap$Entry.isRemoved = true;
    }

    public final void setCurrentState(Lifecycle$State lifecycle$State) {
        lifecycle$State.getClass();
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(lifecycle$State);
    }

    public final void sync() {
        Object obj = this.lifecycleOwner.delegate.get();
        if (obj == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
        while (true) {
            SVG svg = this.observerMap;
            final int i = 0;
            if (((MutableScatterMap) svg.rootElement)._size == 0) {
                break;
            }
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) svg.cssRules;
            if (fastSafeIterableMap$Entry == null) {
                Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
                return;
            }
            Lifecycle$State lifecycle$State = fastSafeIterableMap$Entry.value.state;
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry2 = (FastSafeIterableMap$Entry) svg.idToElementMap;
            if (fastSafeIterableMap$Entry2 == null) {
                Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
                return;
            }
            Lifecycle$State lifecycle$State2 = fastSafeIterableMap$Entry2.value.state;
            if (lifecycle$State == lifecycle$State2 && this.state == lifecycle$State2) {
                break;
            }
            this.newEventOccurred = false;
            Lifecycle$State lifecycle$State3 = this.state;
            if (fastSafeIterableMap$Entry == null) {
                Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
                return;
            }
            if (lifecycle$State3.compareTo(lifecycle$State) < 0) {
                SVG svg2 = this.observerMap;
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
                                    Lifecycle$State lifecycle$State4 = observerWithState.state;
                                    Lifecycle$State lifecycle$State5 = lifecycleRegistry.state;
                                    ArrayList arrayList = lifecycleRegistry.parentStates;
                                    if (lifecycle$State4.compareTo(lifecycle$State5) > 0 && !lifecycleRegistry.newEventOccurred) {
                                        SVG svg3 = lifecycleRegistry.observerMap;
                                        svg3.getClass();
                                        lifecycleObserver.getClass();
                                        if (!((MutableScatterMap) svg3.rootElement).containsKey(lifecycleObserver)) {
                                            break;
                                        } else {
                                            Lifecycle$Event.Companion companion = Lifecycle$Event.Companion;
                                            Lifecycle$State lifecycle$State6 = observerWithState.state;
                                            companion.getClass();
                                            Lifecycle$Event downFrom = Lifecycle$Event.Companion.downFrom(lifecycle$State6);
                                            if (downFrom == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("no event down from ", observerWithState.state);
                                                break;
                                            } else {
                                                arrayList.add(downFrom.getTargetState());
                                                observerWithState.dispatchEvent(lifecycleOwner2, downFrom);
                                                CollectionsKt.removeLastOrNull(arrayList);
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
                                    Lifecycle$State lifecycle$State7 = observerWithState2.state;
                                    Lifecycle$State lifecycle$State8 = lifecycleRegistry.state;
                                    ArrayList arrayList2 = lifecycleRegistry.parentStates;
                                    if (lifecycle$State7.compareTo(lifecycle$State8) < 0 && !lifecycleRegistry.newEventOccurred) {
                                        SVG svg4 = lifecycleRegistry.observerMap;
                                        svg4.getClass();
                                        lifecycleObserver2.getClass();
                                        if (!((MutableScatterMap) svg4.rootElement).containsKey(lifecycleObserver2)) {
                                            break;
                                        } else {
                                            arrayList2.add(observerWithState2.state);
                                            Lifecycle$Event.Companion companion2 = Lifecycle$Event.Companion;
                                            Lifecycle$State lifecycle$State9 = observerWithState2.state;
                                            companion2.getClass();
                                            Lifecycle$Event upFrom = Lifecycle$Event.Companion.upFrom(lifecycle$State9);
                                            if (upFrom == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("no event up from ", observerWithState2.state);
                                                break;
                                            } else {
                                                observerWithState2.dispatchEvent(lifecycleOwner2, upFrom);
                                                CollectionsKt.removeLastOrNull(arrayList2);
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                        return null;
                    }
                };
                svg2.getClass();
                for (FastSafeIterableMap$Entry fastSafeIterableMap$Entry3 = (FastSafeIterableMap$Entry) svg2.idToElementMap; fastSafeIterableMap$Entry3 != null; fastSafeIterableMap$Entry3 = fastSafeIterableMap$Entry3.prev) {
                    if (!fastSafeIterableMap$Entry3.isRemoved) {
                        function1.invoke(fastSafeIterableMap$Entry3);
                    }
                }
            }
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry4 = (FastSafeIterableMap$Entry) this.observerMap.idToElementMap;
            if (!this.newEventOccurred && fastSafeIterableMap$Entry4 != null && this.state.compareTo(fastSafeIterableMap$Entry4.value.state) > 0) {
                SVG svg3 = this.observerMap;
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
                                    Lifecycle$State lifecycle$State4 = observerWithState.state;
                                    Lifecycle$State lifecycle$State5 = lifecycleRegistry.state;
                                    ArrayList arrayList = lifecycleRegistry.parentStates;
                                    if (lifecycle$State4.compareTo(lifecycle$State5) > 0 && !lifecycleRegistry.newEventOccurred) {
                                        SVG svg32 = lifecycleRegistry.observerMap;
                                        svg32.getClass();
                                        lifecycleObserver.getClass();
                                        if (!((MutableScatterMap) svg32.rootElement).containsKey(lifecycleObserver)) {
                                            break;
                                        } else {
                                            Lifecycle$Event.Companion companion = Lifecycle$Event.Companion;
                                            Lifecycle$State lifecycle$State6 = observerWithState.state;
                                            companion.getClass();
                                            Lifecycle$Event downFrom = Lifecycle$Event.Companion.downFrom(lifecycle$State6);
                                            if (downFrom == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("no event down from ", observerWithState.state);
                                                break;
                                            } else {
                                                arrayList.add(downFrom.getTargetState());
                                                observerWithState.dispatchEvent(lifecycleOwner2, downFrom);
                                                CollectionsKt.removeLastOrNull(arrayList);
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
                                    Lifecycle$State lifecycle$State7 = observerWithState2.state;
                                    Lifecycle$State lifecycle$State8 = lifecycleRegistry.state;
                                    ArrayList arrayList2 = lifecycleRegistry.parentStates;
                                    if (lifecycle$State7.compareTo(lifecycle$State8) < 0 && !lifecycleRegistry.newEventOccurred) {
                                        SVG svg4 = lifecycleRegistry.observerMap;
                                        svg4.getClass();
                                        lifecycleObserver2.getClass();
                                        if (!((MutableScatterMap) svg4.rootElement).containsKey(lifecycleObserver2)) {
                                            break;
                                        } else {
                                            arrayList2.add(observerWithState2.state);
                                            Lifecycle$Event.Companion companion2 = Lifecycle$Event.Companion;
                                            Lifecycle$State lifecycle$State9 = observerWithState2.state;
                                            companion2.getClass();
                                            Lifecycle$Event upFrom = Lifecycle$Event.Companion.upFrom(lifecycle$State9);
                                            if (upFrom == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("no event up from ", observerWithState2.state);
                                                break;
                                            } else {
                                                observerWithState2.dispatchEvent(lifecycleOwner2, upFrom);
                                                CollectionsKt.removeLastOrNull(arrayList2);
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                        return null;
                    }
                };
                svg3.getClass();
                for (FastSafeIterableMap$Entry fastSafeIterableMap$Entry5 = (FastSafeIterableMap$Entry) svg3.cssRules; fastSafeIterableMap$Entry5 != null; fastSafeIterableMap$Entry5 = fastSafeIterableMap$Entry5.next) {
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
