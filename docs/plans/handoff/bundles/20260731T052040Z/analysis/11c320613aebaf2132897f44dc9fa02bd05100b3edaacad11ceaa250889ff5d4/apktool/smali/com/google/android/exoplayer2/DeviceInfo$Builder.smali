.class public final Lcom/google/android/exoplayer2/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxVolume:I

.field private minVolume:I

.field private final playbackType:I

.field private routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;Lcom/google/android/exoplayer2/DeviceInfo$1;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRoutingControllerId(Ljava/lang/String;)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 11
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method
