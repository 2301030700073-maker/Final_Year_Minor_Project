.class public final Lorg/schabi/newpipe/util/image/PreferredImageQuality$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static fromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/util/image/PreferredImageQuality;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f13020e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const v0, 0x7f13020a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    const v0, 0x7f130207

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 53
    .line 54
    return-object p0
.end method
