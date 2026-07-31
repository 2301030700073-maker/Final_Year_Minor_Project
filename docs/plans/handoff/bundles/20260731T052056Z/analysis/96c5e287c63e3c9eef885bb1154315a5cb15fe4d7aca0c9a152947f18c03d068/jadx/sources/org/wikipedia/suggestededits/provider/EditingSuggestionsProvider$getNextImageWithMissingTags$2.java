package org.wikipedia.suggestededits.provider;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextImageWithMissingTags$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Ref$ObjectRef $page;
    public final /* synthetic */ long $retryLimit;
    public int I$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextImageWithMissingTags$2(Ref$ObjectRef ref$ObjectRef, long j, Continuation continuation) {
        super(2, continuation);
        this.$page = ref$ObjectRef;
        this.$retryLimit = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditingSuggestionsProvider$getNextImageWithMissingTags$2(this.$page, this.$retryLimit, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditingSuggestionsProvider$getNextImageWithMissingTags$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005e A[Catch: all -> 0x00e5, TryCatch #0 {all -> 0x00e5, blocks: (B:6:0x000f, B:7:0x0045, B:9:0x004b, B:11:0x004f, B:12:0x0058, B:14:0x005e, B:16:0x006b, B:17:0x006f, B:20:0x0077, B:26:0x007b, B:27:0x007f, B:29:0x0085, B:33:0x0094, B:37:0x00ba, B:40:0x009b, B:41:0x009f, B:43:0x00a5, B:52:0x00c0, B:54:0x00c9, B:58:0x0030, B:62:0x00d5, B:69:0x0021, B:71:0x0029), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085 A[Catch: all -> 0x00e5, TryCatch #0 {all -> 0x00e5, blocks: (B:6:0x000f, B:7:0x0045, B:9:0x004b, B:11:0x004f, B:12:0x0058, B:14:0x005e, B:16:0x006b, B:17:0x006f, B:20:0x0077, B:26:0x007b, B:27:0x007f, B:29:0x0085, B:33:0x0094, B:37:0x00ba, B:40:0x009b, B:41:0x009f, B:43:0x00a5, B:52:0x00c0, B:54:0x00c9, B:58:0x0030, B:62:0x00d5, B:69:0x0021, B:71:0x0029), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c9 A[Catch: all -> 0x00e5, TryCatch #0 {all -> 0x00e5, blocks: (B:6:0x000f, B:7:0x0045, B:9:0x004b, B:11:0x004f, B:12:0x0058, B:14:0x005e, B:16:0x006b, B:17:0x006f, B:20:0x0077, B:26:0x007b, B:27:0x007f, B:29:0x0085, B:33:0x0094, B:37:0x00ba, B:40:0x009b, B:41:0x009f, B:43:0x00a5, B:52:0x00c0, B:54:0x00c9, B:58:0x0030, B:62:0x00d5, B:69:0x0021, B:71:0x0029), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b A[Catch: all -> 0x00e5, TryCatch #0 {all -> 0x00e5, blocks: (B:6:0x000f, B:7:0x0045, B:9:0x004b, B:11:0x004f, B:12:0x0058, B:14:0x005e, B:16:0x006b, B:17:0x006f, B:20:0x0077, B:26:0x007b, B:27:0x007f, B:29:0x0085, B:33:0x0094, B:37:0x00ba, B:40:0x009b, B:41:0x009f, B:43:0x00a5, B:52:0x00c0, B:54:0x00c9, B:58:0x0030, B:62:0x00d5, B:69:0x0021, B:71:0x0029), top: B:2:0x0009 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0042 -> B:7:0x0045). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
