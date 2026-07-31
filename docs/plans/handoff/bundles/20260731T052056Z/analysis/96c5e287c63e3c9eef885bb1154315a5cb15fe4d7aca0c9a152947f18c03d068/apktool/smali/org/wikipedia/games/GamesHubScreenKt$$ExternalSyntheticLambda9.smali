.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Lj$/time/LocalDate;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function2;Lj$/time/LocalDate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$3:Lj$/time/LocalDate;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$0:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/16 v1, 0x23c

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v4, "archive_click"

    .line 13
    .line 14
    const-string v5, "games_hub"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    iget-object v7, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 18
    .line 19
    const-string v8, "archive"

    .line 20
    .line 21
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$PlayArchive;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$PlayArchive;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;->f$3:Lj$/time/LocalDate;

    .line 29
    .line 30
    invoke-interface {v1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
