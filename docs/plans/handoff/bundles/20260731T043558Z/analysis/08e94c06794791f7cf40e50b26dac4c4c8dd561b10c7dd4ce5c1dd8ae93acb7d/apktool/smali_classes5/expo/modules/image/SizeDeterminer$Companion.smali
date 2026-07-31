.class public final Lexpo/modules/image/SizeDeterminer$Companion;
.super Ljava/lang/Object;
.source "ImageViewWrapperTarget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/SizeDeterminer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R(\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000c\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/image/SizeDeterminer$Companion;",
        "",
        "<init>",
        "()V",
        "PENDING_SIZE",
        "",
        "maxDisplayLength",
        "getMaxDisplayLength$annotations",
        "getMaxDisplayLength",
        "()Ljava/lang/Integer;",
        "setMaxDisplayLength",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/image/SizeDeterminer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMaxDisplayLength(Lexpo/modules/image/SizeDeterminer$Companion;Landroid/content/Context;)I
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lexpo/modules/image/SizeDeterminer$Companion;->getMaxDisplayLength(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private final getMaxDisplayLength(Landroid/content/Context;)I
    .locals 1

    .line 340
    invoke-virtual {p0}, Lexpo/modules/image/SizeDeterminer$Companion;->getMaxDisplayLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 342
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 343
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 345
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/image/SizeDeterminer$Companion;->setMaxDisplayLength(Ljava/lang/Integer;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/image/SizeDeterminer$Companion;->getMaxDisplayLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static synthetic getMaxDisplayLength$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getMaxDisplayLength()Ljava/lang/Integer;
    .locals 1

    .line 334
    invoke-static {}, Lexpo/modules/image/SizeDeterminer;->access$getMaxDisplayLength$cp()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final setMaxDisplayLength(Ljava/lang/Integer;)V
    .locals 0

    .line 334
    invoke-static {p1}, Lexpo/modules/image/SizeDeterminer;->access$setMaxDisplayLength$cp(Ljava/lang/Integer;)V

    return-void
.end method
