package org.wikipedia.suggestededits.provider;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextImageWithMissingCaption$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Ref$ObjectRef $pair;
    public final /* synthetic */ long $retryLimit;
    public final /* synthetic */ String $sourceLang;
    public final /* synthetic */ String $targetLang;
    public int I$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextImageWithMissingCaption$4(String str, String str2, Ref$ObjectRef ref$ObjectRef, long j, Continuation continuation) {
        super(2, continuation);
        this.$sourceLang = str;
        this.$targetLang = str2;
        this.$pair = ref$ObjectRef;
        this.$retryLimit = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditingSuggestionsProvider$getNextImageWithMissingCaption$4(this.$sourceLang, this.$targetLang, this.$pair, this.$retryLimit, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditingSuggestionsProvider$getNextImageWithMissingCaption$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x018d A[Catch: all -> 0x019d, TRY_LEAVE, TryCatch #2 {all -> 0x019d, blocks: (B:7:0x0013, B:8:0x008c, B:11:0x0094, B:13:0x0098, B:14:0x00a1, B:16:0x00a7, B:18:0x00b4, B:21:0x00bb, B:24:0x00c3, B:27:0x00cb, B:35:0x00d2, B:36:0x00d4, B:37:0x00d8, B:39:0x00de, B:41:0x00ee, B:44:0x00f8, B:47:0x00ff, B:50:0x0124, B:53:0x0128, B:55:0x013d, B:58:0x0144, B:61:0x014a, B:63:0x0156, B:65:0x015c, B:68:0x0162, B:70:0x016c, B:73:0x0173, B:84:0x0109, B:87:0x0120, B:95:0x0185, B:97:0x0051, B:99:0x005a, B:102:0x0077, B:106:0x0069, B:110:0x018d, B:114:0x0181, B:118:0x0029, B:120:0x0031, B:122:0x003e, B:124:0x0046, B:125:0x004c, B:126:0x0039), top: B:2:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d2 A[Catch: MwException -> 0x0018, all -> 0x019d, TryCatch #1 {MwException -> 0x0018, blocks: (B:7:0x0013, B:8:0x008c, B:11:0x0094, B:13:0x0098, B:14:0x00a1, B:16:0x00a7, B:18:0x00b4, B:21:0x00bb, B:24:0x00c3, B:27:0x00cb, B:35:0x00d2, B:36:0x00d4, B:37:0x00d8, B:39:0x00de, B:41:0x00ee, B:44:0x00f8, B:47:0x00ff, B:50:0x0124, B:53:0x0128, B:55:0x013d, B:58:0x0144, B:61:0x014a, B:63:0x0156, B:65:0x015c, B:68:0x0162, B:70:0x016c, B:73:0x0173, B:87:0x0120, B:102:0x0077), top: B:6:0x0013, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00de A[Catch: MwException -> 0x0018, all -> 0x019d, TryCatch #1 {MwException -> 0x0018, blocks: (B:7:0x0013, B:8:0x008c, B:11:0x0094, B:13:0x0098, B:14:0x00a1, B:16:0x00a7, B:18:0x00b4, B:21:0x00bb, B:24:0x00c3, B:27:0x00cb, B:35:0x00d2, B:36:0x00d4, B:37:0x00d8, B:39:0x00de, B:41:0x00ee, B:44:0x00f8, B:47:0x00ff, B:50:0x0124, B:53:0x0128, B:55:0x013d, B:58:0x0144, B:61:0x014a, B:63:0x0156, B:65:0x015c, B:68:0x0162, B:70:0x016c, B:73:0x0173, B:87:0x0120, B:102:0x0077), top: B:6:0x0013, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x005a A[Catch: all -> 0x019d, TryCatch #2 {all -> 0x019d, blocks: (B:7:0x0013, B:8:0x008c, B:11:0x0094, B:13:0x0098, B:14:0x00a1, B:16:0x00a7, B:18:0x00b4, B:21:0x00bb, B:24:0x00c3, B:27:0x00cb, B:35:0x00d2, B:36:0x00d4, B:37:0x00d8, B:39:0x00de, B:41:0x00ee, B:44:0x00f8, B:47:0x00ff, B:50:0x0124, B:53:0x0128, B:55:0x013d, B:58:0x0144, B:61:0x014a, B:63:0x0156, B:65:0x015c, B:68:0x0162, B:70:0x016c, B:73:0x0173, B:84:0x0109, B:87:0x0120, B:95:0x0185, B:97:0x0051, B:99:0x005a, B:102:0x0077, B:106:0x0069, B:110:0x018d, B:114:0x0181, B:118:0x0029, B:120:0x0031, B:122:0x003e, B:124:0x0046, B:125:0x004c, B:126:0x0039), top: B:2:0x000d, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r9v7, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.ArrayList] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0089 -> B:8:0x008c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
