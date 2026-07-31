.class public final Lretrofit2/converter/kotlinx/serialization/Factory;
.super Lretrofit2/Converter$Factory;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final contentType:Lokhttp3/MediaType;

.field public final serializer:Lretrofit2/OptionalConverterFactory$OptionalConverter;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lretrofit2/OptionalConverterFactory$OptionalConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/converter/kotlinx/serialization/Factory;->contentType:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/converter/kotlinx/serialization/Factory;->serializer:Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lretrofit2/converter/kotlinx/serialization/Factory;->serializer:Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 8
    .line 9
    iget-object p3, p2, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p3, Lkotlinx/serialization/json/Json;

    .line 12
    .line 13
    iget-object p3, p3, Lkotlinx/serialization/json/Json;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/ResultKt;->serializer(Lorg/wikipedia/login/LoginClient;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p3, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 20
    .line 21
    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    const/4 p4, 0x4

    .line 24
    iget-object p0, p0, Lretrofit2/converter/kotlinx/serialization/Factory;->contentType:Lokhttp3/MediaType;

    .line 25
    .line 26
    invoke-direct {p3, p0, p1, p2, p4}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    return-object p3
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lretrofit2/converter/kotlinx/serialization/Factory;->serializer:Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 5
    .line 6
    iget-object p2, p0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lkotlinx/serialization/json/Json;

    .line 9
    .line 10
    iget-object p2, p2, Lkotlinx/serialization/json/Json;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lkotlin/ResultKt;->serializer(Lorg/wikipedia/login/LoginClient;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 17
    .line 18
    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    const/16 p3, 0x1c

    .line 21
    .line 22
    invoke-direct {p2, p3, p1, p0}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method
