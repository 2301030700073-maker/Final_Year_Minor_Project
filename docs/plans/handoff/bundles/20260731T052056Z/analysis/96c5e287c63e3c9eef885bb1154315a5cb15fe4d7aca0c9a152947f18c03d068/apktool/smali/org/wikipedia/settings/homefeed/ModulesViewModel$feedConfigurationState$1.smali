.class public final Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public synthetic Z$0:Z

.field public synthetic Z$1:Z

.field public synthetic Z$2:Z


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    check-cast p3, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 20
    .line 21
    new-instance p3, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-direct {p3, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    iput-boolean p0, p3, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$0:Z

    .line 28
    .line 29
    iput-boolean p1, p3, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$1:Z

    .line 30
    .line 31
    iput-boolean p2, p3, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$2:Z

    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-virtual {p3, p0}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$0:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;->Z$2:Z

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Success;

    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->INTERESTS:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f1202a1

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const v0, 0x7f1202a3

    .line 24
    .line 25
    .line 26
    :goto_1
    new-instance v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 27
    .line 28
    const v3, 0x7f1202a4

    .line 29
    .line 30
    .line 31
    const v4, 0x7f080128

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v3, v0, v4, v2}, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;-><init>(IIILorg/wikipedia/settings/homefeed/FeedConfigurationType;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->LOCATION:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 40
    .line 41
    const v3, 0x7f1202a9

    .line 42
    .line 43
    .line 44
    const v4, 0x7f1202a8

    .line 45
    .line 46
    .line 47
    const v5, 0x7f08019a

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3, v4, v5, v0}, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;-><init>(IIILorg/wikipedia/settings/homefeed/FeedConfigurationType;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->READING_HISTORY:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const p0, 0x7f1202aa

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const p0, 0x7f1202a2

    .line 62
    .line 63
    .line 64
    :goto_2
    new-instance v3, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 65
    .line 66
    const v4, 0x7f1202ab

    .line 67
    .line 68
    .line 69
    const v5, 0x7f080178

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v4, p0, v5, v0}, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;-><init>(IIILorg/wikipedia/settings/homefeed/FeedConfigurationType;)V

    .line 73
    .line 74
    .line 75
    sget-object p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->LANGUAGES:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 76
    .line 77
    new-instance v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 78
    .line 79
    const v4, 0x7f1202a7

    .line 80
    .line 81
    .line 82
    const v5, 0x7f1202a6

    .line 83
    .line 84
    .line 85
    const v6, 0x7f080202

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v4, v5, v6, p0}, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;-><init>(IIILorg/wikipedia/settings/homefeed/FeedConfigurationType;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x4

    .line 92
    new-array p0, p0, [Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    aput-object v1, p0, v4

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    aput-object v2, p0, v1

    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    aput-object v3, p0, v1

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    aput-object v0, p0, v1

    .line 105
    .line 106
    invoke-static {p0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {p1, p0}, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Success;-><init>(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-object p1
.end method
