.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final avatarMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

.field public final notificationStream:Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 14
    .line 15
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 16
    .line 17
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->notificationStream:Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 18
    .line 19
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 20
    .line 21
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->avatarMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 22
    .line 23
    iput-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 24
    .line 25
    return-void
.end method
