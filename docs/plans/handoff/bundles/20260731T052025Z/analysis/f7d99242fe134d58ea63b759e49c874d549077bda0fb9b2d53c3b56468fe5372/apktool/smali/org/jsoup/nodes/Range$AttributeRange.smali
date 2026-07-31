.class public final Lorg/jsoup/nodes/Range$AttributeRange;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final nameRange:Lorg/jsoup/nodes/Range;

.field public final valueRange:Lorg/jsoup/nodes/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const-class v0, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 19
    .line 20
    iget-object v1, p1, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object p0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 11
    .line 12
    aput-object p0, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x3d

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
