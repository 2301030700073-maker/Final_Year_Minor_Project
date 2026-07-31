package org.wikipedia.readinglist.db;

import androidx.paging.PagingDataPresenter$collectFrom$2;
import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$2;
import org.wikipedia.savedpages.SavedPageSyncService$doWork$2;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPageDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfReadingListPage;
    public final LoginClient __wikiSiteTypeConverter;
    public final TalkTemplateDao_Impl.AnonymousClass2 __deleteAdapterOfReadingListPage = new TalkTemplateDao_Impl.AnonymousClass2(9);
    public final TalkTemplateDao_Impl.AnonymousClass2 __updateAdapterOfReadingListPage = new TalkTemplateDao_Impl.AnonymousClass2(10, this);

    public ReadingListPageDao_Impl(RoomDatabase roomDatabase) {
        int i = 16;
        this.__wikiSiteTypeConverter = new LoginClient(i);
        this.__db = roomDatabase;
        this.__insertAdapterOfReadingListPage = new WorkTagDao_Impl.AnonymousClass1(i, this);
    }

    public final Object addPagesToList(ReadingList readingList, List list, boolean z, ContinuationImpl continuationImpl) {
        Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(this.__db, continuationImpl, new ReadingListPageDao_Impl$addPagesToList$2(this, readingList, list, z, null, 0));
        return performInTransactionSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performInTransactionSuspending : Unit.INSTANCE;
    }

    public final Object deleteReadingListPage(ReadingListPage readingListPage, ReadingListSyncAdapter$doWork$2 readingListSyncAdapter$doWork$2) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new ReadingListPageDao_Impl$$ExternalSyntheticLambda1(this, readingListPage, 1), readingListSyncAdapter$doWork$2);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }

    public final Object findPageInAnyList(PageTitle pageTitle, ContinuationImpl continuationImpl) {
        return ExceptionsKt.performInTransactionSuspending(this.__db, continuationImpl, new PagingDataPresenter$collectFrom$2(this, pageTitle, null, 9));
    }

    public final Object getAllPageOccurrences(PageTitle pageTitle, ContinuationImpl continuationImpl) {
        WikiSite wikiSite = pageTitle.wikiSite;
        return ExceptionsKt.performSuspending(this.__db, true, false, new ReadingListPageDao_Impl$$ExternalSyntheticLambda12(this, wikiSite, wikiSite.languageCode, pageTitle.namespace(), pageTitle.getPrefixedText(), 1), continuationImpl);
    }

    public final Object getPageByTitle(ReadingList readingList, PageTitle pageTitle, ContinuationImpl continuationImpl) {
        WikiSite wikiSite = pageTitle.wikiSite;
        return ExceptionsKt.performSuspending(this.__db, true, false, new ReadingListPageDao_Impl$$ExternalSyntheticLambda19(this, wikiSite, wikiSite.languageCode, pageTitle.namespace(), pageTitle.getPrefixedText(), readingList.id), continuationImpl);
    }

    public final Object markAllPagesUnsynced(ReadingListSyncAdapter$doWork$2 readingListSyncAdapter$doWork$2) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new TalkTopicsViewModel$$ExternalSyntheticLambda0(6), readingListSyncAdapter$doWork$2);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }

    public final Object markPagesForDeletion(ReadingList readingList, List list, boolean z, ContinuationImpl continuationImpl) {
        Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(this.__db, continuationImpl, new ReadingListPageDao_Impl$addPagesToList$2(this, readingList, list, z, null, 1));
        return performInTransactionSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performInTransactionSuspending : Unit.INSTANCE;
    }

    public final Object markPagesForOffline(List list, boolean z, boolean z2, SuspendLambda suspendLambda) {
        Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(this.__db, suspendLambda, new ReadingListPageDao_Impl$markPagesForOffline$2(this, list, z, z2, null));
        return performInTransactionSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performInTransactionSuspending : Unit.INSTANCE;
    }

    public final Object purgeDeletedPages(SavedPageSyncService$doWork$2 savedPageSyncService$doWork$2) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new TalkTopicsViewModel$$ExternalSyntheticLambda0(9), savedPageSyncService$doWork$2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        if (performSuspending != coroutineSingletons) {
            performSuspending = unit;
        }
        return performSuspending == coroutineSingletons ? performSuspending : unit;
    }

    public final Object updateReadingListPage(ReadingListPage readingListPage, ContinuationImpl continuationImpl) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new ReadingListPageDao_Impl$$ExternalSyntheticLambda1(this, readingListPage, 0), continuationImpl);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }

    public final Object updateReadingListPages(List list, ContinuationImpl continuationImpl) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(27, this, list), continuationImpl);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }

    public final Object updateStatus(SavedPageSyncService$doWork$2 savedPageSyncService$doWork$2) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new TalkTopicsViewModel$$ExternalSyntheticLambda0(5), savedPageSyncService$doWork$2);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }
}
