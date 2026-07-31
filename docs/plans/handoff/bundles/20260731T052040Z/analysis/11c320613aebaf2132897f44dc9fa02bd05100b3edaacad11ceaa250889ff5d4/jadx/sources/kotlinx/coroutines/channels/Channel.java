package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Channel extends SendChannel {
    public static final Factory Factory = Factory.$$INSTANCE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Factory {
        public static final /* synthetic */ Factory $$INSTANCE = new Factory();
        public static final int CHANNEL_DEFAULT_CAPACITY = (int) InlineList.systemProp("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);
    }

    void cancel(CancellationException cancellationException);

    BufferedChannel.BufferedChannelIterator iterator();

    Object receive(SuspendLambda suspendLambda);

    /* renamed from: receiveCatching-JP2dKIU */
    Object mo688receiveCatchingJP2dKIU(CombineKt$combineInternal$2 combineKt$combineInternal$2);

    /* renamed from: tryReceive-PtdJZtk */
    Object mo690tryReceivePtdJZtk();
}
