.class public final Lokio/internal/EocdRecord;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final centralDirectoryOffset:J

.field public final entryCount:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lokio/internal/EocdRecord;->entryCount:J

    .line 5
    .line 6
    iput-wide p4, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    .line 7
    .line 8
    return-void
.end method
