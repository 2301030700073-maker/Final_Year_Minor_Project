.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/wikipedia/feed/ForYouModule;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->f$1:Lorg/wikipedia/feed/ForYouModule;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->f$1:Lorg/wikipedia/feed/ForYouModule;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 13
    .line 14
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v2, "BECAUSE_YOU_READ"

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 29
    .line 30
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "PLACES_OF_INTEREST"

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_1
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 45
    .line 46
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v2, "GAMES"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :pswitch_2
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 61
    .line 62
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v2, "BASED_ON_INTEREST"

    .line 68
    .line 69
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :pswitch_3
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 77
    .line 78
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$Random;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v2, "RANDOM"

    .line 84
    .line 85
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :pswitch_4
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 93
    .line 94
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const-string v2, "DISCOVER"

    .line 100
    .line 101
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :pswitch_5
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 109
    .line 110
    check-cast v2, Lorg/wikipedia/feed/ForYouModule$ContinueReading;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const-string v2, "CONTINUE_READING"

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
