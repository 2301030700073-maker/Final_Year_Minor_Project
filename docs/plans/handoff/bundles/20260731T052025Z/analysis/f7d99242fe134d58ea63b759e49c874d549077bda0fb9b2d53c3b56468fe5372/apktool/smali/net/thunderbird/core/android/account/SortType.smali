.class public final enum Lnet/thunderbird/core/android/account/SortType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_ARRIVAL:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_ATTACHMENT:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_FLAGGED:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_SENDER:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_SUBJECT:Lnet/thunderbird/core/android/account/SortType;

.field public static final enum SORT_UNREAD:Lnet/thunderbird/core/android/account/SortType;


# instance fields
.field public final isDefaultAscending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SORT_DATE"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 10
    .line 11
    new-instance v2, Lnet/thunderbird/core/android/account/SortType;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "SORT_ARRIVAL"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lnet/thunderbird/core/android/account/SortType;->SORT_ARRIVAL:Lnet/thunderbird/core/android/account/SortType;

    .line 20
    .line 21
    new-instance v4, Lnet/thunderbird/core/android/account/SortType;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "SORT_SUBJECT"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v3}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lnet/thunderbird/core/android/account/SortType;->SORT_SUBJECT:Lnet/thunderbird/core/android/account/SortType;

    .line 30
    .line 31
    new-instance v6, Lnet/thunderbird/core/android/account/SortType;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "SORT_SENDER"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v3}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lnet/thunderbird/core/android/account/SortType;->SORT_SENDER:Lnet/thunderbird/core/android/account/SortType;

    .line 40
    .line 41
    new-instance v8, Lnet/thunderbird/core/android/account/SortType;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "SORT_UNREAD"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lnet/thunderbird/core/android/account/SortType;->SORT_UNREAD:Lnet/thunderbird/core/android/account/SortType;

    .line 50
    .line 51
    new-instance v10, Lnet/thunderbird/core/android/account/SortType;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "SORT_FLAGGED"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v3}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lnet/thunderbird/core/android/account/SortType;->SORT_FLAGGED:Lnet/thunderbird/core/android/account/SortType;

    .line 60
    .line 61
    new-instance v12, Lnet/thunderbird/core/android/account/SortType;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "SORT_ATTACHMENT"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v3}, Lnet/thunderbird/core/android/account/SortType;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lnet/thunderbird/core/android/account/SortType;->SORT_ATTACHMENT:Lnet/thunderbird/core/android/account/SortType;

    .line 70
    .line 71
    const/4 v14, 0x7

    .line 72
    new-array v14, v14, [Lnet/thunderbird/core/android/account/SortType;

    .line 73
    .line 74
    aput-object v0, v14, v1

    .line 75
    .line 76
    aput-object v2, v14, v3

    .line 77
    .line 78
    aput-object v4, v14, v5

    .line 79
    .line 80
    aput-object v6, v14, v7

    .line 81
    .line 82
    aput-object v8, v14, v9

    .line 83
    .line 84
    aput-object v10, v14, v11

    .line 85
    .line 86
    aput-object v12, v14, v13

    .line 87
    .line 88
    sput-object v14, Lnet/thunderbird/core/android/account/SortType;->$VALUES:[Lnet/thunderbird/core/android/account/SortType;

    .line 89
    .line 90
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 91
    .line 92
    invoke-direct {v0, v14}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lnet/thunderbird/core/android/account/SortType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lnet/thunderbird/core/android/account/SortType;->isDefaultAscending:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/SortType;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/android/account/SortType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/android/account/SortType;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/android/account/SortType;->$VALUES:[Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/android/account/SortType;

    .line 8
    .line 9
    return-object v0
.end method
