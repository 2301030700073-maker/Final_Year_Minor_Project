.class public final enum Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 2
    .line 3
    const-string v1, "END"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 10
    .line 11
    new-instance v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 12
    .line 13
    const-string v3, "ROLLBACK"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 20
    .line 21
    new-instance v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 22
    .line 23
    const-string v5, "BEGIN_EXCLUSIVE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 30
    .line 31
    new-instance v5, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 32
    .line 33
    const-string v7, "BEGIN_IMMEDIATE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 40
    .line 41
    new-instance v7, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 42
    .line 43
    const-string v9, "BEGIN_DEFERRED"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 65
    .line 66
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 67
    .line 68
    invoke-direct {v0, v9}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 72
    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1

    .line 1
    const-class v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1

    .line 1
    sget-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 8
    .line 9
    return-object v0
.end method
