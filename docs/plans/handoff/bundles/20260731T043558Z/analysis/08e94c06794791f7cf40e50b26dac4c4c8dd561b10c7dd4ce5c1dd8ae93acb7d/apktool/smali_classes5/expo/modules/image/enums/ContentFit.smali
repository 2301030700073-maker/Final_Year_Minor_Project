.class public final enum Lexpo/modules/image/enums/ContentFit;
.super Ljava/lang/Enum;
.source "ContentFit.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/enums/ContentFit$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/image/enums/ContentFit;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/image/enums/ContentFit;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "Contain",
        "Cover",
        "Fill",
        "None",
        "ScaleDown",
        "toMatrix",
        "Landroid/graphics/Matrix;",
        "imageRect",
        "Landroid/graphics/RectF;",
        "viewRect",
        "sourceWidth",
        "",
        "sourceHeight",
        "toMatrix$expo_image_release",
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

.field private static final synthetic $VALUES:[Lexpo/modules/image/enums/ContentFit;

.field public static final enum Contain:Lexpo/modules/image/enums/ContentFit;

.field public static final enum Cover:Lexpo/modules/image/enums/ContentFit;

.field public static final enum Fill:Lexpo/modules/image/enums/ContentFit;

.field public static final enum None:Lexpo/modules/image/enums/ContentFit;

.field public static final enum ScaleDown:Lexpo/modules/image/enums/ContentFit;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/image/enums/ContentFit;
    .locals 5

    sget-object v0, Lexpo/modules/image/enums/ContentFit;->Contain:Lexpo/modules/image/enums/ContentFit;

    sget-object v1, Lexpo/modules/image/enums/ContentFit;->Cover:Lexpo/modules/image/enums/ContentFit;

    sget-object v2, Lexpo/modules/image/enums/ContentFit;->Fill:Lexpo/modules/image/enums/ContentFit;

    sget-object v3, Lexpo/modules/image/enums/ContentFit;->None:Lexpo/modules/image/enums/ContentFit;

    sget-object v4, Lexpo/modules/image/enums/ContentFit;->ScaleDown:Lexpo/modules/image/enums/ContentFit;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/image/enums/ContentFit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lexpo/modules/image/enums/ContentFit;

    const/4 v1, 0x0

    const-string v2, "contain"

    const-string v3, "Contain"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->Contain:Lexpo/modules/image/enums/ContentFit;

    .line 24
    new-instance v0, Lexpo/modules/image/enums/ContentFit;

    const/4 v1, 0x1

    const-string v2, "cover"

    const-string v3, "Cover"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->Cover:Lexpo/modules/image/enums/ContentFit;

    .line 30
    new-instance v0, Lexpo/modules/image/enums/ContentFit;

    const/4 v1, 0x2

    const-string v2, "fill"

    const-string v3, "Fill"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->Fill:Lexpo/modules/image/enums/ContentFit;

    .line 36
    new-instance v0, Lexpo/modules/image/enums/ContentFit;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v3, "None"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->None:Lexpo/modules/image/enums/ContentFit;

    .line 42
    new-instance v0, Lexpo/modules/image/enums/ContentFit;

    const/4 v1, 0x4

    const-string v2, "scale-down"

    const-string v3, "ScaleDown"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/image/enums/ContentFit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->ScaleDown:Lexpo/modules/image/enums/ContentFit;

    invoke-static {}, Lexpo/modules/image/enums/ContentFit;->$values()[Lexpo/modules/image/enums/ContentFit;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->$VALUES:[Lexpo/modules/image/enums/ContentFit;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/enums/ContentFit;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/image/enums/ContentFit;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/image/enums/ContentFit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/image/enums/ContentFit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/image/enums/ContentFit;
    .locals 1

    const-class v0, Lexpo/modules/image/enums/ContentFit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 89
    check-cast p0, Lexpo/modules/image/enums/ContentFit;

    return-object p0
.end method

.method public static values()[Lexpo/modules/image/enums/ContentFit;
    .locals 1

    sget-object v0, Lexpo/modules/image/enums/ContentFit;->$VALUES:[Lexpo/modules/image/enums/ContentFit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 89
    check-cast v0, [Lexpo/modules/image/enums/ContentFit;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/image/enums/ContentFit;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toMatrix$expo_image_release(Landroid/graphics/RectF;Landroid/graphics/RectF;II)Landroid/graphics/Matrix;
    .locals 3

    const-string v0, "imageRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    sget-object v1, Lexpo/modules/image/enums/ContentFit$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/image/enums/ContentFit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    if-eq p4, v1, :cond_2

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p4, p4

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    cmpl-float p3, p3, p4

    if-gez p3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object p2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    sget-object p3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    cmpl-float p3, p3, p4

    if-gez p3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_8

    .line 83
    :cond_3
    sget-object p3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 45
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 58
    :cond_5
    sget-object p3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 48
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    .line 49
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    .line 51
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    .line 52
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p4, p3

    div-float/2addr p2, p1

    .line 54
    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 56
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 46
    :cond_7
    sget-object p3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :cond_8
    :goto_1
    return-object v0
.end method
