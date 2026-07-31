.class public final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final recursionDetected(Z)Lkotlinx/serialization/json/internal/Composer;
    .locals 2

    .line 1
    new-instance p0, Lkotlinx/serialization/json/internal/Composer;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x6

    .line 5
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 6
    .line 7
    invoke-direct {p0, v1, p1, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(Ljava/lang/Object;ZI)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
