.class public final Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11$1;
.super Ljava/lang/Object;
.source "VideoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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


# instance fields
.field final synthetic $view:Lexpo/modules/video/VideoView;


# direct methods
.method public constructor <init>(Lexpo/modules/video/VideoView;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11$1;->$view:Lexpo/modules/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 400
    iget-object v0, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11$1;->$view:Lexpo/modules/video/VideoView;

    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->enterPictureInPicture()V

    return-void
.end method
