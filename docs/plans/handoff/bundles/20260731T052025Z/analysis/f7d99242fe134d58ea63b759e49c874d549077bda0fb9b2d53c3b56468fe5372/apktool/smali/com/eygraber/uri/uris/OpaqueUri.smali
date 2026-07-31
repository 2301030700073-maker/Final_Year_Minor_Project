.class public final Lcom/eygraber/uri/uris/OpaqueUri;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/eygraber/uri/Uri;


# instance fields
.field public final cachedString$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final encodedSchemeSpecificPart$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final fragmentPart:Lcom/eygraber/uri/parts/Part;

.field public final scheme:Ljava/lang/String;

.field public final ssp:Lcom/eygraber/uri/parts/Part;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/Part;)V
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
    iput-object p1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->scheme:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/eygraber/uri/uris/OpaqueUri;->ssp:Lcom/eygraber/uri/parts/Part;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    sget-object p3, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 14
    .line 15
    :cond_0
    iput-object p3, p0, Lcom/eygraber/uri/uris/OpaqueUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 16
    .line 17
    new-instance p1, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/eygraber/uri/uris/OpaqueUri;->encodedSchemeSpecificPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    new-instance p1, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 p2, 0x2

    .line 44
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/eygraber/uri/uris/OpaqueUri;->encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 64
    .line 65
    new-instance p1, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 p2, 0x4

    .line 68
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/OpaqueUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/OpaqueUri;I)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/eygraber/uri/uris/OpaqueUri;->cachedString$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final buildUpon()Lcom/eygraber/uri/Uri$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/eygraber/uri/Uri$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/eygraber/uri/Uri$Builder;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->scheme:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/eygraber/uri/uris/OpaqueUri;->ssp:Lcom/eygraber/uri/parts/Part;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 17
    .line 18
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/eygraber/uri/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/OpaqueUri;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/eygraber/uri/Uri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/OpaqueUri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/OpaqueUri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/OpaqueUri;->cachedString$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
