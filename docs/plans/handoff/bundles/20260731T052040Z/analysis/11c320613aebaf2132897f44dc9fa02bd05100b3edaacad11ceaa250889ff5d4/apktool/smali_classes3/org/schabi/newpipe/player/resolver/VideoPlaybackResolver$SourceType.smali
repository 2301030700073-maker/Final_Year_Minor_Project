.class public final enum Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 2
    .line 3
    const-string v1, "LIVE_STREAM"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 10
    .line 11
    new-instance v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 12
    .line 13
    const-string v3, "VIDEO_WITH_SEPARATED_AUDIO"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 20
    .line 21
    new-instance v3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 22
    .line 23
    const-string v5, "VIDEO_WITH_AUDIO_OR_AUDIO_ONLY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->$VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->$VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 8
    .line 9
    return-object v0
.end method
