package net.thunderbird.core.common.state;

import java.util.Map;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultStateMachine$StateRegistry {
    public final DefaultStateMachine$StateListeners listeners;
    public final ClassReference stateClass;
    public final Map transitions;

    public DefaultStateMachine$StateRegistry(ClassReference classReference, DefaultStateMachine$StateListeners defaultStateMachine$StateListeners, Map map) {
        map.getClass();
        this.stateClass = classReference;
        this.listeners = defaultStateMachine$StateListeners;
        this.transitions = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DefaultStateMachine$StateRegistry)) {
            return false;
        }
        DefaultStateMachine$StateRegistry defaultStateMachine$StateRegistry = (DefaultStateMachine$StateRegistry) obj;
        return this.stateClass.equals(defaultStateMachine$StateRegistry.stateClass) && this.listeners.equals(defaultStateMachine$StateRegistry.listeners) && Intrinsics.areEqual(this.transitions, defaultStateMachine$StateRegistry.transitions);
    }

    public final int hashCode() {
        return this.transitions.hashCode() + ((this.listeners.hashCode() + (((this.stateClass.hashCode() * 31) + 1237) * 31)) * 31);
    }

    public final String toString() {
        return "StateRegistry(stateClass=" + this.stateClass + ", isFinalState=false, listeners=" + this.listeners + ", transitions=" + this.transitions + ")";
    }
}
