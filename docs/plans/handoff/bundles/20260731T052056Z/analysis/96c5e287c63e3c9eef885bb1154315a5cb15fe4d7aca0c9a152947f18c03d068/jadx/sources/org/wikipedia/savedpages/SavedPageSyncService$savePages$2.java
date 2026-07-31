package org.wikipedia.savedpages;

import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedPageSyncService$savePages$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ List $queue;
    public int I$0;
    public int I$1;
    public int I$2;
    public long J$0;
    public ReadingListPage L$0;
    public int label;
    public final /* synthetic */ SavedPageSyncService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavedPageSyncService$savePages$2(List list, SavedPageSyncService savedPageSyncService, Continuation continuation) {
        super(2, continuation);
        this.$queue = list;
        this.this$0 = savedPageSyncService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SavedPageSyncService$savePages$2(this.$queue, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SavedPageSyncService$savePages$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00d3 -> B:8:0x004a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00fa -> B:7:0x00fb). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.savedpages.SavedPageSyncService$savePages$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
