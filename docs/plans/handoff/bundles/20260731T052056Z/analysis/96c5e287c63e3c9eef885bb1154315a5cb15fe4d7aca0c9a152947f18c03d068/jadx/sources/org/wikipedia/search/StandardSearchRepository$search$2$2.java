package org.wikipedia.search;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardSearchRepository$search$2$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String $searchTerm;
    public final /* synthetic */ WikiSite $wikiSite;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StandardSearchRepository$search$2$2(WikiSite wikiSite, String str, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$wikiSite = wikiSite;
        this.$searchTerm = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        String str = this.$searchTerm;
        WikiSite wikiSite = this.$wikiSite;
        switch (i) {
            case 0:
                return new StandardSearchRepository$search$2$2(wikiSite, str, continuation, 0);
            default:
                return new StandardSearchRepository$search$2$2(wikiSite, str, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((StandardSearchRepository$search$2$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        String str = this.$searchTerm;
        WikiSite wikiSite = this.$wikiSite;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                HistoryEntryWithImageDao_Impl historyEntryWithImageDao = Cookie.Companion.getInstance().historyEntryWithImageDao();
                this.label = 1;
                historyEntryWithImageDao.getClass();
                Object findHistoryItem$suspendImpl = Service.CC.findHistoryItem$suspendImpl(historyEntryWithImageDao, wikiSite, str, this);
                return findHistoryItem$suspendImpl == coroutineSingletons ? coroutineSingletons : findHistoryItem$suspendImpl;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$12 = AppDatabase.MIGRATION_19_20;
                ReadingListPageDao_Impl readingListPageDao = Cookie.Companion.getInstance().readingListPageDao();
                this.label = 1;
                readingListPageDao.getClass();
                Object findPageForSearchQueryInAnyList$suspendImpl = Service.CC.findPageForSearchQueryInAnyList$suspendImpl(readingListPageDao, wikiSite, str, this);
                return findPageForSearchQueryInAnyList$suspendImpl == coroutineSingletons2 ? coroutineSingletons2 : findPageForSearchQueryInAnyList$suspendImpl;
        }
    }
}
