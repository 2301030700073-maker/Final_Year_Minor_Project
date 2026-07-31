.class public abstract Lcom/eygraber/uri/uris/AbstractHierarchicalUri;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/eygraber/uri/Uri;


# instance fields
.field public final _userInfo$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;->_userInfo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 27
    .line 28
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    invoke-direct {v0, p0, v1}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static findPortSeparator(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x3a

    .line 15
    .line 16
    if-ne v3, v2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/16 v3, 0x30

    .line 20
    .line 21
    if-lt v2, v3, :cond_2

    .line 22
    .line 23
    const/16 v3, 0x39

    .line 24
    .line 25
    if-le v2, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
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
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
