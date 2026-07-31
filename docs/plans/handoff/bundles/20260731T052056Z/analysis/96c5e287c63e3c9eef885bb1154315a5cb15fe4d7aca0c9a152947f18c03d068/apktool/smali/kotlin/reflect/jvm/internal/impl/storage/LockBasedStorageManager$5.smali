.class public final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;


# instance fields
.field public final synthetic val$postCompute:Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

.field public volatile valuePostCompute:Lokhttp3/FormBody$Builder;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "@NotNull method %s.%s must not return null"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 8
    .line 9
    :goto_0
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    move v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const/4 v2, 0x3

    .line 14
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    const-string/jumbo v5, "value"

    .line 25
    .line 26
    .line 27
    aput-object v5, v2, v4

    .line 28
    .line 29
    :goto_2
    const/4 v4, 0x1

    .line 30
    if-eq p0, v0, :cond_3

    .line 31
    .line 32
    const-string v3, "recursionDetected"

    .line 33
    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    aput-object v3, v2, v4

    .line 38
    .line 39
    :goto_3
    if-eq p0, v0, :cond_4

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    const-string v3, "doPostCompute"

    .line 43
    .line 44
    aput-object v3, v2, v0

    .line 45
    .line 46
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eq p0, v0, :cond_5

    .line 51
    .line 52
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_5
    throw p0
.end method

.method public static synthetic $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    .line 8
    .line 9
    :goto_0
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v2, v0

    .line 14
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq p0, v5, :cond_3

    .line 21
    .line 22
    if-eq p0, v0, :cond_2

    .line 23
    .line 24
    const-string v6, "storageManager"

    .line 25
    .line 26
    aput-object v6, v2, v4

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    aput-object v3, v2, v4

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    const-string v6, "computable"

    .line 33
    .line 34
    aput-object v6, v2, v4

    .line 35
    .line 36
    :goto_2
    if-eq p0, v0, :cond_4

    .line 37
    .line 38
    aput-object v3, v2, v5

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_4
    const-string v3, "invoke"

    .line 42
    .line 43
    aput-object v3, v2, v5

    .line 44
    .line 45
    :goto_3
    if-eq p0, v0, :cond_5

    .line 46
    .line 47
    const-string v3, "<init>"

    .line 48
    .line 49
    aput-object v3, v2, v0

    .line 50
    .line 51
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eq p0, v0, :cond_6

    .line 56
    .line 57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_4
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$postCompute:Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->valuePostCompute:Lokhttp3/FormBody$Builder;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V

    .line 14
    .line 15
    .line 16
    throw p3
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->valuePostCompute:Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    iget-object p0, v0, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/lang/Thread;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-ne p0, v2, :cond_0

    .line 25
    .line 26
    iget-object p0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "No value in this thread (hasValue should be checked before)"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    const/4 p0, 0x2

    .line 44
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public final postCompute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->valuePostCompute:Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$postCompute:Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->valuePostCompute:Lokhttp3/FormBody$Builder;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x2

    .line 22
    :try_start_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0(I)V

    .line 23
    .line 24
    .line 25
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->valuePostCompute:Lokhttp3/FormBody$Builder;

    .line 27
    .line 28
    throw p1
.end method

.method public final recursionDetected(Z)Lkotlinx/serialization/json/internal/Composer;
    .locals 2

    .line 1
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    .line 2
    .line 3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->errorTypeForLoopInSupertypes:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lkotlinx/serialization/json/internal/Composer;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-direct {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Ljava/lang/Object;ZI)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method
