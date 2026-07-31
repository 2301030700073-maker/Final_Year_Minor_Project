package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TrackpadScrollingLogic$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BufferedChannel f$0;

    public /* synthetic */ TrackpadScrollingLogic$$ExternalSyntheticLambda0(BufferedChannel bufferedChannel, int i) {
        this.$r8$classId = i;
        this.f$0 = bufferedChannel;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        BufferedChannel bufferedChannel = this.f$0;
        switch (i) {
            case 0:
                return (TrackpadScrollingLogic.TrackpadScrollDelta) ChannelResult.m865getOrNullimpl(bufferedChannel.mo864tryReceivePtdJZtk());
            default:
                return (MouseWheelScrollingLogic.MouseWheelScrollDelta) ChannelResult.m865getOrNullimpl(bufferedChannel.mo864tryReceivePtdJZtk());
        }
    }
}
