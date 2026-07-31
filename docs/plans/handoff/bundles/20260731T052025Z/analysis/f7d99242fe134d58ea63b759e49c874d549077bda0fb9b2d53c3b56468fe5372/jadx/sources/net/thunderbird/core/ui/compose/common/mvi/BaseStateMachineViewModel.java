package net.thunderbird.core.ui.compose.common.mvi;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;
import net.thunderbird.core.common.state.StateMachine;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListViewModel;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseStateMachineViewModel extends ViewModel implements UnidirectionalViewModel {
    public final SharedFlowImpl _effect;
    public final ReadonlySharedFlow effect;
    public final Logger logger;
    public final ArrayList sideEffectHandlers;

    public BaseStateMachineViewModel(Logger logger, List list) {
        this.logger = logger;
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 7, null);
        this._effect = MutableSharedFlow$default;
        this.effect = new ReadonlySharedFlow(MutableSharedFlow$default, null);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int i = 4;
            int i2 = 2;
            arrayList.add(((MessageListStateSideEffectHandlerFactory) it.next()).create(ViewModelKt.getViewModelScope(this), new ComposableLambdaImpl$invoke$1(i2, this, BaseStateMachineViewModel.class, "event", "event(Ljava/lang/Object;)V", i, 3), new ComposableLambdaImpl$invoke$1(i2, this, BaseStateMachineViewModel.class, "emitEffect", "emitEffect(Ljava/lang/Object;)V", i, 4)));
        }
        this.sideEffectHandlers = arrayList;
        new LinkedHashSet();
    }

    public final void emitEffect(Object obj) {
        obj.getClass();
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new Preferences$getAccountsFlow$1((Object) this, obj, (Continuation) null, 23, false), 3);
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        obj.getClass();
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new MutatorMutex$mutate$2(this, obj, (Continuation) null, 9), 3);
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final ReadonlySharedFlow getEffect() {
        return this.effect;
    }

    public final StateFlow getState() {
        return ((StateMachine) ((MessageListViewModel) this).stateMachine.delegate).getCurrentState();
    }
}
