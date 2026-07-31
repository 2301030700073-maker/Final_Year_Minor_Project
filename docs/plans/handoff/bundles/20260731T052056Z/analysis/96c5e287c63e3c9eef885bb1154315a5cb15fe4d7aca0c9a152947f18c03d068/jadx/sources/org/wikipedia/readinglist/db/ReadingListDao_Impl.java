package org.wikipedia.readinglist.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.io.Serializable;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.wikipedia.dataclient.Service;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$2;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfReadingList = new WorkTagDao_Impl.AnonymousClass1(15);
    public final TalkTemplateDao_Impl.AnonymousClass2 __deleteAdapterOfReadingList = new TalkTemplateDao_Impl.AnonymousClass2(7);
    public final TalkTemplateDao_Impl.AnonymousClass2 __updateAdapterOfReadingList = new TalkTemplateDao_Impl.AnonymousClass2(8);

    public ReadingListDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Serializable createList(String str, String str2, SuspendLambda suspendLambda) {
        if (str.length() != 0) {
            return Service.CC.$private$createNewList(this, str, str2, suspendLambda);
        }
        L.LEVEL_W.log("Attempted to create list with empty title (default).", null);
        return Service.CC.getDefaultList$suspendImpl(this, suspendLambda);
    }

    public final Object deleteList(ReadingList readingList, ReadingListSyncAdapter$doWork$2 readingListSyncAdapter$doWork$2) {
        return Service.CC.deleteList$suspendImpl(this, readingList, false, readingListSyncAdapter$doWork$2);
    }

    public final Object getAllListsWithUnsyncedPages(ReadingListSyncAdapter$doWork$2 readingListSyncAdapter$doWork$2) {
        return Service.CC.getAllListsWithUnsyncedPages$suspendImpl(this, readingListSyncAdapter$doWork$2);
    }

    public final Object getListsWithoutContents(ContinuationImpl continuationImpl) {
        return ExceptionsKt.performSuspending(this.__db, true, false, new TalkTopicsViewModel$$ExternalSyntheticLambda0(3), continuationImpl);
    }

    public final Object markAllListsUnsynced(ReadingListSyncAdapter$doWork$2 readingListSyncAdapter$doWork$2) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new TalkTopicsViewModel$$ExternalSyntheticLambda0(4), readingListSyncAdapter$doWork$2);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }
}
