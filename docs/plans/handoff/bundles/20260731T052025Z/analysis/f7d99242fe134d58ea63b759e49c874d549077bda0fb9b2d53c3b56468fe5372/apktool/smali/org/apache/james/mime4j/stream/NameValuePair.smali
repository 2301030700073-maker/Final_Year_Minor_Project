.class public final Lorg/apache/james/mime4j/stream/NameValuePair;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 7
    .line 8
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
    goto :goto_1

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p1, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object p1, p1, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    move p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move p0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    if-eqz p0, :cond_3

    .line 39
    .line 40
    :goto_1
    return v0

    .line 41
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokhttp3/Handshake$Companion;->hashCode(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->hashCode(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v1, "=\""

    .line 9
    .line 10
    const-string v2, "\""

    .line 11
    .line 12
    invoke-static {p0, v1, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
