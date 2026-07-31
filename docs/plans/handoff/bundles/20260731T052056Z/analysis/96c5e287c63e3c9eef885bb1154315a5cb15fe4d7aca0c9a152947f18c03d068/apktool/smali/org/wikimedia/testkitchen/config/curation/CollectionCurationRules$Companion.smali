.class public final Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer;",
            ")",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules$$serializer;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
