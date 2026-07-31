.class public abstract Lcoil3/EventListener;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/request/ImageRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/EventListener$Companion;,
        Lcoil3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/EventListener$Companion;

.field public static final NONE:Lcoil3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/EventListener$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/EventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/EventListener;->Companion:Lcoil3/EventListener$Companion;

    .line 8
    .line 9
    new-instance v0, Lcoil3/EventListener$Companion$NONE$1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcoil3/EventListener$Companion$NONE$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcoil3/EventListener;->NONE:Lcoil3/EventListener;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public decodeEnd(Lcoil3/request/ImageRequest;Lcoil3/decode/Decoder;Lcoil3/request/Options;Lcoil3/decode/DecodeResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public decodeStart(Lcoil3/request/ImageRequest;Lcoil3/decode/Decoder;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    return-void
.end method

.method public fetchEnd(Lcoil3/request/ImageRequest;Lcoil3/fetch/Fetcher;Lcoil3/request/Options;Lcoil3/fetch/FetchResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public fetchStart(Lcoil3/request/ImageRequest;Lcoil3/fetch/Fetcher;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    return-void
.end method

.method public keyEnd(Lcoil3/request/ImageRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public keyStart(Lcoil3/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public mapEnd(Lcoil3/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public mapStart(Lcoil3/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCancel(Lcoil3/request/ImageRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Lcoil3/request/ImageRequest;Lcoil3/request/ErrorResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart(Lcoil3/request/ImageRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public resolveSizeEnd(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)V
    .locals 0

    .line 1
    return-void
.end method

.method public resolveSizeStart(Lcoil3/request/ImageRequest;Lcoil3/size/SizeResolver;)V
    .locals 0

    .line 1
    return-void
.end method

.method public transformEnd(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public transformStart(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public transitionEnd(Lcoil3/request/ImageRequest;Lcoil3/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public transitionStart(Lcoil3/request/ImageRequest;Lcoil3/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method
