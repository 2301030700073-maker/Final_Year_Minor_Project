.class public final Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 9
    .line 10
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 11
    .line 12
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 16
    .line 17
    .line 18
    const-string v4, "10"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 24
    .line 25
    new-instance v4, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-direct {v4, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 29
    .line 30
    .line 31
    const-string v6, "25"

    .line 32
    .line 33
    invoke-direct {v2, v6, v4}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 37
    .line 38
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    invoke-direct {v6, v0, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 42
    .line 43
    .line 44
    const-string v8, "50"

    .line 45
    .line 46
    invoke-direct {v4, v8, v6}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 50
    .line 51
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v9, 0x4

    .line 54
    invoke-direct {v8, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 55
    .line 56
    .line 57
    const-string v10, "100"

    .line 58
    .line 59
    invoke-direct {v6, v10, v8}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 60
    .line 61
    .line 62
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 63
    .line 64
    new-instance v10, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v11, 0x5

    .line 67
    invoke-direct {v10, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 68
    .line 69
    .line 70
    const-string v12, "250"

    .line 71
    .line 72
    invoke-direct {v8, v12, v10}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 76
    .line 77
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v13, 0x6

    .line 80
    invoke-direct {v12, v0, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 81
    .line 82
    .line 83
    const-string v14, "500"

    .line 84
    .line 85
    invoke-direct {v10, v14, v12}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 89
    .line 90
    new-instance v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v15, 0x7

    .line 93
    invoke-direct {v14, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 94
    .line 95
    .line 96
    move/from16 p1, v3

    .line 97
    .line 98
    const-string v3, "1000"

    .line 99
    .line 100
    invoke-direct {v12, v3, v14}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 104
    .line 105
    new-instance v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    move/from16 v16, v5

    .line 108
    .line 109
    const/16 v5, 0x8

    .line 110
    .line 111
    invoke-direct {v14, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 112
    .line 113
    .line 114
    move/from16 v17, v7

    .line 115
    .line 116
    const-string v7, "0"

    .line 117
    .line 118
    invoke-direct {v3, v7, v14}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    new-array v5, v5, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    aput-object v1, v5, v7

    .line 125
    .line 126
    aput-object v2, v5, p1

    .line 127
    .line 128
    aput-object v4, v5, v16

    .line 129
    .line 130
    aput-object v6, v5, v17

    .line 131
    .line 132
    aput-object v8, v5, v9

    .line 133
    .line 134
    aput-object v10, v5, v11

    .line 135
    .line 136
    aput-object v12, v5, v13

    .line 137
    .line 138
    aput-object v3, v5, v15

    .line 139
    .line 140
    invoke-static {v5}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;->selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 145
    .line 146
    return-void
.end method
