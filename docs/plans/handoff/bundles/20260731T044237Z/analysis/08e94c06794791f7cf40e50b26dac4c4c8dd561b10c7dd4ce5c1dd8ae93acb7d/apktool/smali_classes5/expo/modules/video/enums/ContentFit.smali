.class public final enum Lexpo/modules/video/enums/ContentFit;
.super Ljava/lang/Enum;
.source "ContentFit.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/enums/ContentFit$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/ContentFit;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/video/enums/ContentFit;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "CONTAIN",
        "FILL",
        "COVER",
        "toResizeMode",
        "",
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

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/ContentFit;

.field public static final enum CONTAIN:Lexpo/modules/video/enums/ContentFit;

.field public static final enum COVER:Lexpo/modules/video/enums/ContentFit;

.field public static final enum FILL:Lexpo/modules/video/enums/ContentFit;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/ContentFit;
    .locals 3

    sget-object v0, Lexpo/modules/video/enums/ContentFit;->CONTAIN:Lexpo/modules/video/enums/ContentFit;

    sget-object v1, Lexpo/modules/video/enums/ContentFit;->FILL:Lexpo/modules/video/enums/ContentFit;

    sget-object v2, Lexpo/modules/video/enums/ContentFit;->COVER:Lexpo/modules/video/enums/ContentFit;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/video/enums/ContentFit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lexpo/modules/video/enums/ContentFit;

    const/4 v1, 0x0

    const-string v2, "contain"

    const-string v3, "CONTAIN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentFit;->CONTAIN:Lexpo/modules/video/enums/ContentFit;

    .line 9
    new-instance v0, Lexpo/modules/video/enums/ContentFit;

    const/4 v1, 0x1

    const-string v2, "fill"

    const-string v3, "FILL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentFit;->FILL:Lexpo/modules/video/enums/ContentFit;

    .line 10
    new-instance v0, Lexpo/modules/video/enums/ContentFit;

    const/4 v1, 0x2

    const-string v2, "cover"

    const-string v3, "COVER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/ContentFit;->COVER:Lexpo/modules/video/enums/ContentFit;

    invoke-static {}, Lexpo/modules/video/enums/ContentFit;->$values()[Lexpo/modules/video/enums/ContentFit;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/ContentFit;->$VALUES:[Lexpo/modules/video/enums/ContentFit;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/ContentFit;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/ContentFit;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/ContentFit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/ContentFit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/ContentFit;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/ContentFit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lexpo/modules/video/enums/ContentFit;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/ContentFit;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/ContentFit;->$VALUES:[Lexpo/modules/video/enums/ContentFit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lexpo/modules/video/enums/ContentFit;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lexpo/modules/video/enums/ContentFit;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toResizeMode()I
    .locals 3

    .line 13
    sget-object v0, Lexpo/modules/video/enums/ContentFit$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/video/enums/ContentFit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
