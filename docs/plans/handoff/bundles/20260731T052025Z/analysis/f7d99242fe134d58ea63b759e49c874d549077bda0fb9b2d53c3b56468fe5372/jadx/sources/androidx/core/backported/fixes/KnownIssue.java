package androidx.core.backported.fixes;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KnownIssue {
    public final Integer alias;
    public final Set manuallyTestedFingerprints;
    public final TextKt$$ExternalSyntheticLambda4 precondition;

    public KnownIssue(Set set, TextKt$$ExternalSyntheticLambda4 textKt$$ExternalSyntheticLambda4) {
        set.getClass();
        this.alias = 5;
        this.manuallyTestedFingerprints = set;
        this.precondition = textKt$$ExternalSyntheticLambda4;
    }

    public final boolean equals(Object obj) {
        return obj instanceof KnownIssue;
    }

    public final int hashCode() {
        return 398591036;
    }

    public final String toString() {
        Integer num = this.alias;
        if (num == null) {
            return "398591036 without alias";
        }
        return "398591036 with alias " + num.intValue();
    }
}
