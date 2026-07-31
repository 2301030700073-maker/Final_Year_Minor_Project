.class public final Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;
.super Ljava/lang/Object;
.source "VideoPlayerLoadControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/VideoPlayerLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_MIN_BUFFER_MS",
        "",
        "DEFAULT_MAX_BUFFER_MS",
        "DEFAULT_BUFFER_FOR_PLAYBACK_MS",
        "DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS",
        "DEFAULT_TARGET_BUFFER_BYTES",
        "DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS",
        "",
        "DEFAULT_BACK_BUFFER_DURATION_MS",
        "DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME",
        "DEFAULT_VIDEO_BUFFER_SIZE",
        "DEFAULT_AUDIO_BUFFER_SIZE",
        "DEFAULT_TEXT_BUFFER_SIZE",
        "DEFAULT_METADATA_BUFFER_SIZE",
        "DEFAULT_CAMERA_MOTION_BUFFER_SIZE",
        "DEFAULT_IMAGE_BUFFER_SIZE",
        "DEFAULT_MUXED_BUFFER_SIZE",
        "getDEFAULT_MUXED_BUFFER_SIZE",
        "()I",
        "DEFAULT_MIN_BUFFER_SIZE",
        "getDefaultBufferSize",
        "trackType",
        "assertGreaterOrEqual",
        "",
        "value1",
        "value2",
        "name1",
        "",
        "name2",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDefaultBufferSize(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;I)I
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->getDefaultBufferSize(I)I

    move-result p0

    return p0
.end method

.method private final assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 522
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " cannot be less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private final getDefaultBufferSize(I)I
    .locals 1

    const/high16 v0, 0x20000

    packed-switch p1, :pswitch_data_0

    .line 517
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const/high16 v0, 0x7d00000

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0xc80000

    goto :goto_0

    .line 508
    :pswitch_2
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->getDEFAULT_MUXED_BUFFER_SIZE()I

    move-result v0

    goto :goto_0

    .line 516
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_4
    const/4 v0, 0x0

    :goto_0
    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final getDEFAULT_MUXED_BUFFER_SIZE()I
    .locals 1

    .line 498
    invoke-static {}, Lexpo/modules/video/player/VideoPlayerLoadControl;->access$getDEFAULT_MUXED_BUFFER_SIZE$cp()I

    move-result v0

    return v0
.end method
