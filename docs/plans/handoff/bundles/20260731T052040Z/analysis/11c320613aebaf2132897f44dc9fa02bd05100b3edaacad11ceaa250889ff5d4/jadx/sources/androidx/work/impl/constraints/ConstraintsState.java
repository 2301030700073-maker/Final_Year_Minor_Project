package androidx.work.impl.constraints;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ConstraintsState {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ConstraintsMet extends ConstraintsState {
        public static final ConstraintsMet INSTANCE = new ConstraintsMet();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ConstraintsNotMet extends ConstraintsState {
        public final int reason;

        public ConstraintsNotMet(int i) {
            this.reason = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConstraintsNotMet) && this.reason == ((ConstraintsNotMet) obj).reason;
        }

        public final int hashCode() {
            return this.reason;
        }

        public final String toString() {
            return Modifier.CC.m(new StringBuilder("ConstraintsNotMet(reason="), this.reason, ')');
        }
    }
}
