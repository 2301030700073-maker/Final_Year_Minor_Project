.class public final Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final clusterPosition:J

.field public final duration:J

.field public final relativePosition:I


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sub-long p1, p3, p1

    .line 5
    .line 6
    iput-wide p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->clusterPosition:J

    .line 7
    .line 8
    sub-long/2addr p5, p3

    .line 9
    const-wide/16 p1, 0x8

    .line 10
    .line 11
    sub-long/2addr p5, p1

    .line 12
    long-to-int p1, p5

    .line 13
    iput p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->relativePosition:I

    .line 14
    .line 15
    iput-wide p7, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->duration:J

    .line 16
    .line 17
    return-void
.end method
