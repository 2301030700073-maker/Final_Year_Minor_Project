.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Integer;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$Play;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$Play;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/16 v5, 0x23c

    .line 16
    .line 17
    iget-object v7, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Integer;

    .line 18
    .line 19
    const-string v8, "archive_click"

    .line 20
    .line 21
    const-string v9, "games_hub"

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    iget-object v11, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v12, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$PlayArchive;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$PlayArchive;

    .line 32
    .line 33
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :pswitch_0
    const/4 v6, 0x0

    .line 38
    const/16 v5, 0x23c

    .line 39
    .line 40
    iget-object v7, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Integer;

    .line 41
    .line 42
    const-string v8, "review_click"

    .line 43
    .line 44
    const-string v9, "games_hub"

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    iget-object v11, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v12, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$ReviewResults;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$ReviewResults;

    .line 55
    .line 56
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v3

    .line 60
    :pswitch_1
    const/4 v6, 0x0

    .line 61
    const/16 v5, 0x23c

    .line 62
    .line 63
    iget-object v7, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Integer;

    .line 64
    .line 65
    const-string v8, "review_click"

    .line 66
    .line 67
    const-string v9, "games_hub"

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    iget-object v11, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v12, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object v3

    .line 81
    :pswitch_2
    const/4 v14, 0x0

    .line 82
    const/16 v13, 0x23c

    .line 83
    .line 84
    iget-object v15, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Integer;

    .line 85
    .line 86
    const-string v16, "continue_click"

    .line 87
    .line 88
    const-string v17, "games_hub"

    .line 89
    .line 90
    const/16 v18, 0x0

    .line 91
    .line 92
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 95
    .line 96
    move-object/from16 v20, v0

    .line 97
    .line 98
    move-object/from16 v19, v1

    .line 99
    .line 100
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v3

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
