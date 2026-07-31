.class public final synthetic Lrnauthenticator/authenticator/network/Endpoint$WhenMappings;
.super Ljava/lang/Object;
.source "Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/network/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lrnauthenticator/authenticator/Config$Environment;->values()[Lrnauthenticator/authenticator/Config$Environment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lrnauthenticator/authenticator/Config$Environment;->DEV:Lrnauthenticator/authenticator/Config$Environment;

    invoke-virtual {v2}, Lrnauthenticator/authenticator/Config$Environment;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lrnauthenticator/authenticator/Config$Environment;->STG:Lrnauthenticator/authenticator/Config$Environment;

    invoke-virtual {v3}, Lrnauthenticator/authenticator/Config$Environment;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lrnauthenticator/authenticator/Config$Environment;->PROD:Lrnauthenticator/authenticator/Config$Environment;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/Config$Environment;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lrnauthenticator/authenticator/Config$ClientType;->values()[Lrnauthenticator/authenticator/Config$ClientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lrnauthenticator/authenticator/Config$ClientType;->CONSUMER:Lrnauthenticator/authenticator/Config$ClientType;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/Config$ClientType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lrnauthenticator/authenticator/Config$ClientType;->CUSTOMER:Lrnauthenticator/authenticator/Config$ClientType;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/Config$ClientType;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->values()[Lrnauthenticator/authenticator/network/Endpoint$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v4, Lrnauthenticator/authenticator/network/Endpoint$Operation;->LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->OTP_LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SIGN_UP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->TOKEN_EXCHANGE:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->RESET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_EMAIL:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->UPDATE_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_TOKEN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->USER_EXIST:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->DELETE_ACCOUNT:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->GENERATE_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/Endpoint$Operation;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    sput-object v0, Lrnauthenticator/authenticator/network/Endpoint$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
