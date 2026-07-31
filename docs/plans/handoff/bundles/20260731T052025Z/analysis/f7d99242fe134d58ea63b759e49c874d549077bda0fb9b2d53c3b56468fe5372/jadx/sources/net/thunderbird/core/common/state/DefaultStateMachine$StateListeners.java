package net.thunderbird.core.common.state;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultStateMachine$StateListeners {
    public final Function3 onEnter;

    public DefaultStateMachine$StateListeners(Function3 function3) {
        this.onEnter = function3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DefaultStateMachine$StateListeners) && Intrinsics.areEqual(this.onEnter, ((DefaultStateMachine$StateListeners) obj).onEnter);
    }

    public final int hashCode() {
        Function3 function3 = this.onEnter;
        return (function3 == null ? 0 : function3.hashCode()) * 31;
    }

    public final String toString() {
        return "StateListeners(onEnter=" + this.onEnter + ", onExit=null)";
    }
}
