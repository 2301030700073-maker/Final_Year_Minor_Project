.class public final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;
.super Lcoil3/util/UtilsKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field public final _type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcoil3/util/UtilsKt;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcoil3/util/UtilsKt;
    .locals 6

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method
