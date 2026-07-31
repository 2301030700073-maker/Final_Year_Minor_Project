.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$1:Z

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:I

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$cWfcOiaRtQ9VaXxL3LBSUmNo6lo(IZLcom/google/android/exoplayer2/Player$Listener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
