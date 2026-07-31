.class public final Lexpo/modules/video/records/VideoThumbnailOptions;
.super Ljava/lang/Object;
.source "VideoThumbnailOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000fR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u000b\u0012\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoThumbnailOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "maxWidth",
        "",
        "maxHeight",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getMaxWidth$annotations",
        "()V",
        "getMaxWidth",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMaxHeight$annotations",
        "getMaxHeight",
        "toNativeSizeLimit",
        "Lkotlin/Pair;",
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
.field private final maxHeight:Ljava/lang/Integer;

.field private final maxWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/video/records/VideoThumbnailOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxWidth:Ljava/lang/Integer;

    .line 8
    iput-object p2, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxHeight:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/video/records/VideoThumbnailOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic getMaxHeight$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMaxWidth$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final toNativeSizeLimit()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxWidth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v1, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxHeight:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lexpo/modules/video/records/VideoThumbnailOptions;->maxHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    if-lt v1, v2, :cond_3

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to generate a thumbnail: The maxWidth and maxHeight parameters must be greater than zero"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
