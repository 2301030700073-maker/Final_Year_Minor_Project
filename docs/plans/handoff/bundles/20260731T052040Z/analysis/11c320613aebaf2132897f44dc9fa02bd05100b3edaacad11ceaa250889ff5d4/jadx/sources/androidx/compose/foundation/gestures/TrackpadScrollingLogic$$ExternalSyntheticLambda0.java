package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TrackpadScrollingLogic$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Channel f$0;

    public /* synthetic */ TrackpadScrollingLogic$$ExternalSyntheticLambda0(Channel channel, int i) {
        this.$r8$classId = i;
        this.f$0 = channel;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Channel channel = this.f$0;
        switch (i) {
            case 0:
                return (TrackpadScrollingLogic.TrackpadScrollDelta) ChannelResult.m692getOrNullimpl(channel.mo690tryReceivePtdJZtk());
            default:
                return (MouseWheelScrollingLogic.MouseWheelScrollDelta) ChannelResult.m692getOrNullimpl(channel.mo690tryReceivePtdJZtk());
        }
    }
}
