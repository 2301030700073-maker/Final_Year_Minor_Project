package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GapComposer$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GapComposer f$0;

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda1(GapComposer gapComposer, MovableContentStateReference movableContentStateReference) {
        this.$r8$classId = 0;
        this.f$0 = gapComposer;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        GapComposer gapComposer = this.f$0;
        switch (i) {
            case 0:
                gapComposer.invokeMovableContentLambda(null, null);
                break;
        }
        return gapComposer.currentStackTrace();
    }

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda1(int i, GapComposer gapComposer) {
        this.$r8$classId = i;
        this.f$0 = gapComposer;
    }
}
