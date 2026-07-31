package org.wikipedia.readinglist.db;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$listScopeImpl$1;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListPageDao_Impl$$ExternalSyntheticLambda19 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ Enum f$4;
    public final /* synthetic */ String f$5;
    public final /* synthetic */ long f$6;

    public /* synthetic */ ReadingListPageDao_Impl$$ExternalSyntheticLambda19(RunCallbackAction runCallbackAction, LargeWidgetSize largeWidgetSize, String str, long j, String str2) {
        this.f$2 = runCallbackAction;
        this.f$4 = largeWidgetSize;
        this.f$3 = str;
        this.f$6 = j;
        this.f$5 = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.wikipedia.readinglist.database.ReadingListPage] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Enum r3 = this.f$4;
        Object obj2 = this.f$2;
        switch (i) {
            case 0:
                WikiSite wikiSite = (WikiSite) obj2;
                String str = this.f$3;
                Namespace namespace = (Namespace) r3;
                String str2 = this.f$5;
                long j = this.f$6;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM ReadingListPage WHERE wiki = ? AND lang = ? AND namespace = ? AND apiTitle = ? AND listId = ? AND status != ?");
                try {
                    String wikiSiteToString = LoginClient.wikiSiteToString(wikiSite);
                    if (wikiSiteToString == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindText(1, wikiSiteToString);
                    }
                    prepare.bindText(2, str);
                    if (ByteString.Companion.namespaceToInt(namespace) == null) {
                        prepare.bindNull(3);
                    } else {
                        prepare.bindLong(r0.intValue(), 3);
                    }
                    prepare.bindText(4, str2);
                    prepare.bindLong(j, 5);
                    prepare.bindLong(2L, 6);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    if (prepare.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow) ? null : prepare.getText(columnIndexOrThrow));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(prepare.isNull(columnIndexOrThrow2) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow2)));
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        r17 = new ReadingListPage(stringToWikiSite, intToNamespace, prepare.getText(columnIndexOrThrow3), prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6), prepare.getLong(columnIndexOrThrow7), prepare.getLong(columnIndexOrThrow8), prepare.getLong(columnIndexOrThrow9), prepare.getLong(columnIndexOrThrow10), ((int) prepare.getLong(columnIndexOrThrow11)) != 0, prepare.getLong(columnIndexOrThrow12), prepare.getLong(columnIndexOrThrow13), prepare.getText(columnIndexOrThrow14), prepare.getLong(columnIndexOrThrow15), prepare.getLong(columnIndexOrThrow16));
                    }
                    prepare.close();
                    return r17;
                } catch (Throwable th) {
                    prepare.close();
                    throw th;
                }
            default:
                RunCallbackAction runCallbackAction = (RunCallbackAction) obj2;
                LargeWidgetSize largeWidgetSize = (LargeWidgetSize) r3;
                LazyListKt$applyListScope$listScopeImpl$1 lazyListKt$applyListScope$listScopeImpl$1 = (LazyListKt$applyListScope$listScopeImpl$1) obj;
                lazyListKt$applyListScope$listScopeImpl$1.getClass();
                String str3 = this.f$3;
                long j2 = this.f$6;
                lazyListKt$applyListScope$listScopeImpl$1.$itemList.add(new Pair(Long.MIN_VALUE, new ComposableLambdaImpl(new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13(runCallbackAction, largeWidgetSize, str3, j2), true, 236475444)));
                lazyListKt$applyListScope$listScopeImpl$1.$itemList.add(new Pair(Long.MIN_VALUE, new ComposableLambdaImpl(new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13(runCallbackAction, largeWidgetSize, j2, this.f$5, 1), true, 78211677)));
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListPageDao_Impl$$ExternalSyntheticLambda19(ReadingListPageDao_Impl readingListPageDao_Impl, WikiSite wikiSite, String str, Namespace namespace, String str2, long j) {
        this.f$2 = wikiSite;
        this.f$3 = str;
        this.f$4 = namespace;
        this.f$5 = str2;
        this.f$6 = j;
    }
}
