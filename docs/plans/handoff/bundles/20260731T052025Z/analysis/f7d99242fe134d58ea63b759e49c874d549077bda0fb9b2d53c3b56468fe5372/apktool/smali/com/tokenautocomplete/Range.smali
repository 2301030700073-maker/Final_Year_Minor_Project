.class public final Lcom/tokenautocomplete/Range;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-gt p1, p2, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/tokenautocomplete/Range;->start:I

    .line 7
    .line 8
    iput p2, p0, Lcom/tokenautocomplete/Range;->end:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    const-string p0, ") cannot be greater than end ("

    .line 14
    .line 15
    const-string v0, ")"

    .line 16
    .line 17
    const-string v1, "Start ("

    .line 18
    .line 19
    invoke-static {v1, p1, p0, p2, v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tokenautocomplete/Range;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/tokenautocomplete/Range;

    .line 8
    .line 9
    iget v0, p1, Lcom/tokenautocomplete/Range;->start:I

    .line 10
    .line 11
    iget v2, p0, Lcom/tokenautocomplete/Range;->start:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget p1, p1, Lcom/tokenautocomplete/Range;->end:I

    .line 16
    .line 17
    iget p0, p0, Lcom/tokenautocomplete/Range;->end:I

    .line 18
    .line 19
    if-ne p1, p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tokenautocomplete/Range;->start:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Lcom/tokenautocomplete/Range;->end:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v0, ".."

    .line 4
    .line 5
    const-string v1, "]"

    .line 6
    .line 7
    const-string v2, "["

    .line 8
    .line 9
    iget v3, p0, Lcom/tokenautocomplete/Range;->start:I

    .line 10
    .line 11
    iget p0, p0, Lcom/tokenautocomplete/Range;->end:I

    .line 12
    .line 13
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
