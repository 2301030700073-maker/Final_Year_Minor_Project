.class public final synthetic Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

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
    .locals 2

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;->INSTANCE$3:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    .line 9
    .line 10
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;

    .line 11
    .line 12
    const-string v1, "https://bandcamp.com/api/bcweekly/3/list"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;->json:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    sget-object p1, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;->INSTANCE$3:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    .line 27
    .line 28
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;

    .line 29
    .line 30
    const-string v1, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
