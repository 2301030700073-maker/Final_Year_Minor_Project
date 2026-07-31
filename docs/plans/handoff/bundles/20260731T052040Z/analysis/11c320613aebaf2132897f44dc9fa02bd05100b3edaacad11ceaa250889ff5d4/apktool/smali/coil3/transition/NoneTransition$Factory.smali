.class public final Lcoil3/transition/NoneTransition$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/transition/Transition$Factory;


# virtual methods
.method public final create(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;
    .locals 0

    .line 1
    new-instance p0, Lcoil3/transition/NoneTransition;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcoil3/transition/NoneTransition;-><init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
