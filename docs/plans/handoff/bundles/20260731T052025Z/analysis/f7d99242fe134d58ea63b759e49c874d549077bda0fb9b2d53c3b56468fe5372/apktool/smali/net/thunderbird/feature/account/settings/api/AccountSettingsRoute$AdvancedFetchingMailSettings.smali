.class public final Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$Companion;


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final basePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->Companion:Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "app://account/settings/fetching_mail/advanced"

    .line 16
    .line 17
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->basePath:Ljava/lang/String;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p3, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->basePath:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$$serializer;->INSTANCE:Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$$serializer;

    .line 24
    .line 25
    invoke-virtual {p0}, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "AdvancedFetchingMailSettings(accountId="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
