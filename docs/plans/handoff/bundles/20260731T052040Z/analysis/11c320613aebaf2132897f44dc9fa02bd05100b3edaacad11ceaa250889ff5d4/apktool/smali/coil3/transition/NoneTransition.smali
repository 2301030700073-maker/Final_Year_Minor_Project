.class public final Lcoil3/transition/NoneTransition;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/transition/Transition;


# instance fields
.field public final result:Lcoil3/request/ImageResult;

.field public final target:Lcoil3/target/ImageViewTarget;


# direct methods
.method public constructor <init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/transition/NoneTransition;->target:Lcoil3/target/ImageViewTarget;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/transition/NoneTransition;->result:Lcoil3/request/ImageResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final transition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/transition/NoneTransition;->result:Lcoil3/request/ImageResult;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil3/request/SuccessResult;

    .line 4
    .line 5
    iget-object p0, p0, Lcoil3/transition/NoneTransition;->target:Lcoil3/target/ImageViewTarget;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcoil3/request/SuccessResult;

    .line 10
    .line 11
    iget-object v0, v0, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    instance-of v1, v0, Lcoil3/request/ErrorResult;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Lcoil3/request/ErrorResult;

    .line 22
    .line 23
    iget-object v0, v0, Lcoil3/request/ErrorResult;->image:Lcoil3/Image;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
