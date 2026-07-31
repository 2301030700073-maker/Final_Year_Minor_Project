package androidx.work.impl.constraints;

import app.k9mail.legacy.message.controller.MessageCounts;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker$track$$inlined$combine$1$2 implements Function0 {
    public final /* synthetic */ Flow[] $flowArray;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ WorkConstraintsTracker$track$$inlined$combine$1$2(Flow[] flowArr, int i) {
        this.$r8$classId = i;
        this.$flowArray = flowArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return new ConstraintsState[this.$flowArray.length];
            default:
                return new MessageCounts[this.$flowArray.length];
        }
    }
}
