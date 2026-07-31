.class public abstract Lapp/k9mail/core/android/common/CoreCommonAndroidModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final coreCommonAndroidModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 8
    .line 9
    sget-object v3, Lnet/thunderbird/core/android/common/resources/ResourcesAndroidModuleKt;->resourcesAndroidModule:Lorg/koin/core/module/Module;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v3, v2, v4

    .line 13
    .line 14
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 20
    .line 21
    sget-object v5, Lnet/thunderbird/core/common/CoreCommonModuleKt;->coreCommonModule:Lorg/koin/core/module/Module;

    .line 22
    .line 23
    aput-object v5, v2, v4

    .line 24
    .line 25
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 29
    .line 30
    sget-object v5, Lapp/k9mail/core/android/common/contact/ContactKoinModuleKt;->contactModule:Lorg/koin/core/module/Module;

    .line 31
    .line 32
    aput-object v5, v2, v4

    .line 33
    .line 34
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 38
    .line 39
    sget-object v2, Lapp/k9mail/core/android/common/camera/CameraKoinModuleKt;->cameraModule:Lorg/koin/core/module/Module;

    .line 40
    .line 41
    aput-object v2, v1, v4

    .line 42
    .line 43
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lapp/k9mail/core/android/common/CoreCommonAndroidModuleKt;->coreCommonAndroidModule:Lorg/koin/core/module/Module;

    .line 47
    .line 48
    return-void
.end method
