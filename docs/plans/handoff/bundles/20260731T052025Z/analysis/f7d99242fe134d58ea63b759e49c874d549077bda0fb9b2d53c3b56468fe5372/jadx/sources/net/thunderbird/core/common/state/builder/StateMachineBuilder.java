package net.thunderbird.core.common.state.builder;

import androidx.compose.material.ripple.StateLayer;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import coil3.size.ViewSizeResolver;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.common.state.DefaultStateMachine$StateListeners;
import net.thunderbird.core.common.state.DefaultStateMachine$StateRegistry;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateMachineBuilder {
    public StateLayer debuggerBuilder;
    public MessageListState.WarmingUp initialState;
    public String logTag;
    public Logger logger;
    public final CloseableCoroutineScope scope;
    public final LinkedHashMap stateRegistrar = new LinkedHashMap();

    public StateMachineBuilder(CloseableCoroutineScope closeableCoroutineScope) {
        this.scope = closeableCoroutineScope;
    }

    public final void state(ClassReference classReference, Function1 function1) {
        LinkedHashMap linkedHashMap = this.stateRegistrar;
        if (linkedHashMap.containsKey(classReference)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver.CC.m(classReference.getSimpleName(), " is already registered as a state."));
            return;
        }
        if (this.initialState != null && classReference.equals(Reflection.getOrCreateKotlinClass(MessageListState.WarmingUp.class))) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver.CC.m(classReference.getSimpleName(), " is already defined as initial state."));
            return;
        }
        InternalStateBuilder internalStateBuilder = new InternalStateBuilder(classReference);
        function1.invoke(internalStateBuilder);
        linkedHashMap.put(classReference, new DefaultStateMachine$StateRegistry(classReference, new DefaultStateMachine$StateListeners(internalStateBuilder.onEnter), internalStateBuilder.transitions));
    }
}
