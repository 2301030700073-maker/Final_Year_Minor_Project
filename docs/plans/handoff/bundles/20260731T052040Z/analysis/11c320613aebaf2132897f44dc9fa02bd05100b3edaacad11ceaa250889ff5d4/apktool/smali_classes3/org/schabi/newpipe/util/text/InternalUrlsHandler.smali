.class public abstract Lorg/schabi/newpipe/util/text/InternalUrlsHandler;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(.*)&t=(\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lokhttp3/Cookie$Companion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/Cookie$Companion;->getId(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/Cookie$Companion;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    new-instance v0, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 14
    .line 15
    iget p2, p2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 16
    .line 17
    invoke-direct {v0, p2, p3, p1}, Lorg/schabi/newpipe/player/TimestampChangeData;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    const-class p2, Lorg/schabi/newpipe/player/PlayerService;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "player_intent_type"

    .line 28
    .line 29
    sget-object p3, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "player_intent_data"

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :catch_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method
