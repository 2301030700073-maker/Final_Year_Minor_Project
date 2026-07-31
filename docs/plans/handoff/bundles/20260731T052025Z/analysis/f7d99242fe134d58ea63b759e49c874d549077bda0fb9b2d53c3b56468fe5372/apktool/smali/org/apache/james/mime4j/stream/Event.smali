.class public final Lorg/apache/james/mime4j/stream/Event;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

.field public static final INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

.field public static final MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

.field public static final OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;


# instance fields
.field public final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    .line 2
    .line 3
    const-string v1, "Body part ended prematurely. Boundary detected in header or EOF reached."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    .line 11
    .line 12
    const-string v1, "Unexpected end of headers detected. Higher level boundary detected or EOF reached."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 18
    .line 19
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    .line 20
    .line 21
    const-string v1, "Invalid header encountered"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

    .line 27
    .line 28
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    .line 29
    .line 30
    const-string v1, "Obsolete header encountered"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-ne p0, p1, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/stream/Event;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Lorg/apache/james/mime4j/stream/Event;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
