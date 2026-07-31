.class public final enum Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 2
    .line 3
    const-string v1, "showRecentChanges"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ShowRecentChanges"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 12
    .line 13
    const-string v3, "shouldShowSetupArchiveFolderDialog"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "ShouldShowSetupArchiveFolderDialog"

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v3}, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 29
    .line 30
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettingKey;

    .line 8
    .line 9
    return-object v0
.end method
