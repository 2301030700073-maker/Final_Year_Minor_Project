package net.thunderbird.core.ui.contract.mvi;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import java.util.LinkedHashSet;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseViewModel extends ViewModel implements UnidirectionalViewModel {
    public final SharedFlowImpl _effect;
    public final StateFlowImpl _state;
    public final ReadonlySharedFlow effect;
    public final LinkedHashSet handledOneTimeEvents;
    public final ReadonlyStateFlow state;

    public BaseViewModel(Object obj) {
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(obj);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 7, null);
        this._effect = MutableSharedFlow$default;
        this.effect = new ReadonlySharedFlow(MutableSharedFlow$default, null);
        this.handledOneTimeEvents = new LinkedHashSet();
    }

    public final void emitEffect(Object obj) {
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new Preferences$getAccountsFlow$1((Object) this, obj, (Continuation) null, 25, false), 3);
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final ReadonlySharedFlow getEffect() {
        return this.effect;
    }

    public final void handleOneTimeEvent(Object obj, Function0 function0) {
        LinkedHashSet linkedHashSet = this.handledOneTimeEvents;
        if (linkedHashSet.contains(obj)) {
            return;
        }
        linkedHashSet.add(obj);
        function0.invoke();
    }

    public final void updateState(Function1 function1) {
        StateFlowImpl stateFlowImpl;
        Object value;
        function1.getClass();
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, function1.invoke(value)));
    }
}
