.class public final Lcom/fsck/k9/message/html/UriMatch;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final endIndex:I

.field public final startIndex:I

.field public final uri:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 8
    .line 9
    iput p2, p0, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/fsck/k9/message/html/UriMatch;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/fsck/k9/message/html/UriMatch;

    .line 12
    .line 13
    iget v1, p0, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 14
    .line 15
    iget v3, p1, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 21
    .line 22
    iget v3, p1, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", endIndex="

    .line 2
    .line 3
    const-string v1, ", uri="

    .line 4
    .line 5
    const-string v2, "UriMatch(startIndex="

    .line 6
    .line 7
    iget v3, p0, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 8
    .line 9
    iget v4, p0, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, ")"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
