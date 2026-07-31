.class public final Lorg/wikipedia/feed/model/WikiGameCard;
.super Lorg/wikipedia/feed/model/ForYouCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final date:Ljava/lang/String;

.field public final wikiGame:Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/model/WikiGameCard;->wikiGame:Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/model/WikiGameCard;->date:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/model/WikiGameCard;->date:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method
