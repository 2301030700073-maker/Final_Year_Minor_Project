package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTextKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SelectionRegistrarImpl f$0;

    public /* synthetic */ BasicTextKt$$ExternalSyntheticLambda0(SelectionRegistrarImpl selectionRegistrarImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = selectionRegistrarImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SelectionRegistrarImpl selectionRegistrarImpl = this.f$0;
        switch (i) {
            case 0:
                AtomicLong atomicLong = selectionRegistrarImpl.incrementId;
                long andIncrement = atomicLong.getAndIncrement();
                while (andIncrement == 0) {
                    andIncrement = atomicLong.getAndIncrement();
                }
                return Long.valueOf(andIncrement);
            default:
                AtomicLong atomicLong2 = selectionRegistrarImpl.incrementId;
                long andIncrement2 = atomicLong2.getAndIncrement();
                while (andIncrement2 == 0) {
                    andIncrement2 = atomicLong2.getAndIncrement();
                }
                return Long.valueOf(andIncrement2);
        }
    }
}
