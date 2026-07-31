package androidx.sqlite.driver;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SupportSQLiteStatement$Companion$TransactionOperation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SupportSQLiteStatement$Companion$TransactionOperation[] $VALUES;
    public static final SupportSQLiteStatement$Companion$TransactionOperation BEGIN_DEFERRED;
    public static final SupportSQLiteStatement$Companion$TransactionOperation BEGIN_EXCLUSIVE;
    public static final SupportSQLiteStatement$Companion$TransactionOperation BEGIN_IMMEDIATE;
    public static final SupportSQLiteStatement$Companion$TransactionOperation END;
    public static final SupportSQLiteStatement$Companion$TransactionOperation ROLLBACK;

    static {
        SupportSQLiteStatement$Companion$TransactionOperation supportSQLiteStatement$Companion$TransactionOperation = new SupportSQLiteStatement$Companion$TransactionOperation("END", 0);
        END = supportSQLiteStatement$Companion$TransactionOperation;
        SupportSQLiteStatement$Companion$TransactionOperation supportSQLiteStatement$Companion$TransactionOperation2 = new SupportSQLiteStatement$Companion$TransactionOperation("ROLLBACK", 1);
        ROLLBACK = supportSQLiteStatement$Companion$TransactionOperation2;
        SupportSQLiteStatement$Companion$TransactionOperation supportSQLiteStatement$Companion$TransactionOperation3 = new SupportSQLiteStatement$Companion$TransactionOperation("BEGIN_EXCLUSIVE", 2);
        BEGIN_EXCLUSIVE = supportSQLiteStatement$Companion$TransactionOperation3;
        SupportSQLiteStatement$Companion$TransactionOperation supportSQLiteStatement$Companion$TransactionOperation4 = new SupportSQLiteStatement$Companion$TransactionOperation("BEGIN_IMMEDIATE", 3);
        BEGIN_IMMEDIATE = supportSQLiteStatement$Companion$TransactionOperation4;
        SupportSQLiteStatement$Companion$TransactionOperation supportSQLiteStatement$Companion$TransactionOperation5 = new SupportSQLiteStatement$Companion$TransactionOperation("BEGIN_DEFERRED", 4);
        BEGIN_DEFERRED = supportSQLiteStatement$Companion$TransactionOperation5;
        SupportSQLiteStatement$Companion$TransactionOperation[] supportSQLiteStatement$Companion$TransactionOperationArr = {supportSQLiteStatement$Companion$TransactionOperation, supportSQLiteStatement$Companion$TransactionOperation2, supportSQLiteStatement$Companion$TransactionOperation3, supportSQLiteStatement$Companion$TransactionOperation4, supportSQLiteStatement$Companion$TransactionOperation5};
        $VALUES = supportSQLiteStatement$Companion$TransactionOperationArr;
        $ENTRIES = new EnumEntriesList(supportSQLiteStatement$Companion$TransactionOperationArr);
    }

    public static SupportSQLiteStatement$Companion$TransactionOperation valueOf(String str) {
        return (SupportSQLiteStatement$Companion$TransactionOperation) Enum.valueOf(SupportSQLiteStatement$Companion$TransactionOperation.class, str);
    }

    public static SupportSQLiteStatement$Companion$TransactionOperation[] values() {
        return (SupportSQLiteStatement$Companion$TransactionOperation[]) $VALUES.clone();
    }
}
