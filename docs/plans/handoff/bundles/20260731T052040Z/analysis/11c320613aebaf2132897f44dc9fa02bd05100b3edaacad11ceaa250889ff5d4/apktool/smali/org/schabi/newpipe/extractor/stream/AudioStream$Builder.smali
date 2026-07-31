.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public audioLocale:Ljava/util/Locale;

.field public audioTrackId:Ljava/lang/String;

.field public audioTrackName:Ljava/lang/String;

.field public audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public averageBitrate:I

.field public content:Ljava/lang/String;

.field public deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public id:Ljava/lang/String;

.field public isUrl:Z

.field public itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field public manifestUrl:Ljava/lang/String;

.field public mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build()Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string p0, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    .line 16
    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0
.end method
