package net.thunderbird.core.common.state.builder;

import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.saveable.ListSaverKt$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.reflect.KClass;
import net.thunderbird.core.common.state.StateMachine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InternalStateBuilder {
    public MovableContentKt$$ExternalSyntheticLambda0 onEnter;
    public final ClassReference stateClass;
    public final LinkedHashMap transitions = new LinkedHashMap();

    public InternalStateBuilder(ClassReference classReference) {
        this.stateClass = classReference;
    }

    public final void transition(KClass kClass, ClassReference classReference, Function2 function2, Function2 function22) {
        kClass.getClass();
        this.transitions.put(new Pair(this.stateClass, classReference), new StateMachine.Transition(new ListSaverKt$$ExternalSyntheticLambda0(3, function2), new ListSaverKt$$ExternalSyntheticLambda0(4, function22)));
    }
}
