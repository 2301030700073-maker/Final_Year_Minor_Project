package org.wikipedia.suggestededits.provider;

import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextArticleWithMissingDescription$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Ref$ObjectRef $pair;
    public final /* synthetic */ long $retryLimit;
    public final /* synthetic */ WikiSite $sourceWiki;
    public final /* synthetic */ String $targetLang;
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public WikiSite L$1;
    public Pair L$2;
    public DeferredCoroutine L$5;
    public Ref$ObjectRef L$6;
    public Object L$7;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextArticleWithMissingDescription$4(String str, WikiSite wikiSite, long j, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.$targetLang = str;
        this.$sourceWiki = wikiSite;
        this.$retryLimit = j;
        this.$pair = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        EditingSuggestionsProvider$getNextArticleWithMissingDescription$4 editingSuggestionsProvider$getNextArticleWithMissingDescription$4 = new EditingSuggestionsProvider$getNextArticleWithMissingDescription$4(this.$targetLang, this.$sourceWiki, this.$retryLimit, this.$pair, continuation);
        editingSuggestionsProvider$getNextArticleWithMissingDescription$4.L$0 = obj;
        return editingSuggestionsProvider$getNextArticleWithMissingDescription$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditingSuggestionsProvider$getNextArticleWithMissingDescription$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x029b, code lost:
    
        if (r0 != r3) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0254 A[Catch: all -> 0x02ad, TryCatch #0 {all -> 0x02ad, blocks: (B:9:0x0026, B:11:0x029e, B:19:0x003d, B:21:0x0284, B:25:0x004d, B:27:0x0169, B:28:0x017a, B:30:0x0180, B:32:0x019a, B:35:0x01a1, B:38:0x01a7, B:40:0x01bd, B:43:0x01c4, B:46:0x01ca, B:54:0x01d6, B:55:0x01e0, B:57:0x01e6, B:59:0x0212, B:61:0x0216, B:65:0x023b, B:67:0x0243, B:69:0x00a2, B:72:0x00af, B:76:0x00c9, B:77:0x00dc, B:79:0x00e2, B:81:0x00ec, B:84:0x00f3, B:89:0x00fc, B:95:0x0100, B:100:0x0254, B:104:0x0060, B:107:0x0071, B:109:0x0084, B:111:0x0091, B:113:0x0099, B:116:0x008c), top: B:2:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0180 A[Catch: all -> 0x02ad, TryCatch #0 {all -> 0x02ad, blocks: (B:9:0x0026, B:11:0x029e, B:19:0x003d, B:21:0x0284, B:25:0x004d, B:27:0x0169, B:28:0x017a, B:30:0x0180, B:32:0x019a, B:35:0x01a1, B:38:0x01a7, B:40:0x01bd, B:43:0x01c4, B:46:0x01ca, B:54:0x01d6, B:55:0x01e0, B:57:0x01e6, B:59:0x0212, B:61:0x0216, B:65:0x023b, B:67:0x0243, B:69:0x00a2, B:72:0x00af, B:76:0x00c9, B:77:0x00dc, B:79:0x00e2, B:81:0x00ec, B:84:0x00f3, B:89:0x00fc, B:95:0x0100, B:100:0x0254, B:104:0x0060, B:107:0x0071, B:109:0x0084, B:111:0x0091, B:113:0x0099, B:116:0x008c), top: B:2:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e6 A[Catch: all -> 0x02ad, TryCatch #0 {all -> 0x02ad, blocks: (B:9:0x0026, B:11:0x029e, B:19:0x003d, B:21:0x0284, B:25:0x004d, B:27:0x0169, B:28:0x017a, B:30:0x0180, B:32:0x019a, B:35:0x01a1, B:38:0x01a7, B:40:0x01bd, B:43:0x01c4, B:46:0x01ca, B:54:0x01d6, B:55:0x01e0, B:57:0x01e6, B:59:0x0212, B:61:0x0216, B:65:0x023b, B:67:0x0243, B:69:0x00a2, B:72:0x00af, B:76:0x00c9, B:77:0x00dc, B:79:0x00e2, B:81:0x00ec, B:84:0x00f3, B:89:0x00fc, B:95:0x0100, B:100:0x0254, B:104:0x0060, B:107:0x0071, B:109:0x0084, B:111:0x0091, B:113:0x0099, B:116:0x008c), top: B:2:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0243 A[Catch: all -> 0x02ad, TryCatch #0 {all -> 0x02ad, blocks: (B:9:0x0026, B:11:0x029e, B:19:0x003d, B:21:0x0284, B:25:0x004d, B:27:0x0169, B:28:0x017a, B:30:0x0180, B:32:0x019a, B:35:0x01a1, B:38:0x01a7, B:40:0x01bd, B:43:0x01c4, B:46:0x01ca, B:54:0x01d6, B:55:0x01e0, B:57:0x01e6, B:59:0x0212, B:61:0x0216, B:65:0x023b, B:67:0x0243, B:69:0x00a2, B:72:0x00af, B:76:0x00c9, B:77:0x00dc, B:79:0x00e2, B:81:0x00ec, B:84:0x00f3, B:89:0x00fc, B:95:0x0100, B:100:0x0254, B:104:0x0060, B:107:0x0071, B:109:0x0084, B:111:0x0091, B:113:0x0099, B:116:0x008c), top: B:2:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e2 A[Catch: all -> 0x02ad, TryCatch #0 {all -> 0x02ad, blocks: (B:9:0x0026, B:11:0x029e, B:19:0x003d, B:21:0x0284, B:25:0x004d, B:27:0x0169, B:28:0x017a, B:30:0x0180, B:32:0x019a, B:35:0x01a1, B:38:0x01a7, B:40:0x01bd, B:43:0x01c4, B:46:0x01ca, B:54:0x01d6, B:55:0x01e0, B:57:0x01e6, B:59:0x0212, B:61:0x0216, B:65:0x023b, B:67:0x0243, B:69:0x00a2, B:72:0x00af, B:76:0x00c9, B:77:0x00dc, B:79:0x00e2, B:81:0x00ec, B:84:0x00f3, B:89:0x00fc, B:95:0x0100, B:100:0x0254, B:104:0x0060, B:107:0x0071, B:109:0x0084, B:111:0x0091, B:113:0x0099, B:116:0x008c), top: B:2:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0167  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x0167 -> B:27:0x0169). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
