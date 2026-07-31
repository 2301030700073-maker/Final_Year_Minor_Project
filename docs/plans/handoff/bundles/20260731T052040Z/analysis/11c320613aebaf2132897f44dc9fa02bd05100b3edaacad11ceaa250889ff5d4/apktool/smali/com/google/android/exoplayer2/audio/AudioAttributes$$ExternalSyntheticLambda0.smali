.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic m()Landroid/media/MediaParser$SeekPoint;
    .locals 1

    .line 7
    sget-object v0, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    return-object v0
.end method

.method public static synthetic m(Landroid/database/SQLException;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->$r8$lambda$XYUTM8T1n0shHZXJPGeBUFUJz-I(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->$r8$lambda$hJhS_-tAOYd6XskUkvwF6Vj5ae0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->$r8$lambda$hi0KLYFjwPKvdFapAA8mnUbTXWE()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_2
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->$r8$lambda$R1vgK-JkEO-HOLpz0bXcJ6XRYOY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_3
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->$r8$lambda$6GRiHfq73DxGOaOHADb9-lQQUcs()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_4
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->$r8$lambda$N5Xzrew3bu4TmTBktQJk6bj3_p4()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_5
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->$r8$lambda$TdvbYBRwKicaibsyhlcjSoxq8SY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_6
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->$r8$lambda$HTG9nvxjB8tiQQ5ZaM-YGLg8_aw()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_7
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->$r8$lambda$d_Dc6ph2_eEbQmQ7axsINQG_i6c()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_8
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->$r8$lambda$EbWg24HAil-uodvRuBK7KGHbPlM()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_9
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->$r8$lambda$5hBhKwpQMo5Y1V-wXbZpz_A2KwY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_a
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->$r8$lambda$87TamK49CzdH-uvU83sCFZ0l6iA()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_b
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->$r8$lambda$wSfJ_54lnASe4n8rYplxFGihsFU()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_c
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->$r8$lambda$gkiUd4xrj3_RyGqND7gbTwriJGE()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_d
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->$r8$lambda$2GugIB3gTFjbkdLe5Ec_orWdrkw()[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_e
    const/4 p0, 0x0

    .line 77
    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 78
    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 81
    :pswitch_0
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->$r8$lambda$hJhS_-tAOYd6XskUkvwF6Vj5ae0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->$r8$lambda$hi0KLYFjwPKvdFapAA8mnUbTXWE()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->$r8$lambda$R1vgK-JkEO-HOLpz0bXcJ6XRYOY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->$r8$lambda$6GRiHfq73DxGOaOHADb9-lQQUcs()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->$r8$lambda$N5Xzrew3bu4TmTBktQJk6bj3_p4()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->$r8$lambda$TdvbYBRwKicaibsyhlcjSoxq8SY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->$r8$lambda$HTG9nvxjB8tiQQ5ZaM-YGLg8_aw()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->$r8$lambda$d_Dc6ph2_eEbQmQ7axsINQG_i6c()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->$r8$lambda$EbWg24HAil-uodvRuBK7KGHbPlM()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->$r8$lambda$5hBhKwpQMo5Y1V-wXbZpz_A2KwY()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->$r8$lambda$87TamK49CzdH-uvU83sCFZ0l6iA()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->$r8$lambda$wSfJ_54lnASe4n8rYplxFGihsFU()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->$r8$lambda$gkiUd4xrj3_RyGqND7gbTwriJGE()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->$r8$lambda$2GugIB3gTFjbkdLe5Ec_orWdrkw()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public createProgressiveMediaExtractor(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p6}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->$r8$lambda$CuL0K8lRTgqY_JaKKwQ04JJB7YA(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static/range {p1 .. p6}, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;->$r8$lambda$9Ya_LtLVS2dGXJ930dYWmsfZ93s(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public evaluate(IIIII)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->$r8$lambda$qybkd67L1bf5IrQRNgWj3sxvPfg(IIIII)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->$r8$lambda$itzi5sQ4APfHauk2-YMljPCFep0(IIIII)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->$r8$lambda$cxeJ6djgVH5CZ-KEdmoij_s2DJ8(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->$r8$lambda$cUQ2lpOq050zv7fWt85fuy1Z_sk(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :sswitch_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->$r8$lambda$aAjiqZCTnUjuflPZ0ItfIiXUZ6w(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->$r8$lambda$bPOo7on_BjPRALTJrvU8_xJyBXE()Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->$r8$lambda$G_Md6muwNF8PWrfJHUJdX20yxC0()Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$3O9AMI8ds5A0XXbYJXSnWgm_bhw(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
