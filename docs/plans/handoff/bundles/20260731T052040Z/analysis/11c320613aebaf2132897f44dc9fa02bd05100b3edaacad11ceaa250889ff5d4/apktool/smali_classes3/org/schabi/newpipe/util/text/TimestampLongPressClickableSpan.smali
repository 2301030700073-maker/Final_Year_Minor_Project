.class public final Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final descriptionText:Ljava/lang/String;

.field public final relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final relatedStreamUrl:Ljava/lang/String;

.field public final timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->Companion:Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->descriptionText:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 21
    .line 22
    iput-object p5, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p6, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 5
    .line 6
    iget p1, p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 13
    .line 14
    invoke-static {v0, v1, p0, p1}, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->Companion:Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget p1, v2, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "&t="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 44
    .line 45
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 61
    .line 62
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget p1, v2, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, "?start="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget p1, v2, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 92
    .line 93
    iget v0, v2, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 94
    .line 95
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->descriptionText:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    :goto_0
    iget p1, v2, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "#t="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
