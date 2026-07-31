.class public final Lcom/eygraber/uri/parts/PathPart;
.super Lcom/eygraber/uri/parts/AbstractPart;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY:Lcom/eygraber/uri/parts/PathPart;

.field public static final NULL:Lcom/eygraber/uri/parts/PathPart;


# instance fields
.field public final pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/eygraber/uri/parts/PathPart;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/eygraber/uri/parts/PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/eygraber/uri/parts/PathPart;->NULL:Lcom/eygraber/uri/parts/PathPart;

    .line 8
    .line 9
    new-instance v0, Lcom/eygraber/uri/parts/PathPart;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-direct {v0, v1, v1}, Lcom/eygraber/uri/parts/PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/eygraber/uri/parts/PathPart;->EMPTY:Lcom/eygraber/uri/parts/PathPart;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/eygraber/uri/parts/AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, p1, v0}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/eygraber/uri/parts/PathPart;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const-string p0, "/"

    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/eygraber/uri/UriCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
