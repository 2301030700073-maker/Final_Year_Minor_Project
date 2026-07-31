package org.wikipedia.readinglist.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListPageDao_Impl$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WikiSite f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ Namespace f$4;
    public final /* synthetic */ String f$5;

    public /* synthetic */ ReadingListPageDao_Impl$$ExternalSyntheticLambda12(ReadingListPageDao_Impl readingListPageDao_Impl, WikiSite wikiSite, String str, Namespace namespace, String str2, int i) {
        this.$r8$classId = i;
        this.f$2 = wikiSite;
        this.f$3 = str;
        this.f$4 = namespace;
        this.f$5 = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.wikipedia.readinglist.database.ReadingListPage] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        int i;
        int i2;
        Integer valueOf;
        SQLiteStatement sQLiteStatement;
        int i3;
        ArrayList arrayList;
        Integer valueOf2;
        int i4 = this.$r8$classId;
        String str2 = this.f$5;
        Namespace namespace = this.f$4;
        String str3 = this.f$3;
        WikiSite wikiSite = this.f$2;
        switch (i4) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM ReadingListPage WHERE wiki = ? AND lang = ? AND namespace = ? AND apiTitle = ? AND status != ?");
                try {
                    String wikiSiteToString = LoginClient.wikiSiteToString(wikiSite);
                    if (wikiSiteToString == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindText(1, wikiSiteToString);
                    }
                    prepare.bindText(2, str3);
                    if (ByteString.Companion.namespaceToInt(namespace) == null) {
                        prepare.bindNull(3);
                        str = str2;
                    } else {
                        str = str2;
                        prepare.bindLong(r0.intValue(), 3);
                    }
                    prepare.bindText(4, str);
                    prepare.bindLong(2L, 5);
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
                        if (prepare.isNull(columnIndexOrThrow2)) {
                            i = columnIndexOrThrow14;
                            i2 = columnIndexOrThrow16;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow14;
                            i2 = columnIndexOrThrow16;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow2));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        r16 = new ReadingListPage(stringToWikiSite, intToNamespace, prepare.getText(columnIndexOrThrow3), prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6), prepare.getLong(columnIndexOrThrow7), prepare.getLong(columnIndexOrThrow8), prepare.getLong(columnIndexOrThrow9), prepare.getLong(columnIndexOrThrow10), ((int) prepare.getLong(columnIndexOrThrow11)) != 0, prepare.getLong(columnIndexOrThrow12), prepare.getLong(columnIndexOrThrow13), prepare.getText(i), prepare.getLong(columnIndexOrThrow15), prepare.getLong(i2));
                    }
                    prepare.close();
                    return r16;
                } finally {
                    prepare.close();
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement prepare2 = sQLiteConnection2.prepare("SELECT * FROM ReadingListPage WHERE wiki = ? AND lang = ? AND namespace = ? AND apiTitle = ? AND status != ?");
                try {
                    String wikiSiteToString2 = LoginClient.wikiSiteToString(wikiSite);
                    if (wikiSiteToString2 == null) {
                        prepare2.bindNull(1);
                    } else {
                        prepare2.bindText(1, wikiSiteToString2);
                    }
                    prepare2.bindText(2, str3);
                    if (ByteString.Companion.namespaceToInt(namespace) == null) {
                        prepare2.bindNull(3);
                    } else {
                        prepare2.bindLong(r0.intValue(), 3);
                    }
                    prepare2.bindText(4, str2);
                    prepare2.bindLong(2L, 5);
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare2, "wiki");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare2, "namespace");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare2, "displayTitle");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare2, "apiTitle");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare2, "description");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare2, "thumbUrl");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare2, "listId");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare2, "id");
                    int columnIndexOrThrow25 = UnsignedKt.getColumnIndexOrThrow(prepare2, "mtime");
                    int columnIndexOrThrow26 = UnsignedKt.getColumnIndexOrThrow(prepare2, "atime");
                    int columnIndexOrThrow27 = UnsignedKt.getColumnIndexOrThrow(prepare2, "offline");
                    int columnIndexOrThrow28 = UnsignedKt.getColumnIndexOrThrow(prepare2, "status");
                    int columnIndexOrThrow29 = UnsignedKt.getColumnIndexOrThrow(prepare2, "sizeBytes");
                    int columnIndexOrThrow30 = UnsignedKt.getColumnIndexOrThrow(prepare2, "lang");
                    int columnIndexOrThrow31 = UnsignedKt.getColumnIndexOrThrow(prepare2, "revId");
                    int columnIndexOrThrow32 = UnsignedKt.getColumnIndexOrThrow(prepare2, "remoteId");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare2.step()) {
                        WikiSite stringToWikiSite2 = LoginClient.stringToWikiSite(prepare2.isNull(columnIndexOrThrow17) ? null : prepare2.getText(columnIndexOrThrow17));
                        if (stringToWikiSite2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare2.isNull(columnIndexOrThrow18)) {
                            i3 = columnIndexOrThrow30;
                            arrayList = arrayList2;
                            valueOf2 = null;
                        } else {
                            i3 = columnIndexOrThrow30;
                            arrayList = arrayList2;
                            valueOf2 = Integer.valueOf((int) prepare2.getLong(columnIndexOrThrow18));
                        }
                        Namespace intToNamespace2 = ByteString.Companion.intToNamespace(valueOf2);
                        if (intToNamespace2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        columnIndexOrThrow30 = i3;
                        int i5 = columnIndexOrThrow31;
                        int i6 = columnIndexOrThrow17;
                        int i7 = columnIndexOrThrow32;
                        ReadingListPage readingListPage = new ReadingListPage(stringToWikiSite2, intToNamespace2, prepare2.getText(columnIndexOrThrow19), prepare2.getText(columnIndexOrThrow20), prepare2.isNull(columnIndexOrThrow21) ? null : prepare2.getText(columnIndexOrThrow21), prepare2.isNull(columnIndexOrThrow22) ? null : prepare2.getText(columnIndexOrThrow22), prepare2.getLong(columnIndexOrThrow23), prepare2.getLong(columnIndexOrThrow24), prepare2.getLong(columnIndexOrThrow25), prepare2.getLong(columnIndexOrThrow26), ((int) prepare2.getLong(columnIndexOrThrow27)) != 0, prepare2.getLong(columnIndexOrThrow28), prepare2.getLong(columnIndexOrThrow29), prepare2.getText(columnIndexOrThrow30), prepare2.getLong(i5), prepare2.getLong(i7));
                        columnIndexOrThrow32 = i7;
                        sQLiteStatement = prepare2;
                        ArrayList arrayList3 = arrayList;
                        try {
                            arrayList3.add(readingListPage);
                            columnIndexOrThrow17 = i6;
                            columnIndexOrThrow31 = i5;
                            arrayList2 = arrayList3;
                            prepare2 = sQLiteStatement;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteStatement.close();
                            throw th;
                        }
                    }
                    SQLiteStatement sQLiteStatement2 = prepare2;
                    ArrayList arrayList4 = arrayList2;
                    sQLiteStatement2.close();
                    return arrayList4;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = prepare2;
                }
        }
    }
}
