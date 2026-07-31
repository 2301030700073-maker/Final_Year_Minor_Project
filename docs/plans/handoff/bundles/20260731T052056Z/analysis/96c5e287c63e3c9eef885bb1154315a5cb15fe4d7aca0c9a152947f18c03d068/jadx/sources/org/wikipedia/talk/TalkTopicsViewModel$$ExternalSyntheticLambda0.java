package org.wikipedia.talk;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.core.Animation;
import androidx.paging.CombinedLoadStates;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.database.RecommendedPage;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.SemanticSearchResult;
import org.wikipedia.search.db.RecentSearch;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterActivity;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicsViewModel$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TalkTopicsViewModel$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    private final Object invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListInterestsViewModel$loadItems$2$$ExternalSyntheticLambda0(Object obj) {
        PageTitle pageTitle = (PageTitle) obj;
        return Boolean.valueOf(pageTitle.isMainPage() || pageTitle.namespace() != Namespace.MAIN);
    }

    private final Object invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda0(Object obj) {
        SearchResult searchResult = (SearchResult) obj;
        return Animation.CC.m(searchResult.pageTitle.getPrefixedText(), "#", searchResult.pageTitle.fragment);
    }

    private final Object invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda1(Object obj) {
        return ((SearchResult) obj).pageTitle.getPrefixedText();
    }

    private final Object invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1$$ExternalSyntheticLambda0(Object obj) {
        return ((SemanticSearchResult) obj).title;
    }

    private final Object invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda1(Object obj) {
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM RecentSearch ORDER BY timestamp DESC");
        try {
            int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "text");
            int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text = prepare.getText(columnIndexOrThrow);
                Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow2) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow2)));
                if (fromTimestamp == null) {
                    throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                }
                arrayList.add(new RecentSearch(text, fromTimestamp));
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    private final Object invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda2(Object obj) {
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE FROM RecentSearch");
        try {
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    private final Object invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda1(Object obj) {
        ((AnimatedContentTransitionScopeImpl) obj).getClass();
        return EnterTransitionImpl.None;
    }

    private final Object invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda2(Object obj) {
        ((AnimatedContentTransitionScopeImpl) obj).getClass();
        return ExitTransitionImpl.None;
    }

    private final Object invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda3(Object obj) {
        ((AnimatedContentTransitionScopeImpl) obj).getClass();
        return EnterTransitionImpl.None;
    }

    private final Object invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda4(Object obj) {
        ((AnimatedContentTransitionScopeImpl) obj).getClass();
        return ExitTransitionImpl.None;
    }

    private final Object invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFilterActivity$$ExternalSyntheticLambda1(Object obj) {
        String str = (String) obj;
        int i = SuggestedEditsRecentEditsFilterActivity.$r8$clinit;
        str.getClass();
        return str;
    }

    private final Object invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$$ExternalSyntheticLambda0(Object obj) {
        return ((CombinedLoadStates) obj).refresh;
    }

    private final Object invoke$org$wikipedia$talk$db$TalkPageSeenDao_Impl$$ExternalSyntheticLambda2(Object obj) {
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE FROM TalkPageSeen");
        try {
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v2, types: [org.wikipedia.readinglist.database.RecommendedPage] */
    /* JADX WARN: Type inference failed for: r23v3, types: [org.wikipedia.readinglist.database.ReadingListPage] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i;
        int i2;
        Integer valueOf;
        int i3;
        int i4;
        Integer valueOf2;
        int i5;
        Integer valueOf3;
        int i6;
        int i7;
        Integer valueOf4;
        int i8 = this.$r8$classId;
        String str = "Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.";
        String str2 = "Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.";
        Unit unit = Unit.INSTANCE;
        switch (i8) {
            case 0:
                ThreadItem threadItem = (ThreadItem) obj;
                threadItem.getClass();
                int i9 = TalkTopicActivity.$r8$clinit;
                return Boolean.valueOf(UriUtil.isHeaderTemplate(threadItem) && threadItem.replies.isEmpty() && threadItem.othercontent.length() == 0);
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                try {
                    sQLiteConnection.prepare("DELETE FROM PageImage").step();
                    return unit;
                } finally {
                }
            case 2:
                return Boolean.valueOf(((ReadingList) obj).isDefault());
            case 3:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM ReadingList");
                try {
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "listTitle");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "dirty");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new ReadingList(prepare.getText(columnIndexOrThrow), prepare.isNull(columnIndexOrThrow2) ? null : prepare.getText(columnIndexOrThrow2), prepare.getLong(columnIndexOrThrow3), prepare.getLong(columnIndexOrThrow4), prepare.getLong(columnIndexOrThrow5), prepare.getLong(columnIndexOrThrow6), ((int) prepare.getLong(columnIndexOrThrow7)) != 0, prepare.getLong(columnIndexOrThrow8)));
                    }
                    return arrayList;
                } finally {
                }
            case 4:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                try {
                    sQLiteConnection3.prepare("UPDATE ReadingList SET remoteId = -1").step();
                    return unit;
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("UPDATE ReadingListPage SET status = ? WHERE status = ? AND offline = ?");
                try {
                    prepare.bindLong(0L, 1);
                    prepare.bindLong(1L, 2);
                    prepare.bindLong(0L, 3);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                try {
                    sQLiteConnection5.prepare("UPDATE ReadingListPage SET remoteId = -1").step();
                    return unit;
                } finally {
                }
            case 7:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT * FROM ReadingListPage WHERE remoteId < 1");
                try {
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow10)) {
                            i = columnIndexOrThrow22;
                            i2 = columnIndexOrThrow9;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow22;
                            i2 = columnIndexOrThrow9;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow10));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        int i10 = i;
                        int i11 = columnIndexOrThrow23;
                        int i12 = columnIndexOrThrow24;
                        columnIndexOrThrow24 = i12;
                        arrayList2.add(new ReadingListPage(stringToWikiSite, intToNamespace, prepare.getText(columnIndexOrThrow11), prepare.getText(columnIndexOrThrow12), prepare.isNull(columnIndexOrThrow13) ? null : prepare.getText(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow14) ? null : prepare.getText(columnIndexOrThrow14), prepare.getLong(columnIndexOrThrow15), prepare.getLong(columnIndexOrThrow16), prepare.getLong(columnIndexOrThrow17), prepare.getLong(columnIndexOrThrow18), ((int) prepare.getLong(columnIndexOrThrow19)) != 0, prepare.getLong(columnIndexOrThrow20), prepare.getLong(columnIndexOrThrow21), prepare.getText(i10), prepare.getLong(i11), prepare.getLong(i12)));
                        columnIndexOrThrow23 = i11;
                        columnIndexOrThrow9 = i2;
                        columnIndexOrThrow22 = i10;
                    }
                    return arrayList2;
                } finally {
                }
            case 8:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("SELECT * FROM ReadingListPage WHERE status = ?");
                try {
                    prepare.bindLong(2L, 1);
                    int columnIndexOrThrow25 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow26 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow27 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow28 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow29 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow30 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow31 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow32 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow33 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow34 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow35 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow36 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow37 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow38 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow39 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow40 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite2 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow25) ? null : prepare.getText(columnIndexOrThrow25));
                        if (stringToWikiSite2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow26)) {
                            i3 = columnIndexOrThrow38;
                            i4 = columnIndexOrThrow25;
                            valueOf2 = null;
                        } else {
                            i3 = columnIndexOrThrow38;
                            i4 = columnIndexOrThrow25;
                            valueOf2 = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow26));
                        }
                        Namespace intToNamespace2 = ByteString.Companion.intToNamespace(valueOf2);
                        if (intToNamespace2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        int i13 = i3;
                        int i14 = columnIndexOrThrow39;
                        int i15 = columnIndexOrThrow40;
                        columnIndexOrThrow40 = i15;
                        arrayList3.add(new ReadingListPage(stringToWikiSite2, intToNamespace2, prepare.getText(columnIndexOrThrow27), prepare.getText(columnIndexOrThrow28), prepare.isNull(columnIndexOrThrow29) ? null : prepare.getText(columnIndexOrThrow29), prepare.isNull(columnIndexOrThrow30) ? null : prepare.getText(columnIndexOrThrow30), prepare.getLong(columnIndexOrThrow31), prepare.getLong(columnIndexOrThrow32), prepare.getLong(columnIndexOrThrow33), prepare.getLong(columnIndexOrThrow34), ((int) prepare.getLong(columnIndexOrThrow35)) != 0, prepare.getLong(columnIndexOrThrow36), prepare.getLong(columnIndexOrThrow37), prepare.getText(i13), prepare.getLong(i14), prepare.getLong(i15)));
                        columnIndexOrThrow39 = i14;
                        columnIndexOrThrow25 = i4;
                        columnIndexOrThrow38 = i13;
                    }
                    return arrayList3;
                } finally {
                }
            case 9:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("DELETE FROM ReadingListPage WHERE status = ?");
                try {
                    prepare.bindLong(2L, 1);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT COUNT(*) FROM ReadingListPage");
                try {
                    int i16 = prepare.step() ? (int) prepare.getLong(0) : 0;
                    prepare.close();
                    return Integer.valueOf(i16);
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("SELECT * FROM ReadingListPage WHERE atime > 0 ORDER BY atime DESC LIMIT 1");
                try {
                    int columnIndexOrThrow41 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow42 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow43 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow44 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow45 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow46 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow47 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow48 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow49 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow50 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow51 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow52 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow53 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow54 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow55 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow56 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    if (prepare.step()) {
                        WikiSite stringToWikiSite3 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow41) ? null : prepare.getText(columnIndexOrThrow41));
                        if (stringToWikiSite3 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow42)) {
                            i5 = columnIndexOrThrow54;
                            valueOf3 = null;
                        } else {
                            i5 = columnIndexOrThrow54;
                            valueOf3 = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow42));
                        }
                        Namespace intToNamespace3 = ByteString.Companion.intToNamespace(valueOf3);
                        if (intToNamespace3 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        r19 = new ReadingListPage(stringToWikiSite3, intToNamespace3, prepare.getText(columnIndexOrThrow43), prepare.getText(columnIndexOrThrow44), prepare.isNull(columnIndexOrThrow45) ? null : prepare.getText(columnIndexOrThrow45), prepare.isNull(columnIndexOrThrow46) ? null : prepare.getText(columnIndexOrThrow46), prepare.getLong(columnIndexOrThrow47), prepare.getLong(columnIndexOrThrow48), prepare.getLong(columnIndexOrThrow49), prepare.getLong(columnIndexOrThrow50), ((int) prepare.getLong(columnIndexOrThrow51)) != 0, prepare.getLong(columnIndexOrThrow52), prepare.getLong(columnIndexOrThrow53), prepare.getText(i5), prepare.getLong(columnIndexOrThrow55), prepare.getLong(columnIndexOrThrow56));
                    }
                    return r19;
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                try {
                    sQLiteConnection11.prepare("UPDATE RecommendedPage SET status = 1 WHERE status = 0").step();
                    return unit;
                } finally {
                }
            case IMAGE_VALUE:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                prepare = sQLiteConnection12.prepare("SELECT * FROM RecommendedPage WHERE status = 0 ORDER BY timestamp DESC");
                try {
                    int columnIndexOrThrow57 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow58 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow59 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow60 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow61 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow62 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow63 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow64 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow65 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow66 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow67 = UnsignedKt.getColumnIndexOrThrow(prepare, "extract");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        String str3 = str;
                        String str4 = str2;
                        int i17 = (int) prepare.getLong(columnIndexOrThrow57);
                        WikiSite stringToWikiSite4 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow58) ? null : prepare.getText(columnIndexOrThrow58));
                        if (stringToWikiSite4 == null) {
                            throw new IllegalStateException(str3);
                        }
                        String text = prepare.getText(columnIndexOrThrow59);
                        if (prepare.isNull(columnIndexOrThrow60)) {
                            i6 = columnIndexOrThrow59;
                            i7 = columnIndexOrThrow58;
                            valueOf4 = null;
                        } else {
                            i6 = columnIndexOrThrow59;
                            i7 = columnIndexOrThrow58;
                            valueOf4 = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow60));
                        }
                        Namespace intToNamespace4 = ByteString.Companion.intToNamespace(valueOf4);
                        if (intToNamespace4 == null) {
                            throw new IllegalStateException(str4);
                        }
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow61) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow61)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        arrayList4.add(new RecommendedPage(i17, stringToWikiSite4, text, intToNamespace4, fromTimestamp, prepare.getText(columnIndexOrThrow62), prepare.getText(columnIndexOrThrow63), prepare.isNull(columnIndexOrThrow64) ? null : prepare.getText(columnIndexOrThrow64), prepare.isNull(columnIndexOrThrow65) ? null : prepare.getText(columnIndexOrThrow65), (int) prepare.getLong(columnIndexOrThrow66), prepare.isNull(columnIndexOrThrow67) ? null : prepare.getText(columnIndexOrThrow67)));
                        columnIndexOrThrow58 = i7;
                        columnIndexOrThrow59 = i6;
                        str2 = str4;
                        str = str3;
                    }
                    return arrayList4;
                } finally {
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("SELECT * FROM RecommendedPage WHERE id = 0");
                try {
                    int columnIndexOrThrow68 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow69 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow70 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow71 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow72 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow73 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow74 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow75 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow76 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow77 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow78 = UnsignedKt.getColumnIndexOrThrow(prepare, "extract");
                    if (prepare.step()) {
                        int i18 = (int) prepare.getLong(columnIndexOrThrow68);
                        WikiSite stringToWikiSite5 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow69) ? null : prepare.getText(columnIndexOrThrow69));
                        if (stringToWikiSite5 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        String text2 = prepare.getText(columnIndexOrThrow70);
                        Namespace intToNamespace5 = ByteString.Companion.intToNamespace(prepare.isNull(columnIndexOrThrow71) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow71)));
                        if (intToNamespace5 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        Date fromTimestamp2 = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow72) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow72)));
                        if (fromTimestamp2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        r19 = new RecommendedPage(i18, stringToWikiSite5, text2, intToNamespace5, fromTimestamp2, prepare.getText(columnIndexOrThrow73), prepare.getText(columnIndexOrThrow74), prepare.isNull(columnIndexOrThrow75) ? null : prepare.getText(columnIndexOrThrow75), prepare.isNull(columnIndexOrThrow76) ? null : prepare.getText(columnIndexOrThrow76), (int) prepare.getLong(columnIndexOrThrow77), prepare.isNull(columnIndexOrThrow78) ? null : prepare.getText(columnIndexOrThrow78));
                    }
                    return r19;
                } catch (Throwable th) {
                    throw th;
                }
            case 15:
                return invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListInterestsViewModel$loadItems$2$$ExternalSyntheticLambda0(obj);
            case LAZY_VERTICAL_GRID_VALUE:
                return ((PageTitle) obj).getPrefixedText();
            case VERTICAL_GRID_ITEM_VALUE:
                return invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda0(obj);
            case RADIO_GROUP_VALUE:
                return invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda1(obj);
            case RADIO_BUTTON_VALUE:
                return invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1$$ExternalSyntheticLambda0(obj);
            case RADIO_ROW_VALUE:
                return invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda1(obj);
            case RADIO_COLUMN_VALUE:
                return invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda2(obj);
            case SIZE_BOX_VALUE:
                return invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda1(obj);
            case 23:
                return invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda2(obj);
            case 24:
                return invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda3(obj);
            case 25:
                return invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda4(obj);
            case 26:
                return invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFilterActivity$$ExternalSyntheticLambda1(obj);
            case 27:
                return invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$$ExternalSyntheticLambda0(obj);
            case 28:
                return invoke$org$wikipedia$talk$db$TalkPageSeenDao_Impl$$ExternalSyntheticLambda2(obj);
            default:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                prepare = sQLiteConnection14.prepare("SELECT * FROM TalkTemplate ORDER BY `order`");
                try {
                    int columnIndexOrThrow79 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow80 = UnsignedKt.getColumnIndexOrThrow(prepare, "type");
                    int columnIndexOrThrow81 = UnsignedKt.getColumnIndexOrThrow(prepare, "order");
                    int columnIndexOrThrow82 = UnsignedKt.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow83 = UnsignedKt.getColumnIndexOrThrow(prepare, "subject");
                    int columnIndexOrThrow84 = UnsignedKt.getColumnIndexOrThrow(prepare, "message");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        arrayList5.add(new TalkTemplate((int) prepare.getLong(columnIndexOrThrow79), (int) prepare.getLong(columnIndexOrThrow80), (int) prepare.getLong(columnIndexOrThrow81), prepare.getText(columnIndexOrThrow82), prepare.getText(columnIndexOrThrow83), prepare.getText(columnIndexOrThrow84)));
                    }
                    return arrayList5;
                } finally {
                }
        }
    }

    public /* synthetic */ TalkTopicsViewModel$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
    }
}
