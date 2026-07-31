.class public final Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final addr:Ljava/lang/String;

.field public final keyData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 18
    .line 19
    iget-object p1, p1, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", keyData="

    .line 8
    .line 9
    const-string v2, ")"

    .line 10
    .line 11
    const-string v3, "AutocryptGossipHeader(addr="

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, p0, v1, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
