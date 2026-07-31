package androidx.compose.foundation.text;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LongPressTextDragObserverKt$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextDragObserver f$0;

    public /* synthetic */ LongPressTextDragObserverKt$$ExternalSyntheticLambda1(TextDragObserver textDragObserver, int i) {
        this.$r8$classId = i;
        this.f$0 = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TextDragObserver textDragObserver = this.f$0;
        switch (i) {
            case 0:
                textDragObserver.onStop();
                break;
            default:
                textDragObserver.onCancel();
                break;
        }
        return unit;
    }
}
