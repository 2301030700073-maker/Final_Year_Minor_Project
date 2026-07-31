.class public final Lexpo/modules/image/records/ImageProgressEvent;
.super Ljava/lang/Object;
.source "events.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/image/records/ImageProgressEvent;",
        "Lexpo/modules/kotlin/records/Record;",
        "loaded",
        "",
        "total",
        "<init>",
        "(II)V",
        "getLoaded$annotations",
        "()V",
        "getLoaded",
        "()I",
        "getTotal$annotations",
        "getTotal",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "expo-image_release"
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
.field private final loaded:I

.field private final total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    .line 21
    iput p2, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/image/records/ImageProgressEvent;IIILjava/lang/Object;)Lexpo/modules/image/records/ImageProgressEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/records/ImageProgressEvent;->copy(II)Lexpo/modules/image/records/ImageProgressEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLoaded$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTotal$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    return v0
.end method

.method public final copy(II)Lexpo/modules/image/records/ImageProgressEvent;
    .locals 1

    new-instance v0, Lexpo/modules/image/records/ImageProgressEvent;

    invoke-direct {v0, p1, p2}, Lexpo/modules/image/records/ImageProgressEvent;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/image/records/ImageProgressEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/image/records/ImageProgressEvent;

    iget v1, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    iget v3, p1, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    iget p1, p1, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLoaded()I
    .locals 1

    .line 20
    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    .line 21
    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lexpo/modules/image/records/ImageProgressEvent;->loaded:I

    iget v1, p0, Lexpo/modules/image/records/ImageProgressEvent;->total:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImageProgressEvent(loaded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", total="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
