.class public final Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;
.super Ljava/lang/Object;
.source "VideoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModuleKt;->VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field public static final INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;-><init>()V

    sput-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p1, Lexpo/modules/video/VideoView;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;->invoke(Lexpo/modules/video/VideoView;Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/video/VideoView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 386
    :goto_0
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    invoke-static {v0, p2}, Lexpo/modules/video/PlayerViewExtensionKt;->applyRequiresLinearPlayback(Landroidx/media3/ui/PlayerView;Z)V

    .line 387
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lexpo/modules/video/player/VideoPlayer;->setRequiresLinearPlayback(Z)V

    :cond_1
    return-void
.end method
