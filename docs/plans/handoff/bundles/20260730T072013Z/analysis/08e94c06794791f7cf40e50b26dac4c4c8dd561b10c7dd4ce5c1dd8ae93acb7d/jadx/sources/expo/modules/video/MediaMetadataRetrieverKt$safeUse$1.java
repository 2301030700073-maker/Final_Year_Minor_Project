package expo.modules.video;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: MediaMetadataRetriever.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.video.MediaMetadataRetrieverKt", f = "MediaMetadataRetriever.kt", i = {0}, l = {15}, m = "safeUse", n = {"$this$safeUse"}, s = {"L$0"})
/* loaded from: classes5.dex */
final class MediaMetadataRetrieverKt$safeUse$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    MediaMetadataRetrieverKt$safeUse$1(Continuation<? super MediaMetadataRetrieverKt$safeUse$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MediaMetadataRetrieverKt.safeUse(null, null, this);
    }
}
