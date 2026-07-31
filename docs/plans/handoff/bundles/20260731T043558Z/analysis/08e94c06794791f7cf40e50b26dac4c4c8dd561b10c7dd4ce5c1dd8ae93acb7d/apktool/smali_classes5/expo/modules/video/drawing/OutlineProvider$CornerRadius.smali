.class public final enum Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;
.super Ljava/lang/Enum;
.source "OutlineProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/drawing/OutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerRadius"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "TOP_LEFT",
        "TOP_RIGHT",
        "BOTTOM_RIGHT",
        "BOTTOM_LEFT",
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

.field private static final synthetic $VALUES:[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

.field public static final enum BOTTOM_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

.field public static final enum BOTTOM_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

.field public static final enum TOP_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

.field public static final enum TOP_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;
    .locals 4

    sget-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->TOP_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    sget-object v1, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->TOP_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    sget-object v2, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->BOTTOM_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    sget-object v3, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->BOTTOM_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->TOP_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    .line 32
    new-instance v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->TOP_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    .line 33
    new-instance v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->BOTTOM_RIGHT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    .line 34
    new-instance v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->BOTTOM_LEFT:Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    invoke-static {}, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->$values()[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->$VALUES:[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;
    .locals 1

    const-class v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 35
    check-cast p0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;
    .locals 1

    sget-object v0, Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;->$VALUES:[Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, [Lexpo/modules/video/drawing/OutlineProvider$CornerRadius;

    return-object v0
.end method
