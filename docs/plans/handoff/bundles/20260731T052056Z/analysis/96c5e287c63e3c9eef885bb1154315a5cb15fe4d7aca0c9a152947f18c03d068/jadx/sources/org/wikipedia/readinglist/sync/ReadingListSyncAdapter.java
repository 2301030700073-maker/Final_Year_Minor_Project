package org.wikipedia.readinglist.sync;

import android.content.Context;
import android.os.Bundle;
import androidx.compose.animation.core.Animation;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.WorkerParameters;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.util.DesugarCollections;
import java.text.Normalizer;
import java.util.Map;
import kotlin.Metadata;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.sync.SyncedReadingLists;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListSyncAdapter extends CoroutineWorker {
    public static boolean IN_PROGRESS;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListSyncAdapter(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public static Bundle getBooleanExtraFromData(Data data) {
        Bundle bundle = new Bundle();
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(data.values);
        unmodifiableMap.getClass();
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            value.getClass();
            bundle.putBoolean(str, ((Boolean) value).booleanValue());
        }
        return bundle;
    }

    public static PageTitle pageTitleFromRemoteEntry(SyncedReadingLists.RemoteReadingListEntry remoteReadingListEntry) {
        String str = remoteReadingListEntry.title;
        Normalizer.Form form = Normalizer.Form.NFC;
        String normalize = Normalizer.normalize(str, form);
        normalize.getClass();
        String normalize2 = Normalizer.normalize(remoteReadingListEntry.project, form);
        normalize2.getClass();
        return new PageTitle(normalize, new WikiSite(normalize2), (String) null);
    }

    public static SyncedReadingLists.RemoteReadingListEntry remoteEntryFromLocalPage(ReadingListPage readingListPage) {
        readingListPage.getClass();
        WikiSite wikiSite = readingListPage.wiki;
        String str = readingListPage.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        PageTitle pageTitle = new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle);
        String m = Animation.CC.m(pageTitle.wikiSite.scheme(), "://", pageTitle.wikiSite.authority());
        String prefixedText = pageTitle.getPrefixedText();
        long j = readingListPage.atime;
        LocalDateTime now = j == 0 ? LocalDateTime.now() : LocalDateTime.ofInstant(Instant.ofEpochMilli(j), ZoneOffset.UTC);
        now.getClass();
        long j2 = readingListPage.mtime;
        LocalDateTime now2 = j2 == 0 ? LocalDateTime.now() : LocalDateTime.ofInstant(Instant.ofEpochMilli(j2), ZoneOffset.UTC);
        now2.getClass();
        return new SyncedReadingLists.RemoteReadingListEntry(m, prefixedText, now, now2);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x014f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x014e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createOrUpdatePage(org.wikipedia.readinglist.database.ReadingList r20, org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingListEntry r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.sync.ReadingListSyncAdapter.createOrUpdatePage(org.wikipedia.readinglist.database.ReadingList, org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingListEntry, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0099, code lost:
    
        if (r5 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0093, code lost:
    
        if (r2 == r4) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object deletePageByTitle(org.wikipedia.readinglist.database.ReadingList r18, org.wikipedia.page.PageTitle r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            r17 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            boolean r3 = r2 instanceof org.wikipedia.readinglist.sync.ReadingListSyncAdapter$deletePageByTitle$1
            if (r3 == 0) goto L19
            r3 = r2
            org.wikipedia.readinglist.sync.ReadingListSyncAdapter$deletePageByTitle$1 r3 = (org.wikipedia.readinglist.sync.ReadingListSyncAdapter$deletePageByTitle$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L19
            int r4 = r4 - r5
            r3.label = r4
            goto L20
        L19:
            org.wikipedia.readinglist.sync.ReadingListSyncAdapter$deletePageByTitle$1 r3 = new org.wikipedia.readinglist.sync.ReadingListSyncAdapter$deletePageByTitle$1
            r4 = r17
            r3.<init>(r4, r2)
        L20:
            java.lang.Object r2 = r3.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r3.label
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            r7 = 2
            r8 = 1
            r9 = 0
            if (r5 == 0) goto L41
            if (r5 == r8) goto L3b
            if (r5 != r7) goto L35
            kotlin.ResultKt.throwOnFailure(r2)
            return r6
        L35:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
            return r9
        L3b:
            org.wikipedia.readinglist.database.ReadingList r0 = r3.L$0
            kotlin.ResultKt.throwOnFailure(r2)
            goto L96
        L41:
            kotlin.ResultKt.throwOnFailure(r2)
            java.util.ArrayList r2 = r0.pages
            java.util.Iterator r2 = r2.iterator()
        L4a:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L7c
            java.lang.Object r5 = r2.next()
            r10 = r5
            org.wikipedia.readinglist.database.ReadingListPage r10 = (org.wikipedia.readinglist.database.ReadingListPage) r10
            r10.getClass()
            org.wikipedia.dataclient.WikiSite r13 = r10.wiki
            java.lang.String r11 = r10.lang
            r13.getClass()
            r11.getClass()
            r13.languageCode = r11
            org.wikipedia.page.PageTitle r11 = new org.wikipedia.page.PageTitle
            java.lang.String r12 = r10.apiTitle
            java.lang.String r14 = r10.thumbUrl
            java.lang.String r15 = r10.description
            java.lang.String r10 = r10.displayTitle
            r16 = r10
            r11.<init>(r12, r13, r14, r15, r16)
            boolean r10 = r11.equals(r1)
            if (r10 == 0) goto L4a
            goto L7d
        L7c:
            r5 = r9
        L7d:
            org.wikipedia.readinglist.database.ReadingListPage r5 = (org.wikipedia.readinglist.database.ReadingListPage) r5
            if (r5 != 0) goto L9c
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r2 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r2 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r2 = r2.readingListPageDao()
            r3.L$0 = r0
            r3.label = r8
            java.lang.Object r2 = r2.getPageByTitle(r0, r1, r3)
            if (r2 != r4) goto L96
            goto Lc8
        L96:
            r5 = r2
            org.wikipedia.readinglist.database.ReadingListPage r5 = (org.wikipedia.readinglist.database.ReadingListPage) r5
            if (r5 != 0) goto L9c
            goto Lc9
        L9c:
            java.lang.String r1 = r5.apiTitle
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r8 = "Deleting local page "
            r2.<init>(r8)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            org.wikipedia.util.log.L.d(r1)
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r1 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r1 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r1 = r1.readingListPageDao()
            java.util.List r2 = androidx.room.Room.listOf(r5)
            r3.L$0 = r9
            r3.label = r7
            r5 = 0
            java.lang.Object r0 = r1.markPagesForDeletion(r0, r2, r5, r3)
            if (r0 != r4) goto Lc9
        Lc8:
            return r4
        Lc9:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.sync.ReadingListSyncAdapter.deletePageByTitle(org.wikipedia.readinglist.database.ReadingList, org.wikipedia.page.PageTitle, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$1 r0 = (org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$1 r0 = new org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r6 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r6
            r0.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.scheduling.DefaultScheduler r6 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r6 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$2 r2 = new org.wikipedia.readinglist.sync.ReadingListSyncAdapter$doWork$2
            r2.<init>(r5, r3)
            r0.label = r4
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r6.getClass()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.sync.ReadingListSyncAdapter.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
