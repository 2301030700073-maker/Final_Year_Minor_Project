package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Channel extends SendChannel {
    public static final Factory Factory = Factory.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory {
        public static final /* synthetic */ Factory $$INSTANCE = new Factory();
        public static final int CHANNEL_DEFAULT_CAPACITY = (int) InlineList.systemProp("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);
    }

    void cancel(CancellationException cancellationException);

    BufferedChannel.BufferedChannelIterator iterator();

    Object receive(SuspendLambda suspendLambda);

    /* renamed from: receiveCatching-JP2dKIU */
    Object mo1013receiveCatchingJP2dKIU(ContinuationImpl continuationImpl);

    /* renamed from: tryReceive-PtdJZtk */
    Object mo1015tryReceivePtdJZtk();
}
