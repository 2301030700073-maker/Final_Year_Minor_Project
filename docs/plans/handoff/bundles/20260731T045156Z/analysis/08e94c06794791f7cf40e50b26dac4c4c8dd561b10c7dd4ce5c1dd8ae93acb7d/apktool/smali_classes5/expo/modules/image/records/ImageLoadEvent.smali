.class public final Lexpo/modules/image/records/ImageLoadEvent;
.super Ljava/lang/Object;
.source "events.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/image/records/ImageLoadEvent;",
        "Lexpo/modules/kotlin/records/Record;",
        "cacheType",
        "",
        "source",
        "Lexpo/modules/image/records/ImageSource;",
        "<init>",
        "(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)V",
        "getCacheType$annotations",
        "()V",
        "getCacheType",
        "()Ljava/lang/String;",
        "getSource$annotations",
        "getSource",
        "()Lexpo/modules/image/records/ImageSource;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final cacheType:Ljava/lang/String;

.field private final source:Lexpo/modules/image/records/ImageSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)V
    .locals 1

    const-string v0, "cacheType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/image/records/ImageLoadEvent;Ljava/lang/String;Lexpo/modules/image/records/ImageSource;ILjava/lang/Object;)Lexpo/modules/image/records/ImageLoadEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/records/ImageLoadEvent;->copy(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)Lexpo/modules/image/records/ImageLoadEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCacheType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSource$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lexpo/modules/image/records/ImageSource;
    .locals 1

    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)Lexpo/modules/image/records/ImageLoadEvent;
    .locals 1

    const-string v0, "cacheType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/image/records/ImageLoadEvent;

    invoke-direct {v0, p1, p2}, Lexpo/modules/image/records/ImageLoadEvent;-><init>(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/image/records/ImageLoadEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/image/records/ImageLoadEvent;

    iget-object v1, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    iget-object p1, p1, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCacheType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Lexpo/modules/image/records/ImageSource;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    invoke-virtual {v1}, Lexpo/modules/image/records/ImageSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/image/records/ImageLoadEvent;->cacheType:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/image/records/ImageLoadEvent;->source:Lexpo/modules/image/records/ImageSource;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImageLoadEvent(cacheType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
