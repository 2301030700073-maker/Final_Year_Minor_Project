.class public final synthetic Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$4:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$2:[B

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$3:Lcom/google/common/util/concurrent/SettableFuture;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$4:Lcom/google/android/exoplayer2/Format;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$3:Lcom/google/common/util/concurrent/SettableFuture;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$4:Lcom/google/android/exoplayer2/Format;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$2:[B

    .line 10
    .line 11
    invoke-static {v2, v3, p0, v0, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->$r8$lambda$qOheiByonsUVmNcVwqDHWfJHaVc(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/Format;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
