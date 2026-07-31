.class public final Lkotlinx/serialization/modules/ContextualProvider$Argless;
.super Lkotlinx/serialization/modules/ContextualProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    sget-object p0, Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;

    .line 5
    .line 6
    return-object p0
.end method
