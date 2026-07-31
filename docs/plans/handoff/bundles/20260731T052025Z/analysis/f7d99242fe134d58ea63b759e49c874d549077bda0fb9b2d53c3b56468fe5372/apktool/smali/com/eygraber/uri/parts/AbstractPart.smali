.class public abstract Lcom/eygraber/uri/parts/AbstractPart;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final internalDecoded$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final internalEncoded$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final wasDecodedCached:Z

.field public final wasEncodedCached:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/eygraber/uri/parts/AbstractPart;->wasEncodedCached:Z

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    xor-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/eygraber/uri/parts/AbstractPart;->wasDecodedCached:Z

    .line 21
    .line 22
    new-instance v1, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2, p1}, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/parts/AbstractPart;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lkotlin/SynchronizedLazyImpl;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/eygraber/uri/parts/AbstractPart;->internalDecoded$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    new-instance v1, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, p1, p0, p2}, Lcom/eygraber/uri/parts/AbstractPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/eygraber/uri/parts/AbstractPart;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lkotlin/SynchronizedLazyImpl;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/eygraber/uri/parts/AbstractPart;->internalEncoded$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string p0, "Neither encoded nor decoded"

    .line 60
    .line 61
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getDecoded()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/parts/AbstractPart;->internalDecoded$delegate:Lkotlin/SynchronizedLazyImpl;

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

.method public final getEncoded()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/parts/AbstractPart;->internalEncoded$delegate:Lkotlin/SynchronizedLazyImpl;

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
