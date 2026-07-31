.class public final enum Lexpo/modules/image/enums/Priority;
.super Ljava/lang/Enum;
.source "Priority.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/enums/Priority$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/image/enums/Priority;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/image/enums/Priority;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LOW",
        "NORMAL",
        "HIGH",
        "toGlidePriority",
        "Lcom/bumptech/glide/Priority;",
        "toGlidePriority$expo_image_release",
        "expo-image_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/image/enums/Priority;

.field public static final enum HIGH:Lexpo/modules/image/enums/Priority;

.field public static final enum LOW:Lexpo/modules/image/enums/Priority;

.field public static final enum NORMAL:Lexpo/modules/image/enums/Priority;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/image/enums/Priority;
    .locals 3

    sget-object v0, Lexpo/modules/image/enums/Priority;->LOW:Lexpo/modules/image/enums/Priority;

    sget-object v1, Lexpo/modules/image/enums/Priority;->NORMAL:Lexpo/modules/image/enums/Priority;

    sget-object v2, Lexpo/modules/image/enums/Priority;->HIGH:Lexpo/modules/image/enums/Priority;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/image/enums/Priority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lexpo/modules/image/enums/Priority;

    const/4 v1, 0x0

    const-string v2, "low"

    const-string v3, "LOW"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/Priority;->LOW:Lexpo/modules/image/enums/Priority;

    .line 7
    new-instance v0, Lexpo/modules/image/enums/Priority;

    const/4 v1, 0x1

    const-string v2, "normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/Priority;->NORMAL:Lexpo/modules/image/enums/Priority;

    .line 8
    new-instance v0, Lexpo/modules/image/enums/Priority;

    const/4 v1, 0x2

    const-string v2, "high"

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/Priority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/Priority;->HIGH:Lexpo/modules/image/enums/Priority;

    invoke-static {}, Lexpo/modules/image/enums/Priority;->$values()[Lexpo/modules/image/enums/Priority;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/Priority;->$VALUES:[Lexpo/modules/image/enums/Priority;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/Priority;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/image/enums/Priority;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/image/enums/Priority;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/image/enums/Priority;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/image/enums/Priority;
    .locals 1

    const-class v0, Lexpo/modules/image/enums/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 15
    check-cast p0, Lexpo/modules/image/enums/Priority;

    return-object p0
.end method

.method public static values()[Lexpo/modules/image/enums/Priority;
    .locals 1

    sget-object v0, Lexpo/modules/image/enums/Priority;->$VALUES:[Lexpo/modules/image/enums/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, [Lexpo/modules/image/enums/Priority;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/image/enums/Priority;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toGlidePriority$expo_image_release()Lcom/bumptech/glide/Priority;
    .locals 2

    .line 10
    sget-object v0, Lexpo/modules/image/enums/Priority$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/image/enums/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 13
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 12
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    :goto_0
    return-object v0
.end method
