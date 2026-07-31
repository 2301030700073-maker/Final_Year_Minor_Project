.class public final Lcoil3/transition/CrossfadeTransition$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/transition/Transition$Factory;


# instance fields
.field public final durationMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcoil3/transition/CrossfadeTransition$Factory;->durationMillis:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "durationMillis must be > 0."

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public final create(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;
    .locals 2

    .line 1
    instance-of v0, p2, Lcoil3/request/SuccessResult;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcoil3/transition/NoneTransition;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcoil3/transition/NoneTransition;-><init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    move-object v0, p2

    .line 12
    check-cast v0, Lcoil3/request/SuccessResult;

    .line 13
    .line 14
    iget-object v0, v0, Lcoil3/request/SuccessResult;->dataSource:Lcoil3/decode/DataSource;

    .line 15
    .line 16
    sget-object v1, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    new-instance p0, Lcoil3/transition/NoneTransition;

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcoil3/transition/NoneTransition;-><init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    .line 27
    .line 28
    iget p0, p0, Lcoil3/transition/CrossfadeTransition$Factory;->durationMillis:I

    .line 29
    .line 30
    invoke-direct {v0, p1, p2, p0}, Lcom/grack/nanojson/JsonParser;-><init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;I)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
