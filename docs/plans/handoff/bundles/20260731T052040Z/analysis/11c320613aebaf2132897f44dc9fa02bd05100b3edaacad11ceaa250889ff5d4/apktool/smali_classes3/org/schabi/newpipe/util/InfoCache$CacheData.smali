.class public final Lorg/schabi/newpipe/util/InfoCache$CacheData;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final expireTimestamp:J

.field public final info:Lorg/schabi/newpipe/extractor/Info;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/Info;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    add-long/2addr v0, p2

    .line 9
    iput-wide v0, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->expireTimestamp:J

    .line 10
    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->info:Lorg/schabi/newpipe/extractor/Info;

    .line 12
    .line 13
    return-void
.end method
