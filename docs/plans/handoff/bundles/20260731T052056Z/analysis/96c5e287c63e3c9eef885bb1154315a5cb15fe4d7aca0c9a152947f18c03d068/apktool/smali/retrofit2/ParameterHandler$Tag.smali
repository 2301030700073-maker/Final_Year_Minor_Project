.class public final Lretrofit2/ParameterHandler$Tag;
.super Lretrofit2/Utils;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object v0, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lokio/Okio__OkioKt;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lokio/Okio__OkioKt;->plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p0, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method
