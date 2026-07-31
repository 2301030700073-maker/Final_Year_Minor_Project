package expo.modules.updates.loader;

import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: LoaderTask.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.updates.loader.LoaderTask", f = "LoaderTask.kt", i = {0, 0, 1, 1, 2, 2, 3, 3}, l = {TsExtractor.TS_STREAM_TYPE_AC4, 179, 186, 199}, m = "start", n = {"this", "shouldCheckForUpdate", "this", "shouldCheckForUpdate", "this", "shouldCheckForUpdate", "this", "e"}, s = {"L$0", "Z$0", "L$0", "Z$0", "L$0", "Z$0", "L$0", "L$1"})
/* loaded from: classes5.dex */
final class LoaderTask$start$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LoaderTask this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoaderTask$start$1(LoaderTask loaderTask, Continuation<? super LoaderTask$start$1> continuation) {
        super(continuation);
        this.this$0 = loaderTask;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.start(this);
    }
}
