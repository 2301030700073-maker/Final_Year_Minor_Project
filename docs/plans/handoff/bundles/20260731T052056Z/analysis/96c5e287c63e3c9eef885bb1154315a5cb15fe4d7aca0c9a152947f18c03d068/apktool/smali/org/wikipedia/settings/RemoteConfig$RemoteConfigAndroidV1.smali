.class public final Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1$Companion;


# instance fields
.field public final disableReadingListSync:Z

.field public final hCaptcha:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;

.field public final hybridSearchEnabled:Ljava/lang/Boolean;

.field public final hybridSearchLanguages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    sput-object v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->$childSerializers:[Lkotlin/Lazy;

    .line 38
    .line 39
    return-void
.end method

.method public synthetic constructor <init>(IZLorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :cond_0
    iput-boolean p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->disableReadingListSync:Z

    .line 10
    .line 11
    and-int/lit8 p2, p1, 0x2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hCaptcha:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hCaptcha:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchEnabled:Ljava/lang/Boolean;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchEnabled:Ljava/lang/Boolean;

    .line 29
    .line 30
    :goto_1
    and-int/lit8 p1, p1, 0x8

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchLanguages:Ljava/util/List;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchLanguages:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method
