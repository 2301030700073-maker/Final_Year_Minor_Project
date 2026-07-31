.class public final synthetic Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;
.super Ljava/lang/Object;
.source "StartupProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->values()[Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-virtual {v2}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-virtual {v3}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->values()[Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ERROR:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    invoke-virtual {v3}, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->UPDATE_AVAILABLE:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    invoke-virtual {v1}, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->NO_UPDATE_AVAILABLE:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    invoke-virtual {v1}, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
