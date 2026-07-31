.class public abstract synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$WhenMappings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lnet/thunderbird/feature/notification/api/ui/style/SnackbarDuration;->values()[Lnet/thunderbird/feature/notification/api/ui/style/SnackbarDuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    :catch_0
    const/4 v3, 0x2

    .line 13
    :try_start_1
    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    :catch_1
    const/4 v4, 0x3

    .line 16
    :try_start_2
    aput v4, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    .line 18
    :catch_2
    invoke-static {}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->values()[Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v0, v0

    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    :try_start_3
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    .line 27
    :catch_3
    :try_start_4
    aput v3, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 28
    .line 29
    :catch_4
    sput-object v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 30
    .line 31
    invoke-static {}, Lnet/thunderbird/core/common/action/SwipeAction;->values()[Lnet/thunderbird/core/common/action/SwipeAction;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    array-length v0, v0

    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    :try_start_5
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 39
    .line 40
    :catch_5
    :try_start_6
    aput v3, v0, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 41
    .line 42
    :catch_6
    :try_start_7
    aput v4, v0, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 43
    .line 44
    :catch_7
    const/4 v1, 0x4

    .line 45
    :try_start_8
    aput v1, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 46
    .line 47
    :catch_8
    const/4 v2, 0x5

    .line 48
    :try_start_9
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 49
    .line 50
    :catch_9
    const/4 v1, 0x6

    .line 51
    :try_start_a
    aput v1, v0, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 52
    .line 53
    :catch_a
    const/4 v2, 0x7

    .line 54
    :try_start_b
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 55
    .line 56
    :catch_b
    const/16 v1, 0x8

    .line 57
    .line 58
    :try_start_c
    aput v1, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 59
    .line 60
    :catch_c
    const/16 v2, 0x9

    .line 61
    .line 62
    :try_start_d
    aput v2, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 63
    .line 64
    :catch_d
    const/16 v2, 0xa

    .line 65
    .line 66
    :try_start_e
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 67
    .line 68
    :catch_e
    return-void
.end method
