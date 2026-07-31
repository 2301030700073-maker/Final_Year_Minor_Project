.class public final enum Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

.field public static final enum Default:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2
    .line 3
    const-string v1, "Compact"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 10
    .line 11
    const-string v3, "Default"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->Default:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 18
    .line 19
    new-instance v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 20
    .line 21
    const-string v5, "Relaxed"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    new-array v5, v5, [Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 29
    .line 30
    aput-object v0, v5, v2

    .line 31
    .line 32
    aput-object v1, v5, v4

    .line 33
    .line 34
    aput-object v3, v5, v6

    .line 35
    .line 36
    sput-object v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->$VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 37
    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->$VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 8
    .line 9
    return-object v0
.end method
