.class public final enum Lexpo/modules/video/enums/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/enums/ContentType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/ContentType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/video/enums/ContentType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "AUTO",
        "PROGRESSIVE",
        "HLS",
        "DASH",
        "SMOOTH_STREAMING",
        "toMimeTypeString",
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

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/ContentType;

.field public static final enum AUTO:Lexpo/modules/video/enums/ContentType;

.field public static final enum DASH:Lexpo/modules/video/enums/ContentType;

.field public static final enum HLS:Lexpo/modules/video/enums/ContentType;

.field public static final enum PROGRESSIVE:Lexpo/modules/video/enums/ContentType;

.field public static final enum SMOOTH_STREAMING:Lexpo/modules/video/enums/ContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/ContentType;
    .locals 5

    sget-object v0, Lexpo/modules/video/enums/ContentType;->AUTO:Lexpo/modules/video/enums/ContentType;

    sget-object v1, Lexpo/modules/video/enums/ContentType;->PROGRESSIVE:Lexpo/modules/video/enums/ContentType;

    sget-object v2, Lexpo/modules/video/enums/ContentType;->HLS:Lexpo/modules/video/enums/ContentType;

    sget-object v3, Lexpo/modules/video/enums/ContentType;->DASH:Lexpo/modules/video/enums/ContentType;

    sget-object v4, Lexpo/modules/video/enums/ContentType;->SMOOTH_STREAMING:Lexpo/modules/video/enums/ContentType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/video/enums/ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lexpo/modules/video/enums/ContentType;

    const/4 v1, 0x0

    const-string v2, "auto"

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentType;->AUTO:Lexpo/modules/video/enums/ContentType;

    .line 8
    new-instance v0, Lexpo/modules/video/enums/ContentType;

    const/4 v1, 0x1

    const-string v2, "progressive"

    const-string v3, "PROGRESSIVE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentType;->PROGRESSIVE:Lexpo/modules/video/enums/ContentType;

    .line 9
    new-instance v0, Lexpo/modules/video/enums/ContentType;

    const/4 v1, 0x2

    const-string v2, "hls"

    const-string v3, "HLS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentType;->HLS:Lexpo/modules/video/enums/ContentType;

    .line 10
    new-instance v0, Lexpo/modules/video/enums/ContentType;

    const/4 v1, 0x3

    const-string v2, "dash"

    const-string v3, "DASH"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentType;->DASH:Lexpo/modules/video/enums/ContentType;

    .line 11
    new-instance v0, Lexpo/modules/video/enums/ContentType;

    const/4 v1, 0x4

    const-string v2, "smoothStreaming"

    const-string v3, "SMOOTH_STREAMING"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentType;->SMOOTH_STREAMING:Lexpo/modules/video/enums/ContentType;

    invoke-static {}, Lexpo/modules/video/enums/ContentType;->$values()[Lexpo/modules/video/enums/ContentType;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/ContentType;->$VALUES:[Lexpo/modules/video/enums/ContentType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/ContentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/ContentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/ContentType;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 22
    check-cast p0, Lexpo/modules/video/enums/ContentType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/ContentType;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/ContentType;->$VALUES:[Lexpo/modules/video/enums/ContentType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, [Lexpo/modules/video/enums/ContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lexpo/modules/video/enums/ContentType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toMimeTypeString()Ljava/lang/String;
    .locals 3

    .line 14
    sget-object v0, Lexpo/modules/video/enums/ContentType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/video/enums/ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 19
    const-string v2, "application/vnd.ms-sstr+xml"

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 18
    :cond_1
    const-string v2, "application/dash+xml"

    goto :goto_0

    .line 17
    :cond_2
    const-string v2, "application/x-mpegURL"

    :cond_3
    :goto_0
    return-object v2
.end method
