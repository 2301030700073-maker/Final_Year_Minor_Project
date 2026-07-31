package org.wikipedia.suggestededits.provider;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextArticleWithMissingDescription$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Ref$ObjectRef $pageSummary;
    public final /* synthetic */ long $retryLimit;
    public final /* synthetic */ WikiSite $wiki;
    public int I$0;
    public String L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditingSuggestionsProvider$getNextArticleWithMissingDescription$2(WikiSite wikiSite, long j, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.$wiki = wikiSite;
        this.$retryLimit = j;
        this.$pageSummary = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditingSuggestionsProvider$getNextArticleWithMissingDescription$2(this.$wiki, this.$retryLimit, this.$pageSummary, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditingSuggestionsProvider$getNextArticleWithMissingDescription$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01c8, code lost:
    
        if (r0 == r7) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x018c A[Catch: all -> 0x01d5, LOOP:4: B:101:0x0186->B:103:0x018c, LOOP_END, TryCatch #0 {all -> 0x01d5, blocks: (B:8:0x001b, B:10:0x01cb, B:18:0x0031, B:20:0x0109, B:22:0x010f, B:24:0x0113, B:25:0x011c, B:27:0x0122, B:30:0x0131, B:35:0x0135, B:36:0x0144, B:38:0x014a, B:40:0x0157, B:41:0x015b, B:43:0x0161, B:46:0x0169, B:48:0x016d, B:49:0x0171, B:52:0x0177, B:60:0x019a, B:62:0x006b, B:64:0x0074, B:66:0x007a, B:71:0x0091, B:73:0x009f, B:75:0x00ac, B:78:0x00b6, B:79:0x00bf, B:81:0x00c5, B:83:0x00cf, B:86:0x00d6, B:91:0x00df, B:97:0x00e3, B:100:0x0182, B:101:0x0186, B:103:0x018c, B:105:0x01aa, B:107:0x01a2, B:110:0x003c, B:113:0x004b, B:115:0x0055, B:116:0x005a, B:118:0x0062), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01a2 A[Catch: all -> 0x01d5, TryCatch #0 {all -> 0x01d5, blocks: (B:8:0x001b, B:10:0x01cb, B:18:0x0031, B:20:0x0109, B:22:0x010f, B:24:0x0113, B:25:0x011c, B:27:0x0122, B:30:0x0131, B:35:0x0135, B:36:0x0144, B:38:0x014a, B:40:0x0157, B:41:0x015b, B:43:0x0161, B:46:0x0169, B:48:0x016d, B:49:0x0171, B:52:0x0177, B:60:0x019a, B:62:0x006b, B:64:0x0074, B:66:0x007a, B:71:0x0091, B:73:0x009f, B:75:0x00ac, B:78:0x00b6, B:79:0x00bf, B:81:0x00c5, B:83:0x00cf, B:86:0x00d6, B:91:0x00df, B:97:0x00e3, B:100:0x0182, B:101:0x0186, B:103:0x018c, B:105:0x01aa, B:107:0x01a2, B:110:0x003c, B:113:0x004b, B:115:0x0055, B:116:0x005a, B:118:0x0062), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0161 A[Catch: all -> 0x01d5, TryCatch #0 {all -> 0x01d5, blocks: (B:8:0x001b, B:10:0x01cb, B:18:0x0031, B:20:0x0109, B:22:0x010f, B:24:0x0113, B:25:0x011c, B:27:0x0122, B:30:0x0131, B:35:0x0135, B:36:0x0144, B:38:0x014a, B:40:0x0157, B:41:0x015b, B:43:0x0161, B:46:0x0169, B:48:0x016d, B:49:0x0171, B:52:0x0177, B:60:0x019a, B:62:0x006b, B:64:0x0074, B:66:0x007a, B:71:0x0091, B:73:0x009f, B:75:0x00ac, B:78:0x00b6, B:79:0x00bf, B:81:0x00c5, B:83:0x00cf, B:86:0x00d6, B:91:0x00df, B:97:0x00e3, B:100:0x0182, B:101:0x0186, B:103:0x018c, B:105:0x01aa, B:107:0x01a2, B:110:0x003c, B:113:0x004b, B:115:0x0055, B:116:0x005a, B:118:0x0062), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0074 A[Catch: all -> 0x01d5, TryCatch #0 {all -> 0x01d5, blocks: (B:8:0x001b, B:10:0x01cb, B:18:0x0031, B:20:0x0109, B:22:0x010f, B:24:0x0113, B:25:0x011c, B:27:0x0122, B:30:0x0131, B:35:0x0135, B:36:0x0144, B:38:0x014a, B:40:0x0157, B:41:0x015b, B:43:0x0161, B:46:0x0169, B:48:0x016d, B:49:0x0171, B:52:0x0177, B:60:0x019a, B:62:0x006b, B:64:0x0074, B:66:0x007a, B:71:0x0091, B:73:0x009f, B:75:0x00ac, B:78:0x00b6, B:79:0x00bf, B:81:0x00c5, B:83:0x00cf, B:86:0x00d6, B:91:0x00df, B:97:0x00e3, B:100:0x0182, B:101:0x0186, B:103:0x018c, B:105:0x01aa, B:107:0x01a2, B:110:0x003c, B:113:0x004b, B:115:0x0055, B:116:0x005a, B:118:0x0062), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x009f A[Catch: all -> 0x01d5, TryCatch #0 {all -> 0x01d5, blocks: (B:8:0x001b, B:10:0x01cb, B:18:0x0031, B:20:0x0109, B:22:0x010f, B:24:0x0113, B:25:0x011c, B:27:0x0122, B:30:0x0131, B:35:0x0135, B:36:0x0144, B:38:0x014a, B:40:0x0157, B:41:0x015b, B:43:0x0161, B:46:0x0169, B:48:0x016d, B:49:0x0171, B:52:0x0177, B:60:0x019a, B:62:0x006b, B:64:0x0074, B:66:0x007a, B:71:0x0091, B:73:0x009f, B:75:0x00ac, B:78:0x00b6, B:79:0x00bf, B:81:0x00c5, B:83:0x00cf, B:86:0x00d6, B:91:0x00df, B:97:0x00e3, B:100:0x0182, B:101:0x0186, B:103:0x018c, B:105:0x01aa, B:107:0x01a2, B:110:0x003c, B:113:0x004b, B:115:0x0055, B:116:0x005a, B:118:0x0062), top: B:2:0x000f }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0105 -> B:20:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x018a -> B:46:0x017f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
