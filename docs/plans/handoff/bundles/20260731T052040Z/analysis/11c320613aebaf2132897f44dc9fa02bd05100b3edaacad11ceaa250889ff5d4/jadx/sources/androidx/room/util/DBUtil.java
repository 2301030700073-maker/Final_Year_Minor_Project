package androidx.room.util;

import android.os.Build;
import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.upstream.CmcdConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jsoup.Jsoup;

/* loaded from: classes.dex */
public abstract class DBUtil {
    public static final int columnIndexOf(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnCount = sQLiteStatement.getColumnCount();
        int i = 0;
        while (true) {
            if (i >= columnCount) {
                i = -1;
                break;
            }
            if (str.equals(sQLiteStatement.getColumnName(i))) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return i;
        }
        String m = Owner.CC.m('`', "`", str);
        int columnCount2 = sQLiteStatement.getColumnCount();
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount2) {
                i2 = -1;
                break;
            }
            if (m.equals(sQLiteStatement.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount3 = sQLiteStatement.getColumnCount();
            String concat = ".".concat(str);
            String m2 = Owner.CC.m('`', ".", str);
            for (int i3 = 0; i3 < columnCount3; i3++) {
                String columnName = sQLiteStatement.getColumnName(i3);
                if (columnName.length() >= str.length() + 2 && (StringsKt__StringsJVMKt.endsWith(columnName, concat, false) || (columnName.charAt(0) == '`' && StringsKt__StringsJVMKt.endsWith(columnName, m2, false)))) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public static final boolean defaultValueEqualsCommon(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    int i4 = i3 + 1;
                    if (i3 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt == '(') {
                        i2++;
                    } else if (charAt == ')' && i2 - 1 == 0 && i3 != str.length() - 1) {
                        break;
                    }
                    i++;
                    i3 = i4;
                } else if (i2 == 0) {
                    return Intrinsics.areEqual(StringsKt.trim(str.substring(1, str.length() - 1)).toString(), str2);
                }
            }
        }
        return false;
    }

    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        ListBuilder createListBuilder = Jsoup.createListBuilder();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (prepare.step()) {
            try {
                createListBuilder.add(prepare.getText(0));
            } finally {
            }
        }
        BundleKt.closeFinally(prepare, null);
        ListIterator listIterator = createListBuilder.build().listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                return;
            }
            String str = (String) itr.next();
            if (StringsKt__StringsJVMKt.startsWith(str, "room_fts_content_sync_", false)) {
                SQLite.execSQL(sQLiteConnection, "DROP TRIGGER IF EXISTS ".concat(str));
            }
        }
    }

    public static final String formatString(Collection collection) {
        collection.getClass();
        return !collection.isEmpty() ? StringsKt__IndentKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",\n", "\n", "\n", null, 56)).concat("},") : " }";
    }

    public static final int getColumnIndexOrThrow(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnIndexOf = columnIndexOf(sQLiteStatement, str);
        if (columnIndexOf >= 0) {
            return columnIndexOf;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(sQLiteStatement.getColumnName(i));
        }
        throw new IllegalArgumentException("Column '" + str + "' does not exist. Available columns: [" + CollectionsKt.joinToString$default(arrayList, null, null, null, null, 63) + ']');
    }

    public static final CoroutineContext getCoroutineContext(RoomDatabase roomDatabase, boolean z, ContinuationImpl continuationImpl) {
        TransactionElement transactionElement = (TransactionElement) continuationImpl.getContext().get(TransactionElement.Key);
        CoroutineContext coroutineContext = transactionElement != null ? transactionElement.transactionDispatcher : null;
        if (!roomDatabase.inCompatibilityMode()) {
            CoroutineContext queryContext = roomDatabase.getQueryContext();
            if (coroutineContext == null) {
                coroutineContext = EmptyCoroutineContext.INSTANCE;
            }
            return queryContext.plus(coroutineContext);
        }
        if (coroutineContext != null) {
            return roomDatabase.getQueryContext().plus(coroutineContext);
        }
        if (!z) {
            return roomDatabase.getQueryContext();
        }
        CoroutineContext coroutineContext2 = roomDatabase.transactionContext;
        if (coroutineContext2 != null) {
            return coroutineContext2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("transactionContext");
        throw null;
    }

    public static final long getLastInsertedRowId(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        if (getTotalChangedRows(sQLiteConnection) == 0) {
            return -1L;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT last_insert_rowid()");
        try {
            prepare.step();
            long j = prepare.getLong(0);
            BundleKt.closeFinally(prepare, null);
            return j;
        } finally {
        }
    }

    public static final int getTotalChangedRows(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT changes()");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            BundleKt.closeFinally(prepare, null);
            return i;
        } finally {
        }
    }

    public static final String joinToStringEndWithIndent(Collection collection) {
        return StringsKt__IndentKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",", null, null, null, 62)).concat(StringsKt__IndentKt.prependIndent$default(" }"));
    }

    public static final String joinToStringMiddleWithIndent(Collection collection) {
        return StringsKt__IndentKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",", null, null, null, 62)).concat(StringsKt__IndentKt.prependIndent$default("},"));
    }

    public static final Object performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        roomDatabase.getClass();
        roomDatabase.assertNotMainThread();
        roomDatabase.assertNotSuspendingTransaction();
        CoroutineContext coroutineContext = (CoroutineContext) roomDatabase.suspendingTransactionContext.get();
        if (coroutineContext == null) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return CloseableKt.runBlockingUninterruptible(new DBUtil__DBUtil_androidKt$performBlocking$1(coroutineContext, roomDatabase, z2, z, function1, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object performSuspending(androidx.room.RoomDatabase r15, boolean r16, boolean r17, kotlin.jvm.functions.Function1 r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            r0 = r19
            boolean r1 = r0 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            if (r1 == 0) goto L16
            r1 = r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = (androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r6 = r1
            goto L1c
        L16:
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            r1.<init>(r0)
            goto L14
        L1c:
            java.lang.Object r0 = r6.result
            int r1 = r6.label
            r2 = 0
            r3 = 3
            r4 = 2
            r7 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L50
            if (r1 == r7) goto L4c
            if (r1 == r4) goto L38
            if (r1 != r3) goto L32
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L32:
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r15)
            return r2
        L38:
            boolean r15 = r6.Z$1
            boolean r1 = r6.Z$0
            java.lang.Object r4 = r6.L$1
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            java.lang.Object r5 = r6.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.ResultKt.throwOnFailure(r0)
            r14 = r15
            r13 = r1
            r12 = r4
            r10 = r5
            goto L98
        L4c:
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L50:
            kotlin.ResultKt.throwOnFailure(r0)
            boolean r0 = r15.inCompatibilityMode()
            if (r0 == 0) goto L7c
            boolean r0 = r15.isOpenInternal$room_runtime()
            if (r0 == 0) goto L7c
            boolean r0 = r15.inTransaction()
            if (r0 == 0) goto L7c
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 r0 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1
            r2 = 0
            r1 = r15
            r5 = r16
            r4 = r17
            r3 = r18
            r0.<init>(r1, r2, r3, r4, r5)
            r6.label = r7
            java.lang.Object r15 = r15.useConnection(r5, r0, r6)
            if (r15 != r8) goto L7b
            goto Lac
        L7b:
            return r15
        L7c:
            r5 = r16
            r0 = r17
            r6.L$0 = r15
            r7 = r18
            r6.L$1 = r7
            r6.Z$0 = r5
            r6.Z$1 = r0
            r6.label = r4
            kotlin.coroutines.CoroutineContext r4 = getCoroutineContext(r15, r0, r6)
            if (r4 != r8) goto L93
            goto Lac
        L93:
            r10 = r15
            r14 = r0
            r0 = r4
            r13 = r5
            r12 = r7
        L98:
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 r9 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1
            r11 = 0
            r9.<init>(r10, r11, r12, r13, r14)
            r6.L$0 = r2
            r6.L$1 = r2
            r6.label = r3
            java.lang.Object r15 = kotlinx.coroutines.JobKt.withContext(r0, r9, r6)
            if (r15 != r8) goto Lad
        Lac:
            return r8
        Lad:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.performSuspending(androidx.room.RoomDatabase, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01dc, code lost:
    
        r0 = r8.build();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01e0, code lost:
    
        androidx.core.os.BundleKt.closeFinally(r2, null);
        r10 = r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.room.util.TableInfo read(androidx.sqlite.SQLiteConnection r29, java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil.read(androidx.sqlite.SQLiteConnection, java.lang.String):androidx.room.util.TableInfo");
    }

    public static final List readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int columnIndexOf = columnIndexOf(sQLiteStatement, TtmlNode.ATTR_ID);
        int columnIndexOf2 = columnIndexOf(sQLiteStatement, "seq");
        int columnIndexOf3 = columnIndexOf(sQLiteStatement, "from");
        int columnIndexOf4 = columnIndexOf(sQLiteStatement, "to");
        ListBuilder createListBuilder = Jsoup.createListBuilder();
        while (sQLiteStatement.step()) {
            createListBuilder.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(columnIndexOf), (int) sQLiteStatement.getLong(columnIndexOf2), sQLiteStatement.getText(columnIndexOf3), sQLiteStatement.getText(columnIndexOf4)));
        }
        return CollectionsKt.sorted(createListBuilder.build());
    }

    public static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndexOf = columnIndexOf(prepare, "seqno");
            int columnIndexOf2 = columnIndexOf(prepare, CmcdConfiguration.KEY_CONTENT_ID);
            int columnIndexOf3 = columnIndexOf(prepare, "name");
            int columnIndexOf4 = columnIndexOf(prepare, "desc");
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1 && columnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (prepare.step()) {
                    if (((int) prepare.getLong(columnIndexOf2)) >= 0) {
                        int i = (int) prepare.getLong(columnIndexOf);
                        String text = prepare.getText(columnIndexOf3);
                        String str2 = prepare.getLong(columnIndexOf4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), text);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List sortedWith = CollectionsKt.sortedWith(linkedHashMap.entrySet(), new ViewPager.AnonymousClass1(5));
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10));
                Iterator it = sortedWith.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List list = CollectionsKt.toList(arrayList);
                List sortedWith2 = CollectionsKt.sortedWith(linkedHashMap2.entrySet(), new ViewPager.AnonymousClass1(6));
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith2, 10));
                Iterator it2 = sortedWith2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, list, CollectionsKt.toList(arrayList2));
                BundleKt.closeFinally(prepare, null);
                return index;
            }
            BundleKt.closeFinally(prepare, null);
            return null;
        } finally {
        }
    }
}
