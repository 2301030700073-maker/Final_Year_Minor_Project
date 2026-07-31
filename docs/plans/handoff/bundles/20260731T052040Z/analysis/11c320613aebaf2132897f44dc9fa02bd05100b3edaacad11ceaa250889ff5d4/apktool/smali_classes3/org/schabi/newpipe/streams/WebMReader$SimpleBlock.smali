.class public final Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public absoluteTimeCodeNs:J

.field public data:Ljava/io/InputStream;

.field public dataSize:I

.field public flags:B

.field public final ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field public relativeTimeCode:S

.field public trackNumber:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 5
    .line 6
    return-void
.end method
