package androidx.compose.material3;

import androidx.compose.animation.core.Transition;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: androidx.compose.material3.TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class TabKt$TabTransitionKlgxPg$$inlined$animateColor$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Transition $this_animateValue;

    public /* synthetic */ TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(Transition transition, int i) {
        this.$r8$classId = i;
        this.$this_animateValue = transition;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Transition transition = this.$this_animateValue;
        switch (i) {
            case 0:
                return transition.targetState$delegate.getValue();
            case 1:
                return transition.getSegment();
            case 2:
                return transition.targetState$delegate.getValue();
            case 3:
                return transition.getSegment();
            case 4:
                return transition.targetState$delegate.getValue();
            case 5:
                return transition.getSegment();
            case 6:
                return transition.targetState$delegate.getValue();
            case 7:
                return transition.getSegment();
            case 8:
                return transition.targetState$delegate.getValue();
            case 9:
                return transition.getSegment();
            case 10:
                return transition.targetState$delegate.getValue();
            case 11:
                return transition.getSegment();
            case 12:
                return transition.targetState$delegate.getValue();
            default:
                return transition.getSegment();
        }
    }
}
