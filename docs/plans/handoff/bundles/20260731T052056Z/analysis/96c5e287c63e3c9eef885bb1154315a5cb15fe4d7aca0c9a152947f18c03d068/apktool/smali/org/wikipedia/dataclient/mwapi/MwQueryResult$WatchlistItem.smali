.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$Companion;


# instance fields
.field public final comment:Ljava/lang/String;

.field public final isAnon:Z

.field public final isBot:Z

.field public final isMinor:Z

.field public final isNew:Z

.field public final logdisplay:Ljava/lang/String;

.field public final logtype:Ljava/lang/String;

.field public final newlen:I

.field public final ns:I

.field public final oldRevid:J

.field public final oldlen:I

.field public final pageId:I

.field public final parsedComment:Ljava/lang/String;

.field public final revid:J

.field public final timestamp:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IZZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isNew:Z

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isNew:Z

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isAnon:Z

    goto :goto_1

    :cond_1
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isAnon:Z

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isMinor:Z

    goto :goto_2

    :cond_2
    iput-boolean p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isMinor:Z

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isBot:Z

    goto :goto_3

    :cond_3
    iput-boolean p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isBot:Z

    :goto_3
    and-int/lit8 p2, p1, 0x10

    const-wide/16 p3, 0x0

    if-nez p2, :cond_4

    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldRevid:J

    goto :goto_4

    :cond_4
    iput-wide p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldRevid:J

    :goto_4
    and-int/lit8 p2, p1, 0x20

    const/4 p5, 0x0

    if-nez p2, :cond_5

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->timestamp:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p8, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->timestamp:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->comment:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p9, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->comment:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    const-string p6, ""

    if-nez p2, :cond_7

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->type:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->type:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->pageId:I

    goto :goto_8

    :cond_8
    iput p11, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->pageId:I

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->revid:J

    goto :goto_9

    :cond_9
    iput-wide p12, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->revid:J

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->ns:I

    goto :goto_a

    :cond_a
    move/from16 p2, p14

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->ns:I

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->title:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 p2, p15

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->title:Ljava/lang/String;

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->user:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 p2, p16

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->user:Ljava/lang/String;

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logtype:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 p2, p17

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logtype:Ljava/lang/String;

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logdisplay:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p18

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logdisplay:Ljava/lang/String;

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldlen:I

    goto :goto_f

    :cond_f
    move/from16 p2, p19

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldlen:I

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->newlen:I

    goto :goto_10

    :cond_10
    move/from16 p2, p20

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->newlen:I

    :goto_10
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    goto :goto_11

    :cond_11
    move-object/from16 p2, p21

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    :goto_11
    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_12

    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->parsedComment:Ljava/lang/String;

    return-void

    :cond_12
    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->parsedComment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->timestamp:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
