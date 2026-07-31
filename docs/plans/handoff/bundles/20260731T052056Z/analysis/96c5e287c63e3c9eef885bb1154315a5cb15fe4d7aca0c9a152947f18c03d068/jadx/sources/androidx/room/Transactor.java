package androidx.room;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Transactor extends PooledConnection {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SQLiteTransactionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SQLiteTransactionType[] $VALUES;
        public static final SQLiteTransactionType DEFERRED;
        public static final SQLiteTransactionType EXCLUSIVE;
        public static final SQLiteTransactionType IMMEDIATE;

        static {
            SQLiteTransactionType sQLiteTransactionType = new SQLiteTransactionType("DEFERRED", 0);
            DEFERRED = sQLiteTransactionType;
            SQLiteTransactionType sQLiteTransactionType2 = new SQLiteTransactionType("IMMEDIATE", 1);
            IMMEDIATE = sQLiteTransactionType2;
            SQLiteTransactionType sQLiteTransactionType3 = new SQLiteTransactionType("EXCLUSIVE", 2);
            EXCLUSIVE = sQLiteTransactionType3;
            SQLiteTransactionType[] sQLiteTransactionTypeArr = {sQLiteTransactionType, sQLiteTransactionType2, sQLiteTransactionType3};
            $VALUES = sQLiteTransactionTypeArr;
            $ENTRIES = new EnumEntriesList(sQLiteTransactionTypeArr);
        }

        public static SQLiteTransactionType valueOf(String str) {
            return (SQLiteTransactionType) Enum.valueOf(SQLiteTransactionType.class, str);
        }

        public static SQLiteTransactionType[] values() {
            return (SQLiteTransactionType[]) $VALUES.clone();
        }
    }

    Boolean inTransaction(Continuation continuation);

    Object withTransaction(SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda);
}
