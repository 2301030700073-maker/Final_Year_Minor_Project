.class public final enum Lnet/thunderbird/core/preference/NotificationQuickDelete;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/NotificationQuickDelete;

.field public static final enum ALWAYS:Lnet/thunderbird/core/preference/NotificationQuickDelete;

.field public static final enum NEVER:Lnet/thunderbird/core/preference/NotificationQuickDelete;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 2
    .line 3
    const-string v1, "ALWAYS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/preference/NotificationQuickDelete;->ALWAYS:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 12
    .line 13
    const-string v3, "FOR_SINGLE_MSG"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 20
    .line 21
    const-string v5, "NEVER"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lnet/thunderbird/core/preference/NotificationQuickDelete;->NEVER:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    new-array v5, v5, [Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 31
    .line 32
    aput-object v0, v5, v2

    .line 33
    .line 34
    aput-object v1, v5, v4

    .line 35
    .line 36
    aput-object v3, v5, v6

    .line 37
    .line 38
    sput-object v5, Lnet/thunderbird/core/preference/NotificationQuickDelete;->$VALUES:[Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 39
    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/NotificationQuickDelete;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/NotificationQuickDelete;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/NotificationQuickDelete;->$VALUES:[Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 8
    .line 9
    return-object v0
.end method
