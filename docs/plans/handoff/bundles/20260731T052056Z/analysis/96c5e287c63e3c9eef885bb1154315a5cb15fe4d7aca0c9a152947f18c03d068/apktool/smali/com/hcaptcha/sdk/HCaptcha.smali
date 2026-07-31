.class public final Lcom/hcaptcha/sdk/HCaptcha;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activity:Ljava/lang/Object;

.field public captchaVerifier:Ljava/lang/Object;

.field public hCaptchaException:Ljava/lang/Object;

.field public handler:Ljava/lang/Object;

.field public final internalConfig:Ljava/lang/Object;

.field public final onFailureListeners:Ljava/lang/Object;

.field public final onOpenListeners:Ljava/lang/Object;

.field public final onSuccessListeners:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Landroidx/collection/LongSparseArray;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/IconManager;Lokhttp3/MultipartBody$Builder;Lorg/maplibre/android/maps/MapView$2;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lorg/maplibre/android/maps/IconManager;

    invoke-direct {v0}, Lorg/maplibre/android/maps/IconManager;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 101
    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 102
    iput-object p5, p0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 103
    iput-object p6, p0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 112
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/databinding/ActivityGalleryBinding;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lcom/google/gson/GsonBuilder;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p6, p0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object p7, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 32
    .line 33
    move-object p1, p0

    .line 34
    new-instance p0, Lcom/google/gson/GsonBuilder;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p4, "Deserializer for \""

    .line 39
    .line 40
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 p3, 0x22

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    if-eqz p7, :cond_0

    .line 60
    .line 61
    invoke-interface {p7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;->getPresentableString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :goto_0
    move-object p5, p2

    .line 66
    move-object p2, p8

    .line 67
    move-object p3, p9

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const-string p2, "[container not found]"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/google/gson/GsonBuilder;-><init>(Lcom/hcaptcha/sdk/HCaptcha;Lcom/google/gson/GsonBuilder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object p0, p1, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;-><init>(Lcom/hcaptcha/sdk/HCaptcha;)V

    .line 80
    .line 81
    .line 82
    iput-object p0, p1, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 83
    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 89
    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 90
    iput-object p5, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 91
    iput-object p6, p0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 92
    iput-object p7, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 93
    iput-object p8, p0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 94
    iput-object p9, p0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic childContext$default(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v4, v0

    .line 4
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v5, v0

    .line 9
    check-cast v5, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v0

    .line 19
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/hcaptcha/sdk/HCaptcha;->childContext(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;)Lcom/hcaptcha/sdk/HCaptcha;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method


# virtual methods
.method public childContext(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 10

    .line 1
    move-object/from16 v6, p6

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 20
    .line 21
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    iget v4, v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    if-ge v4, v5, :cond_1

    .line 30
    .line 31
    :cond_0
    if-le v2, v3, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    move-object v5, p5

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object p5, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object p5, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v7, p5

    .line 43
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v8, p0

    .line 48
    check-cast v8, Lcom/google/gson/GsonBuilder;

    .line 49
    .line 50
    move-object v3, p1

    .line 51
    move-object v9, p2

    .line 52
    move-object v2, p3

    .line 53
    move-object v4, p4

    .line 54
    invoke-direct/range {v0 .. v9}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Lorg/wikipedia/databinding/ActivityGalleryBinding;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lcom/google/gson/GsonBuilder;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public deselectMarkers()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/maplibre/android/annotations/Marker;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-boolean v1, v1, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    throw p0

    .line 37
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setup(Lcom/hcaptcha/sdk/HCaptchaConfig;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaInternalConfig;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/activity/BaseActivity;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;-><init>(Lcom/hcaptcha/sdk/HCaptcha;Lcom/hcaptcha/sdk/HCaptchaConfig;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->toBuilder()Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v3, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 38
    .line 39
    iput-object v3, p1, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->size$value:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    iput-boolean v3, p1, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->size$set:Z

    .line 43
    .line 44
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object v4, p1, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$value:Ljava/lang/Boolean;

    .line 47
    .line 48
    iput-boolean v3, p1, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$set:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->build()Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v3, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;

    .line 55
    .line 56
    invoke-direct {v3, v1, p1, v0, v2}, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;-><init>(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/HCaptcha$1;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-static {v1, p1, v0, v2}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->newInstance(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/HCaptcha$1;)Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p1, "Visual hCaptcha challenge verification requires FragmentActivity."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    new-instance p0, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 84
    .line 85
    sget-object p1, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p0}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public tryCb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/Symbol;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/hcaptcha/sdk/tasks/OnSuccessListener;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lkotlinx/coroutines/internal/Symbol;

    .line 32
    .line 33
    invoke-interface {v2, v3}, Lcom/hcaptcha/sdk/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move v2, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/hcaptcha/sdk/tasks/OnFailureListener;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 67
    .line 68
    invoke-interface {v2, v3}, Lcom/hcaptcha/sdk/tasks/OnFailureListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 69
    .line 70
    .line 71
    move v2, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 79
    .line 80
    :cond_2
    return-void
.end method
