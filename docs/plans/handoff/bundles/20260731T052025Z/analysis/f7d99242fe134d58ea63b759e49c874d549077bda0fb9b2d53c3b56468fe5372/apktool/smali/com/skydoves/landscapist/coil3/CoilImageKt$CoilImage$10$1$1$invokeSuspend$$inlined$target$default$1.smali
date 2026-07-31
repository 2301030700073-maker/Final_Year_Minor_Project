.class public final Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$channelFlow$inlined:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1;->$$this$channelFlow$inlined:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lcoil3/Image;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart(Lcoil3/Image;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1;->$$this$channelFlow$inlined:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    sget-object p1, Lcom/skydoves/landscapist/ImageLoadState$Loading;->INSTANCE:Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 4
    .line 5
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcoil3/Image;)V
    .locals 0

    .line 1
    return-void
.end method
