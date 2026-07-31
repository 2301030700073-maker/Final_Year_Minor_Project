.class public final enum Lnet/thunderbird/feature/notification/api/NotificationSeverity;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/notification/api/NotificationSeverity;

.field public static final enum Fatal:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

.field public static final enum Warning:Lnet/thunderbird/feature/notification/api/NotificationSeverity;


# instance fields
.field public final dismissable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Fatal"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lnet/thunderbird/feature/notification/api/NotificationSeverity;-><init>(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->Fatal:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 10
    .line 11
    new-instance v2, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "Critical"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Lnet/thunderbird/feature/notification/api/NotificationSeverity;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const-string v6, "Temporary"

    .line 23
    .line 24
    invoke-direct {v4, v5, v6, v3}, Lnet/thunderbird/feature/notification/api/NotificationSeverity;-><init>(ILjava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 28
    .line 29
    const/4 v7, 0x3

    .line 30
    const-string v8, "Warning"

    .line 31
    .line 32
    invoke-direct {v6, v7, v8, v3}, Lnet/thunderbird/feature/notification/api/NotificationSeverity;-><init>(ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    sput-object v6, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->Warning:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 36
    .line 37
    new-instance v8, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 38
    .line 39
    const/4 v9, 0x4

    .line 40
    const-string v10, "Information"

    .line 41
    .line 42
    invoke-direct {v8, v9, v10, v3}, Lnet/thunderbird/feature/notification/api/NotificationSeverity;-><init>(ILjava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const/4 v10, 0x5

    .line 46
    new-array v10, v10, [Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 47
    .line 48
    aput-object v0, v10, v1

    .line 49
    .line 50
    aput-object v2, v10, v3

    .line 51
    .line 52
    aput-object v4, v10, v5

    .line 53
    .line 54
    aput-object v6, v10, v7

    .line 55
    .line 56
    aput-object v8, v10, v9

    .line 57
    .line 58
    sput-object v10, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->$VALUES:[Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->dismissable:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/api/NotificationSeverity;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/notification/api/NotificationSeverity;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->$VALUES:[Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 8
    .line 9
    return-object v0
.end method
