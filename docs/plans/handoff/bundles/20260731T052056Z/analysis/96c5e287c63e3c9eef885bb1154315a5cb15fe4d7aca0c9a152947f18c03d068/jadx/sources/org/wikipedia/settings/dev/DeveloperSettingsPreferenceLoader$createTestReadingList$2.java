package org.wikipedia.settings.dev;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeveloperSettingsPreferenceLoader$createTestReadingList$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $listName;
    public final /* synthetic */ int $numOfArticles;
    public final /* synthetic */ int $numOfLists;
    public int I$0;
    public Ref$IntRef L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeveloperSettingsPreferenceLoader$createTestReadingList$2(int i, String str, int i2, Continuation continuation) {
        super(2, continuation);
        this.$numOfLists = i;
        this.$listName = str;
        this.$numOfArticles = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeveloperSettingsPreferenceLoader$createTestReadingList$2(this.$numOfLists, this.$listName, this.$numOfArticles, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeveloperSettingsPreferenceLoader$createTestReadingList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x013b, code lost:
    
        if (r6.addPagesToList(r10, r12, true, r18) != r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0051, code lost:
    
        if (r9 == r1) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0102 A[LOOP:0: B:14:0x00fb->B:16:0x0102, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0145  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x013b -> B:7:0x013e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader$createTestReadingList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
