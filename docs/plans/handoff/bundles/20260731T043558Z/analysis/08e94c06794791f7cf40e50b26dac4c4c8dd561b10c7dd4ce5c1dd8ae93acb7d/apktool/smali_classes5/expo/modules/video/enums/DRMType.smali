.class public final enum Lexpo/modules/video/enums/DRMType;
.super Ljava/lang/Enum;
.source "DRMType.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/enums/DRMType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/DRMType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/video/enums/DRMType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "CLEARKEY",
        "FAIRPLAY",
        "PLAYREADY",
        "WIDEVINE",
        "isSupported",
        "",
        "toUUID",
        "Ljava/util/UUID;",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/DRMType;

.field public static final enum CLEARKEY:Lexpo/modules/video/enums/DRMType;

.field public static final enum FAIRPLAY:Lexpo/modules/video/enums/DRMType;

.field public static final enum PLAYREADY:Lexpo/modules/video/enums/DRMType;

.field public static final enum WIDEVINE:Lexpo/modules/video/enums/DRMType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/DRMType;
    .locals 4

    sget-object v0, Lexpo/modules/video/enums/DRMType;->CLEARKEY:Lexpo/modules/video/enums/DRMType;

    sget-object v1, Lexpo/modules/video/enums/DRMType;->FAIRPLAY:Lexpo/modules/video/enums/DRMType;

    sget-object v2, Lexpo/modules/video/enums/DRMType;->PLAYREADY:Lexpo/modules/video/enums/DRMType;

    sget-object v3, Lexpo/modules/video/enums/DRMType;->WIDEVINE:Lexpo/modules/video/enums/DRMType;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/video/enums/DRMType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lexpo/modules/video/enums/DRMType;

    const/4 v1, 0x0

    const-string v2, "clearkey"

    const-string v3, "CLEARKEY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/DRMType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/DRMType;->CLEARKEY:Lexpo/modules/video/enums/DRMType;

    .line 10
    new-instance v0, Lexpo/modules/video/enums/DRMType;

    const/4 v1, 0x1

    const-string v2, "fairplay"

    const-string v3, "FAIRPLAY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/DRMType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/DRMType;->FAIRPLAY:Lexpo/modules/video/enums/DRMType;

    .line 11
    new-instance v0, Lexpo/modules/video/enums/DRMType;

    const/4 v1, 0x2

    const-string v2, "playready"

    const-string v3, "PLAYREADY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/DRMType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/DRMType;->PLAYREADY:Lexpo/modules/video/enums/DRMType;

    .line 12
    new-instance v0, Lexpo/modules/video/enums/DRMType;

    const/4 v1, 0x3

    const-string v2, "widevine"

    const-string v3, "WIDEVINE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/DRMType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/DRMType;->WIDEVINE:Lexpo/modules/video/enums/DRMType;

    invoke-static {}, Lexpo/modules/video/enums/DRMType;->$values()[Lexpo/modules/video/enums/DRMType;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/DRMType;->$VALUES:[Lexpo/modules/video/enums/DRMType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/DRMType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/DRMType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/DRMType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/DRMType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/DRMType;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/DRMType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 26
    check-cast p0, Lexpo/modules/video/enums/DRMType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/DRMType;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/DRMType;->$VALUES:[Lexpo/modules/video/enums/DRMType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, [Lexpo/modules/video/enums/DRMType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/video/enums/DRMType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 15
    sget-object v0, Lexpo/modules/video/enums/DRMType;->FAIRPLAY:Lexpo/modules/video/enums/DRMType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toUUID()Ljava/util/UUID;
    .locals 2

    .line 19
    sget-object v0, Lexpo/modules/video/enums/DRMType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/video/enums/DRMType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 23
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v1, "WIDEVINE_UUID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 22
    :cond_1
    sget-object v0, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    const-string v1, "PLAYREADY_UUID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v0, Lexpo/modules/video/UnsupportedDRMTypeException;

    invoke-direct {v0, p0}, Lexpo/modules/video/UnsupportedDRMTypeException;-><init>(Lexpo/modules/video/enums/DRMType;)V

    throw v0

    .line 20
    :cond_3
    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    const-string v1, "CLEARKEY_UUID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
