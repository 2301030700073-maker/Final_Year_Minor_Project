.class public final Lokio/BlackholeSink;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokio/Sink;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/BlackholeSink;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final close$okio$BlackholeSink()V
    .locals 0

    .line 1
    return-void
.end method

.method private final close$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final flush$okio$BlackholeSink()V
    .locals 0

    .line 1
    return-void
.end method

.method private final flush$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final write$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1(Lokio/Buffer;J)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget p0, p0, Lokio/BlackholeSink;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget p0, p0, Lokio/BlackholeSink;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    .line 1
    iget p0, p0, Lokio/BlackholeSink;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lokio/Timeout;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout$Companion$NONE$1;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 0

    .line 1
    iget p0, p0, Lokio/BlackholeSink;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
