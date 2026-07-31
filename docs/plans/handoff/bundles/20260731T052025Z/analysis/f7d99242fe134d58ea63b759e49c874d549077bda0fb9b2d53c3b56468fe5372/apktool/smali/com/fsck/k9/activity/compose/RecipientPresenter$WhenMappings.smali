.class public abstract synthetic Lcom/fsck/k9/activity/compose/RecipientPresenter$WhenMappings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->values()[Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

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
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    :catch_0
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x2

    .line 14
    :try_start_1
    aput v4, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    :catch_1
    const/4 v5, 0x3

    .line 17
    :try_start_2
    aput v5, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    .line 19
    :catch_2
    :try_start_3
    aput v3, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 20
    .line 21
    :catch_3
    const/4 v3, 0x5

    .line 22
    :try_start_4
    aput v3, v0, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 23
    .line 24
    :catch_4
    invoke-static {}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v0, v0

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    :try_start_5
    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 32
    .line 33
    :catch_5
    :try_start_6
    aput v4, v0, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 34
    .line 35
    :catch_6
    :try_start_7
    aput v5, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 36
    .line 37
    :catch_7
    invoke-static {}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v0, v0

    .line 42
    new-array v0, v0, [I

    .line 43
    .line 44
    :try_start_8
    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 45
    .line 46
    :catch_8
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 47
    .line 48
    invoke-static {}, Lcom/fsck/k9/mail/Message$RecipientType;->values()[Lcom/fsck/k9/mail/Message$RecipientType;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    array-length v0, v0

    .line 53
    new-array v0, v0, [I

    .line 54
    .line 55
    :try_start_9
    aput v1, v0, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 56
    .line 57
    :catch_9
    :try_start_a
    aput v4, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 58
    .line 59
    :catch_a
    :try_start_b
    aput v5, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 60
    .line 61
    :catch_b
    return-void
.end method
