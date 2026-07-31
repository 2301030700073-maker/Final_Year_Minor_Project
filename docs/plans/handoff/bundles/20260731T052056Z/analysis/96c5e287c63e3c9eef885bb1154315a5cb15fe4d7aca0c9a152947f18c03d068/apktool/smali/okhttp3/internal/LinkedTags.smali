.class public final Lokhttp3/internal/LinkedTags;
.super Lokio/Okio__OkioKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final key:Lkotlin/reflect/KClass;

.field public final next:Lokio/Okio__OkioKt;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokio/Okio__OkioKt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lokhttp3/internal/LinkedTags;->key:Lkotlin/reflect/KClass;

    .line 14
    .line 15
    iput-object p2, p0, Lokhttp3/internal/LinkedTags;->value:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p3, p0, Lokhttp3/internal/LinkedTags;->next:Lokio/Okio__OkioKt;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final get(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/LinkedTags;->key:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Lokhttp3/internal/LinkedTags;->value:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/LinkedTags;->next:Lokio/Okio__OkioKt;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lokio/Okio__OkioKt;->get(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/LinkedTags;->key:Lkotlin/reflect/KClass;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lokhttp3/internal/LinkedTags;->next:Lokio/Okio__OkioKt;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v2, p1, v1}, Lokio/Okio__OkioKt;->plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v2, Lokhttp3/internal/LinkedTags;

    .line 24
    .line 25
    iget-object p0, p0, Lokhttp3/internal/LinkedTags;->value:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v2, v0, p0, v1}, Lokhttp3/internal/LinkedTags;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokio/Okio__OkioKt;)V

    .line 28
    .line 29
    .line 30
    move-object p0, v2

    .line 31
    :goto_0
    move-object v2, p0

    .line 32
    :goto_1
    if-eqz p2, :cond_2

    .line 33
    .line 34
    new-instance p0, Lokhttp3/internal/LinkedTags;

    .line 35
    .line 36
    invoke-direct {p0, p1, p2, v2}, Lokhttp3/internal/LinkedTags;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokio/Okio__OkioKt;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v4, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/4 p0, 0x6

    .line 22
    invoke-direct {v4, p0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/16 v5, 0x19

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const-string/jumbo v2, "{"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v3, "}"

    .line 32
    .line 33
    .line 34
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
