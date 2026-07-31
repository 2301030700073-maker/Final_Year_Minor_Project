package org.wikipedia.talk.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkPageSeenDao_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$1;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i;
        int i2;
        Integer valueOf;
        int i3 = this.$r8$classId;
        String str = this.f$1;
        switch (i3) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("DELETE FROM TalkPageSeen WHERE sha = ?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    prepare.close();
                    return Unit.INSTANCE;
                } finally {
                    prepare.close();
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM ReadingListPage WHERE UPPER(displayTitle) LIKE UPPER(?) ESCAPE '\\'");
                try {
                    prepare.bindText(1, str);
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
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow) ? null : prepare.getText(columnIndexOrThrow));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow2)) {
                            i = columnIndexOrThrow13;
                            i2 = columnIndexOrThrow14;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow13;
                            i2 = columnIndexOrThrow14;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow2));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        String text = prepare.getText(columnIndexOrThrow3);
                        String text2 = prepare.getText(columnIndexOrThrow4);
                        String text3 = prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5);
                        String text4 = prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6);
                        long j = prepare.getLong(columnIndexOrThrow7);
                        long j2 = prepare.getLong(columnIndexOrThrow8);
                        long j3 = prepare.getLong(columnIndexOrThrow9);
                        long j4 = prepare.getLong(columnIndexOrThrow10);
                        boolean z = ((int) prepare.getLong(columnIndexOrThrow11)) != 0;
                        long j5 = prepare.getLong(columnIndexOrThrow12);
                        columnIndexOrThrow13 = i;
                        long j6 = prepare.getLong(columnIndexOrThrow13);
                        columnIndexOrThrow14 = i2;
                        String text5 = prepare.getText(columnIndexOrThrow14);
                        int i4 = columnIndexOrThrow;
                        int i5 = columnIndexOrThrow15;
                        long j7 = prepare.getLong(i5);
                        columnIndexOrThrow15 = i5;
                        int i6 = columnIndexOrThrow16;
                        columnIndexOrThrow16 = i6;
                        arrayList.add(new ReadingListPage(stringToWikiSite, intToNamespace, text, text2, text3, text4, j, j2, j3, j4, z, j5, j6, text5, j7, prepare.getLong(i6)));
                        columnIndexOrThrow = i4;
                    }
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
        }
    }

    public /* synthetic */ TalkPageSeenDao_Impl$$ExternalSyntheticLambda3(String str, ReadingListPageDao_Impl readingListPageDao_Impl) {
        this.f$1 = str;
    }
}
