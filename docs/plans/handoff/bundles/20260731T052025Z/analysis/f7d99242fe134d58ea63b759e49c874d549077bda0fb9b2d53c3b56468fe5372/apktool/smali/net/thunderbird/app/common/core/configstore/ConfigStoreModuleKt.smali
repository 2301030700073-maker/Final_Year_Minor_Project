.class public abstract Lnet/thunderbird/app/common/core/configstore/ConfigStoreModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final appCommonCoreConfigStoreModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/koin/core/module/Module;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/koin/core/module/Module;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/thunderbird/app/common/core/configstore/ConfigStoreModuleKt;->appCommonCoreConfigStoreModule:Lorg/koin/core/module/Module;

    .line 17
    .line 18
    return-void
.end method
