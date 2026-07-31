package net.thunderbird.core.common.state;

import androidx.compose.runtime.saveable.ListSaverKt$$ExternalSyntheticLambda0;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Instant;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface StateMachine {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StateTransitionRecord {
        public final Object event;
        public final Object newState;
        public final Object previousState;
        public final Instant timestamp;
        public final Transition transition;

        public StateTransitionRecord(Transition transition, Object obj, Object obj2, Object obj3, Instant instant) {
            instant.getClass();
            this.transition = transition;
            this.event = obj;
            this.previousState = obj2;
            this.newState = obj3;
            this.timestamp = instant;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StateTransitionRecord)) {
                return false;
            }
            StateTransitionRecord stateTransitionRecord = (StateTransitionRecord) obj;
            return this.transition.equals(stateTransitionRecord.transition) && this.event.equals(stateTransitionRecord.event) && this.previousState.equals(stateTransitionRecord.previousState) && this.newState.equals(stateTransitionRecord.newState) && Intrinsics.areEqual(this.timestamp, stateTransitionRecord.timestamp);
        }

        public final int hashCode() {
            return this.timestamp.hashCode() + ((this.newState.hashCode() + ((this.previousState.hashCode() + ((this.event.hashCode() + (this.transition.hashCode() * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "StateTransitionRecord(transition=" + this.transition + ", event=" + this.event + ", previousState=" + this.previousState + ", newState=" + this.newState + ", timestamp=" + this.timestamp + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Transition {
        public final ListSaverKt$$ExternalSyntheticLambda0 createNewState;
        public final ListSaverKt$$ExternalSyntheticLambda0 guard;

        public Transition(ListSaverKt$$ExternalSyntheticLambda0 listSaverKt$$ExternalSyntheticLambda0, ListSaverKt$$ExternalSyntheticLambda0 listSaverKt$$ExternalSyntheticLambda02) {
            this.guard = listSaverKt$$ExternalSyntheticLambda0;
            this.createNewState = listSaverKt$$ExternalSyntheticLambda02;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Transition)) {
                return false;
            }
            Transition transition = (Transition) obj;
            return this.guard == transition.guard && this.createNewState == transition.createNewState;
        }

        public final int hashCode() {
            return this.createNewState.hashCode() + (this.guard.hashCode() * 31);
        }

        public final String toString() {
            return "Transition(guard=" + this.guard + ", createNewState=" + this.createNewState + ")";
        }
    }

    StateFlow getCurrentState();

    Object getCurrentStateSnapshot();

    Object process(Object obj, Continuation continuation);
}
