.class public abstract Lcoil3/SingletonImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic reference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/SingletonImageLoader;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 6

    .line 1
    sget-object v0, Lcoil3/SingletonImageLoader;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lcoil3/ImageLoader;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcoil3/ImageLoader;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v3

    .line 16
    :goto_0
    if-nez v1, :cond_9

    .line 17
    .line 18
    move-object v1, v3

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v4, v2, Lcoil3/ImageLoader;

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    check-cast v4, Lcoil3/ImageLoader;

    .line 29
    .line 30
    move-object v5, v1

    .line 31
    goto :goto_5

    .line 32
    :cond_1
    if-nez v1, :cond_6

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v4, v2, Lcoil3/SingletonImageLoader$Factory;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v4, v3

    .line 47
    :goto_2
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v4, v1}, Lcoil3/SingletonImageLoader$Factory;->newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    instance-of v4, v1, Lcoil3/SingletonImageLoader$Factory;

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    move-object v4, v1

    .line 59
    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move-object v4, v3

    .line 63
    :goto_3
    if-eqz v4, :cond_5

    .line 64
    .line 65
    invoke-interface {v4, v1}, Lcoil3/SingletonImageLoader$Factory;->newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    sget-object v4, Lcoil3/SingletonImageLoaderKt;->DefaultSingletonImageLoaderFactory:Lcoil3/SingletonImageLoaderKt$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Lcoil3/SingletonImageLoaderKt$$ExternalSyntheticLambda0;->newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_6
    :goto_4
    move-object v4, v1

    .line 77
    move-object v5, v4

    .line 78
    :cond_7
    :goto_5
    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    return-object v4

    .line 85
    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eq v1, v2, :cond_7

    .line 90
    .line 91
    move-object v1, v5

    .line 92
    goto :goto_1

    .line 93
    :cond_9
    return-object v1
.end method
