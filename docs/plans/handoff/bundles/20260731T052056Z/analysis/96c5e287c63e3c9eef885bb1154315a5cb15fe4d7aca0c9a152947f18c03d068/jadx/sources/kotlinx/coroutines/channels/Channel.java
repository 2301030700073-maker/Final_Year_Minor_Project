package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.internal.InlineList;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Channel extends SendChannel {
    public static final Factory Factory = Factory.$$INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory {
        public static final /* synthetic */ Factory $$INSTANCE = new Factory();
        public static final int CHANNEL_DEFAULT_CAPACITY = (int) InlineList.systemProp("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);
    }

    void cancel(CancellationException cancellationException);

    FormBody.Builder getOnReceiveCatching();

    BufferedChannel.BufferedChannelIterator iterator();

    Object receive(Continuation continuation);

    /* renamed from: receiveCatching-JP2dKIU */
    Object mo862receiveCatchingJP2dKIU(CombineKt$combineInternal$2 combineKt$combineInternal$2);

    /* renamed from: tryReceive-PtdJZtk */
    Object mo864tryReceivePtdJZtk();
}
