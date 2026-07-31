.class public final Lcom/skydoves/landscapist/coil3/LocalCoilProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/skydoves/landscapist/coil3/LocalCoilProvider;


# direct methods
.method public static synthetic $r8$lambda$bJoIHGnHgQMz1hNfnqvOBgli_sY(Lcoil3/ImageLoader;Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/LocalCoilProvider;->getCoilImageLoader$lambda$0$1$0(Lcoil3/ImageLoader;Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/coil3/LocalCoilProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/skydoves/landscapist/coil3/LocalCoilProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/skydoves/landscapist/coil3/LocalCoilProvider;->INSTANCE:Lcom/skydoves/landscapist/coil3/LocalCoilProvider;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getCoilImageLoader$lambda$0$1$0(Lcoil3/ImageLoader;Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method


# virtual methods
.method public final getCoilImageLoader(Landroidx/compose/runtime/Composer;I)Lcoil3/ImageLoader;
    .locals 3

    .line 1
    invoke-static {}, Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;->getLocalCoilImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcoil3/ImageLoader;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-nez p0, :cond_3

    .line 15
    .line 16
    const p0, -0x278d4aec

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/skydoves/landscapist/coil3/PlatformsKt;->getPlatform()Lcom/skydoves/landscapist/coil3/Platform;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lcom/skydoves/landscapist/coil3/Platform;->NonAndroid:Lcom/skydoves/landscapist/coil3/Platform;

    .line 27
    .line 28
    if-ne p0, v0, :cond_2

    .line 29
    .line 30
    const p0, -0x3c98b350

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcoil3/ImageLoader$Builder;

    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/skydoves/landscapist/coil3/PlatformsKt;->getPlatformContext(Landroidx/compose/runtime/Composer;I)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 46
    .line 47
    invoke-direct {v0}, Lcoil3/ComponentRegistry$Builder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/skydoves/landscapist/coil3/PlatformsKt;->getNetworkFetcherFactory()Lcoil3/network/NetworkFetcher$Factory;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-class v2, Lcoil3/Uri;

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcoil3/ComponentRegistry$Builder;->build()Lcoil3/ComponentRegistry;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcoil3/ImageLoader$Builder;->components(Lcoil3/ComponentRegistry;)Lcoil3/ImageLoader$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->build()Lcoil3/ImageLoader;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 86
    .line 87
    if-ne v1, v0, :cond_1

    .line 88
    .line 89
    :cond_0
    new-instance v1, Lcom/skydoves/landscapist/coil3/LocalCoilProvider$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/skydoves/landscapist/coil3/LocalCoilProvider$$ExternalSyntheticLambda0;-><init>(Lcoil3/ImageLoader;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    check-cast v1, Lcoil3/SingletonImageLoader$Factory;

    .line 98
    .line 99
    invoke-static {v1}, Lcoil3/SingletonImageLoader;->setSafe(Lcoil3/SingletonImageLoader$Factory;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const p0, -0x3c9548a7

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-static {p1, p2}, Lcom/skydoves/landscapist/coil3/PlatformsKt;->getPlatformImageLoader(Landroidx/compose/runtime/Composer;I)Lcoil3/ImageLoader;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_3
    const v0, -0x146a332

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 130
    .line 131
    .line 132
    return-object p0
.end method
