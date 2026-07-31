.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createNewKiosk(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$5:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 9
    .line 10
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-direct {v0, v1, p0, p2, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$7:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 22
    .line 23
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMusicExtractor;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TRENDING_VIDEOS"

    .line 30
    .line 31
    invoke-direct {v0, v1, p0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$6:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 36
    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMoviesAndShowsTrailersExtractor;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "TRENDING_MOVIES"

    .line 44
    .line 45
    invoke-direct {v0, v1, p0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$4:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 50
    .line 51
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v5, "UCOpNcN46UbXVtpKMrmU4Abg"

    .line 58
    .line 59
    const-string v6, "Egh0cmVuZGluZw%3D%3D"

    .line 60
    .line 61
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 62
    .line 63
    move-object v4, p2

    .line 64
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_3
    move-object v5, p2

    .line 69
    sget-object p2, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$8:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 70
    .line 71
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v6, "FEpodcasts_destination"

    .line 78
    .line 79
    const-string v7, "qgcCCAM%3D"

    .line 80
    .line 81
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 82
    .line 83
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :pswitch_4
    move-object v5, p2

    .line 88
    sget-object p2, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 89
    .line 90
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const-string v6, "UC4R8DWoMoI7CAwX8_LjQHig"

    .line 97
    .line 98
    const-string v7, "EgdsaXZldGFikgEDCKEK"

    .line 99
    .line 100
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 101
    .line 102
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
