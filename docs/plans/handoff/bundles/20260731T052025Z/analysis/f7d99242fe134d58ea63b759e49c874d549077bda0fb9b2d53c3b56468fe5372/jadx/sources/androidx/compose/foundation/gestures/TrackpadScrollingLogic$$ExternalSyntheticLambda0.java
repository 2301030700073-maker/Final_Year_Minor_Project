package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                return (TrackpadScrollingLogic.TrackpadScrollDelta) ChannelResult.m1017getOrNullimpl(channel.mo1015tryReceivePtdJZtk());
            default:
                return (MouseWheelScrollingLogic.MouseWheelScrollDelta) ChannelResult.m1017getOrNullimpl(channel.mo1015tryReceivePtdJZtk());
        }
    }
}
