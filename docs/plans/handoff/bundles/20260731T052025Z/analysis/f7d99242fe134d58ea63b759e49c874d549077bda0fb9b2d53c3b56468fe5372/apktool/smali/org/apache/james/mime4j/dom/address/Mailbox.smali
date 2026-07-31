.class public final Lorg/apache/james/mime4j/dom/address/Mailbox;
.super Lorg/apache/james/mime4j/dom/address/Address;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;


# instance fields
.field public final domain:Ljava/lang/String;

.field public final localPart:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final route:Lorg/apache/james/mime4j/dom/address/DomainList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :cond_1
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->name:Ljava/lang/String;

    .line 15
    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    sget-object p2, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 19
    .line 20
    :cond_2
    iput-object p2, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 21
    .line 22
    iput-object p3, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_4

    .line 31
    .line 32
    :cond_3
    move-object p4, v0

    .line 33
    :cond_4
    iput-object p4, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    check-cast p1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    iget-object p1, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 26
    .line 27
    if-nez p0, :cond_3

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    move p0, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move p0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    :goto_0
    if-eqz p0, :cond_4

    .line 40
    .line 41
    :goto_1
    return v0

    .line 42
    :cond_4
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokhttp3/Handshake$Companion;->hashCode(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->hashCode(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 p0, 0x40

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
