.class public final enum Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 2
    .line 3
    const-string v1, "messageListSenderAboveSubject"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "MessageListSenderAboveSubject"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 12
    .line 13
    const-string v3, "showComposeButtonOnMessageList"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "ShowComposeButtonOnMessageList"

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v3}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 22
    .line 23
    const-string v5, "messageListStars"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const-string v7, "ShowMessageListStars"

    .line 27
    .line 28
    invoke-direct {v3, v6, v7, v5}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 32
    .line 33
    const-string v7, "showStarredCount"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const-string v9, "ShowStarCount"

    .line 37
    .line 38
    invoke-direct {v5, v8, v9, v7}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 42
    .line 43
    const-string v9, "showUnifiedInbox"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const-string v11, "ShowUnifiedInbox"

    .line 47
    .line 48
    invoke-direct {v7, v10, v11, v9}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 52
    .line 53
    const-string v11, "isThreadedViewEnabled"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    const-string v13, "ThreadViewEnabled"

    .line 57
    .line 58
    invoke-direct {v9, v12, v13, v11}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 77
    .line 78
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 79
    .line 80
    invoke-direct {v0, v11}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettingKey;

    .line 8
    .line 9
    return-object v0
.end method
