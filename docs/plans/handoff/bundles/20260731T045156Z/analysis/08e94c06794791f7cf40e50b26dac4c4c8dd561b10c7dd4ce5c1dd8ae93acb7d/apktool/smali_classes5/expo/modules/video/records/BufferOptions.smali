.class public final Lexpo/modules/video/records/BufferOptions;
.super Ljava/lang/Object;
.source "BufferOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bR(\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0012\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\r\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\r\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\r\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/video/records/BufferOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "preferredForwardBufferDuration",
        "",
        "maxBufferBytes",
        "",
        "prioritizeTimeOverSizeThreshold",
        "",
        "minBufferForPlayback",
        "<init>",
        "(Ljava/lang/Double;JZD)V",
        "getPreferredForwardBufferDuration$annotations",
        "()V",
        "getPreferredForwardBufferDuration",
        "()Ljava/lang/Double;",
        "setPreferredForwardBufferDuration",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getMaxBufferBytes$annotations",
        "getMaxBufferBytes",
        "()J",
        "setMaxBufferBytes",
        "(J)V",
        "getPrioritizeTimeOverSizeThreshold$annotations",
        "getPrioritizeTimeOverSizeThreshold",
        "()Z",
        "setPrioritizeTimeOverSizeThreshold",
        "(Z)V",
        "getMinBufferForPlayback$annotations",
        "getMinBufferForPlayback",
        "()D",
        "setMinBufferForPlayback",
        "(D)V",
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


# instance fields
.field private maxBufferBytes:J

.field private minBufferForPlayback:D

.field private preferredForwardBufferDuration:Ljava/lang/Double;

.field private prioritizeTimeOverSizeThreshold:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lexpo/modules/video/records/BufferOptions;-><init>(Ljava/lang/Double;JZDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;JZD)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/BufferOptions;->preferredForwardBufferDuration:Ljava/lang/Double;

    .line 12
    iput-wide p2, p0, Lexpo/modules/video/records/BufferOptions;->maxBufferBytes:J

    .line 13
    iput-boolean p4, p0, Lexpo/modules/video/records/BufferOptions;->prioritizeTimeOverSizeThreshold:Z

    .line 14
    iput-wide p5, p0, Lexpo/modules/video/records/BufferOptions;->minBufferForPlayback:D

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;JZDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move p8, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const-wide/high16 p5, 0x4000000000000000L    # 2.0

    :cond_3
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p8

    move-wide p7, v2

    .line 10
    invoke-direct/range {p2 .. p8}, Lexpo/modules/video/records/BufferOptions;-><init>(Ljava/lang/Double;JZD)V

    return-void
.end method

.method public static synthetic getMaxBufferBytes$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMinBufferForPlayback$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPreferredForwardBufferDuration$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPrioritizeTimeOverSizeThreshold$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMaxBufferBytes()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lexpo/modules/video/records/BufferOptions;->maxBufferBytes:J

    return-wide v0
.end method

.method public final getMinBufferForPlayback()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lexpo/modules/video/records/BufferOptions;->minBufferForPlayback:D

    return-wide v0
.end method

.method public final getPreferredForwardBufferDuration()Ljava/lang/Double;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/video/records/BufferOptions;->preferredForwardBufferDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrioritizeTimeOverSizeThreshold()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lexpo/modules/video/records/BufferOptions;->prioritizeTimeOverSizeThreshold:Z

    return v0
.end method

.method public final setMaxBufferBytes(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lexpo/modules/video/records/BufferOptions;->maxBufferBytes:J

    return-void
.end method

.method public final setMinBufferForPlayback(D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lexpo/modules/video/records/BufferOptions;->minBufferForPlayback:D

    return-void
.end method

.method public final setPreferredForwardBufferDuration(Ljava/lang/Double;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/BufferOptions;->preferredForwardBufferDuration:Ljava/lang/Double;

    return-void
.end method

.method public final setPrioritizeTimeOverSizeThreshold(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lexpo/modules/video/records/BufferOptions;->prioritizeTimeOverSizeThreshold:Z

    return-void
.end method
