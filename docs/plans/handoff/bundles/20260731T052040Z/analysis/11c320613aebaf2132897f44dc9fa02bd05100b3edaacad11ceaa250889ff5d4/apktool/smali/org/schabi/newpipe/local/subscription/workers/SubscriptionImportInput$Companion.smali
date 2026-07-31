.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static fromData(Landroidx/work/Data;)Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string v1, "mode"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/work/Data;->getInt(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "No service id provided"

    .line 13
    .line 14
    const-string v4, "service_id"

    .line 15
    .line 16
    const-string/jumbo v5, "url"

    .line 17
    .line 18
    .line 19
    const/4 v6, -0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v1, v7, :cond_1

    .line 24
    .line 25
    if-ne v1, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    const-string p0, "Unknown mode: "

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_1
    invoke-virtual {p0, v6, v4}, Landroidx/work/Data;->getInt(ILjava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v0, v6, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 64
    .line 65
    invoke-direct {v1, v0, p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;-><init>(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_2
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_3
    invoke-virtual {p0, v6, v4}, Landroidx/work/Data;->getInt(ILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eq v0, v6, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 87
    .line 88
    invoke-direct {v1, v0, p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v2
.end method
