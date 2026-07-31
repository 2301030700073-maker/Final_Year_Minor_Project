.class public final enum Lnet/thunderbird/core/android/account/FolderMode;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/android/account/FolderMode;

.field public static final enum ALL:Lnet/thunderbird/core/android/account/FolderMode;

.field public static final enum FIRST_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

.field public static final enum NONE:Lnet/thunderbird/core/android/account/FolderMode;

.field public static final enum NOT_SECOND_CLASS:Lnet/thunderbird/core/android/account/FolderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/android/account/FolderMode;

    .line 12
    .line 13
    const-string v3, "ALL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/core/android/account/FolderMode;->ALL:Lnet/thunderbird/core/android/account/FolderMode;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/core/android/account/FolderMode;

    .line 22
    .line 23
    const-string v5, "FIRST_CLASS"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/core/android/account/FolderMode;->FIRST_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/core/android/account/FolderMode;

    .line 32
    .line 33
    const-string v7, "FIRST_AND_SECOND_CLASS"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lnet/thunderbird/core/android/account/FolderMode;

    .line 40
    .line 41
    const-string v9, "NOT_SECOND_CLASS"

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v7, Lnet/thunderbird/core/android/account/FolderMode;->NOT_SECOND_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 48
    .line 49
    const/4 v9, 0x5

    .line 50
    new-array v9, v9, [Lnet/thunderbird/core/android/account/FolderMode;

    .line 51
    .line 52
    aput-object v0, v9, v2

    .line 53
    .line 54
    aput-object v1, v9, v4

    .line 55
    .line 56
    aput-object v3, v9, v6

    .line 57
    .line 58
    aput-object v5, v9, v8

    .line 59
    .line 60
    aput-object v7, v9, v10

    .line 61
    .line 62
    sput-object v9, Lnet/thunderbird/core/android/account/FolderMode;->$VALUES:[Lnet/thunderbird/core/android/account/FolderMode;

    .line 63
    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/FolderMode;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/android/account/FolderMode;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/android/account/FolderMode;->$VALUES:[Lnet/thunderbird/core/android/account/FolderMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/android/account/FolderMode;

    .line 8
    .line 9
    return-object v0
.end method
