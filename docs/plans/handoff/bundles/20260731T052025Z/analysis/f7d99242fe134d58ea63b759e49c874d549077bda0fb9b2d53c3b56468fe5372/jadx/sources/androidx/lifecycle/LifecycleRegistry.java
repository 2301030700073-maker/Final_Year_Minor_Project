package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LifecycleRegistry extends Lifecycle {
    public final StateFlowImpl _currentStateFlow;
    public int addingObserverCounter;
    public final boolean enforceMainThread;
    public boolean handlingEvent;
    public final WeakReference lifecycleOwner;
    public boolean newEventOccurred;
    public FastSafeIterableMap observerMap;
    public final ArrayList parentStates;
    public Lifecycle.State state;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ObserverWithState {
        public LifecycleEventObserver lifecycleObserver;
        public Lifecycle.State state;

        public final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            Lifecycle.State state = this.state;
            state.getClass();
            if (targetState.compareTo(state) < 0) {
                state = targetState;
            }
            this.state = state;
            this.lifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.state = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.internalScopeRef = new AtomicReference();
        this.enforceMainThread = z;
        this.observerMap = new FastSafeIterableMap();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.state = state;
        this.parentStates = new ArrayList();
        this.lifecycleOwner = new WeakReference(lifecycleOwner);
        this._currentStateFlow = FlowKt.MutableStateFlow(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleEventObserver defaultLifecycleObserverAdapter;
        Object obj;
        LifecycleOwner lifecycleOwner;
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.state;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState();
        HashMap hashMap = Lifecycling.callbackCache;
        boolean z = lifecycleObserver instanceof LifecycleEventObserver;
        boolean z2 = lifecycleObserver instanceof DefaultLifecycleObserver;
        int i = 1;
        if (z && z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
        } else if (z2) {
            defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) null);
        } else if (z) {
            defaultLifecycleObserverAdapter = (LifecycleEventObserver) lifecycleObserver;
        } else {
            Class<?> cls = lifecycleObserver.getClass();
            if (Lifecycling.getObserverConstructorType(cls) == 2) {
                Object obj2 = Lifecycling.classToAdapters.get(cls);
                obj2.getClass();
                List list = (List) obj2;
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
                defaultLifecycleObserverAdapter = new SavedStateHandleAttacher(i, generatedAdapterArr);
            } else {
                defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(lifecycleObserver);
            }
        }
        observerWithState.lifecycleObserver = defaultLifecycleObserverAdapter;
        observerWithState.state = state2;
        FastSafeIterableMap fastSafeIterableMap = this.observerMap;
        SafeIterableMap.Entry entry = fastSafeIterableMap.get(lifecycleObserver);
        if (entry != null) {
            obj = entry.mValue;
        } else {
            HashMap hashMap2 = fastSafeIterableMap.mHashMap;
            SafeIterableMap.Entry entry2 = new SafeIterableMap.Entry(lifecycleObserver, observerWithState);
            fastSafeIterableMap.mSize++;
            SafeIterableMap.Entry entry3 = fastSafeIterableMap.mEnd;
            if (entry3 == null) {
                fastSafeIterableMap.mStart = entry2;
                fastSafeIterableMap.mEnd = entry2;
            } else {
                entry3.mNext = entry2;
                entry2.mPrevious = entry3;
                fastSafeIterableMap.mEnd = entry2;
            }
            hashMap2.put(lifecycleObserver, entry2);
            obj = null;
        }
        if (((ObserverWithState) obj) == null && (lifecycleOwner = (LifecycleOwner) this.lifecycleOwner.get()) != null) {
            boolean z3 = this.addingObserverCounter != 0 || this.handlingEvent;
            Lifecycle.State calculateTargetState = calculateTargetState(lifecycleObserver);
            this.addingObserverCounter++;
            while (observerWithState.state.compareTo(calculateTargetState) < 0 && this.observerMap.mHashMap.containsKey(lifecycleObserver)) {
                Lifecycle.State state3 = observerWithState.state;
                ArrayList arrayList = this.parentStates;
                arrayList.add(state3);
                Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                Lifecycle.State state4 = observerWithState.state;
                companion.getClass();
                state4.getClass();
                int ordinal = state4.ordinal();
                Lifecycle.Event event = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? null : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE;
                if (event == null) {
                    StreamSharing$$ExternalSyntheticLambda0.m(observerWithState.state, "no event up from ");
                    return;
                } else {
                    observerWithState.dispatchEvent(lifecycleOwner, event);
                    arrayList.remove(arrayList.size() - 1);
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
        HashMap hashMap = this.observerMap.mHashMap;
        SafeIterableMap.Entry entry = hashMap.containsKey(lifecycleObserver) ? ((SafeIterableMap.Entry) hashMap.get(lifecycleObserver)).mPrevious : null;
        Lifecycle.State state = entry != null ? ((ObserverWithState) entry.mValue).state : null;
        ArrayList arrayList = this.parentStates;
        Lifecycle.State state2 = arrayList.isEmpty() ? null : (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        Lifecycle.State state3 = this.state;
        state3.getClass();
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    public final void enforceMainThreadIfNeeded(String str) {
        if (!this.enforceMainThread || ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Method ", str, " must be called on the main thread"));
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
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.lifecycleOwner.get();
        Lifecycle.State state2 = this.state;
        state2.getClass();
        state.getClass();
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
            this.observerMap = new FastSafeIterableMap();
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        lifecycleObserver.getClass();
        enforceMainThreadIfNeeded("removeObserver");
        this.observerMap.remove(lifecycleObserver);
    }

    public final void setCurrentState(Lifecycle.State state) {
        state.getClass();
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r8.newEventOccurred = false;
        r8._currentStateFlow.setValue(r8.state);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sync() {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LifecycleRegistry.sync():void");
    }
}
