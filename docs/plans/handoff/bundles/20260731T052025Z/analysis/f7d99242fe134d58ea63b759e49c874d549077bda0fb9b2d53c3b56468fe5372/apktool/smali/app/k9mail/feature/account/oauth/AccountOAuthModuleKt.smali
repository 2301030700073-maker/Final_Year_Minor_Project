.class public abstract Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final featureAccountOAuthModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/koin/core/module/Module;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/koin/core/module/Module;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sput-object v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;->featureAccountOAuthModule:Lorg/koin/core/module/Module;

    .line 16
    .line 17
    return-void
.end method
