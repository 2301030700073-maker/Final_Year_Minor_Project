.class public final Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountCreator:Lnet/thunderbird/app/common/account/AccountCreator;

.field public final uuidGenerator:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/AccountCreator;)V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;->accountCreator:Lnet/thunderbird/app/common/account/AccountCreator;

    .line 12
    .line 13
    iput-object v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;->uuidGenerator:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    return-void
.end method
