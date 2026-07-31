.class public final Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final update(Lnet/thunderbird/core/android/account/LegacyAccount;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDto(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
