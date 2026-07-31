.class public final Lcom/skydoves/landscapist/coil3/CoilImageStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final toCoilImageState(Lcom/skydoves/landscapist/ImageLoadState;)Lcom/skydoves/landscapist/coil3/CoilImageState;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/skydoves/landscapist/ImageLoadState$None;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/skydoves/landscapist/coil3/CoilImageState$None;->INSTANCE:Lcom/skydoves/landscapist/coil3/CoilImageState$None;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of v0, p0, Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Loading;->INSTANCE:Lcom/skydoves/landscapist/coil3/CoilImageState$Loading;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    instance-of v0, p0, Lcom/skydoves/landscapist/ImageLoadState$Success;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;

    .line 24
    .line 25
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadState$Success;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageLoadState$Success;->getData()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v3, v2, Lcoil3/Image;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    check-cast v1, Lcoil3/Image;

    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageLoadState$Success;->getDataSource()Lcom/skydoves/landscapist/DataSource;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, v1, p0}, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;-><init>(Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    instance-of v0, p0, Lcom/skydoves/landscapist/ImageLoadState$Failure;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageState$Failure;

    .line 51
    .line 52
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadState$Failure;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageLoadState$Failure;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    instance-of v3, v2, Lcoil3/Image;

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    check-cast v1, Lcoil3/Image;

    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageLoadState$Failure;->getReason()Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, v1, p0}, Lcom/skydoves/landscapist/coil3/CoilImageState$Failure;-><init>(Lcoil3/Image;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 74
    .line 75
    .line 76
    return-object v1
.end method
