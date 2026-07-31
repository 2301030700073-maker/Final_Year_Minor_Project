.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MvhdInfo"
.end annotation


# instance fields
.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final timescale:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/Metadata;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    .line 7
    .line 8
    return-void
.end method
