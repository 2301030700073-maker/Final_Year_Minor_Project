package androidx.navigationevent;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NavigationEventTransitionState {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Idle extends NavigationEventTransitionState {
        public static final Idle INSTANCE = new Idle();

        public final String toString() {
            return "Idle()";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InProgress extends NavigationEventTransitionState {
        public final int direction;
        public final NavigationEvent latestEvent;

        public InProgress(NavigationEvent navigationEvent, int i) {
            navigationEvent.getClass();
            this.latestEvent = navigationEvent;
            this.direction = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || InProgress.class != obj.getClass()) {
                return false;
            }
            InProgress inProgress = (InProgress) obj;
            return this.direction == inProgress.direction && Intrinsics.areEqual(this.latestEvent, inProgress.latestEvent);
        }

        public final int hashCode() {
            return this.latestEvent.hashCode() + (this.direction * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("InProgress(latestEvent=");
            sb.append(this.latestEvent);
            sb.append(", direction=");
            return Modifier.CC.m(sb, this.direction, ')');
        }
    }
}
