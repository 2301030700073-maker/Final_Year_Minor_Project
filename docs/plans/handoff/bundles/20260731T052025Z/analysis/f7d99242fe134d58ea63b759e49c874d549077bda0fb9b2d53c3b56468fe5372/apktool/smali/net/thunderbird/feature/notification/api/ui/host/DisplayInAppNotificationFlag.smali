.class public final enum Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

.field public static final AllNotifications:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

.field public static final enum BannerGlobalNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

.field public static final enum BannerInlineNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

.field public static final Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

.field public static final enum SnackbarNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 2
    .line 3
    const-string v1, "BannerGlobalNotifications"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerGlobalNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 12
    .line 13
    const-string v3, "BannerInlineNotifications"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerInlineNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 22
    .line 23
    const-string v5, "SnackbarNotifications"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->SnackbarNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->$VALUES:[Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 41
    .line 42
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 43
    .line 44
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 53
    .line 54
    invoke-static {v0}, Lokio/Okio;->toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->AllNotifications:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 59
    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->$VALUES:[Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 8
    .line 9
    return-object v0
.end method
