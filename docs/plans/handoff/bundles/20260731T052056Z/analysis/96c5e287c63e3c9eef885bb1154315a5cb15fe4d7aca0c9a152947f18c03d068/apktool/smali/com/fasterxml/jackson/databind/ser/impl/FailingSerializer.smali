.class public final Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p3, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 5
    .line 6
    iget-object p0, p3, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 7
    .line 8
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const-string p3, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    .line 12
    .line 13
    invoke-direct {p1, p0, p3, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
