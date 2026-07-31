.class public abstract Lorg/acra/ACRAConstants;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DEFAULT_REPORT_FIELDS:Ljava/util/List;

.field public static final SILENT_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "-"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v1, 0x1d

    .line 20
    .line 21
    new-array v1, v1, [Lorg/acra/ReportField;

    .line 22
    .line 23
    sget-object v2, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    aput-object v2, v1, v3

    .line 37
    .line 38
    sget-object v2, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    sget-object v2, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    .line 49
    .line 50
    const/4 v3, 0x5

    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    .line 59
    .line 60
    const/4 v3, 0x7

    .line 61
    aput-object v2, v1, v3

    .line 62
    .line 63
    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    .line 64
    .line 65
    const/16 v3, 0x8

    .line 66
    .line 67
    aput-object v2, v1, v3

    .line 68
    .line 69
    sget-object v2, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    .line 70
    .line 71
    const/16 v3, 0x9

    .line 72
    .line 73
    aput-object v2, v1, v3

    .line 74
    .line 75
    sget-object v2, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    .line 76
    .line 77
    const/16 v3, 0xa

    .line 78
    .line 79
    aput-object v2, v1, v3

    .line 80
    .line 81
    sget-object v2, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    .line 82
    .line 83
    const/16 v3, 0xb

    .line 84
    .line 85
    aput-object v2, v1, v3

    .line 86
    .line 87
    sget-object v2, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    .line 88
    .line 89
    const/16 v3, 0xc

    .line 90
    .line 91
    aput-object v2, v1, v3

    .line 92
    .line 93
    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    .line 94
    .line 95
    const/16 v3, 0xd

    .line 96
    .line 97
    aput-object v2, v1, v3

    .line 98
    .line 99
    const/16 v2, 0xe

    .line 100
    .line 101
    aput-object v0, v1, v2

    .line 102
    .line 103
    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    .line 104
    .line 105
    const/16 v2, 0xf

    .line 106
    .line 107
    aput-object v0, v1, v2

    .line 108
    .line 109
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    .line 110
    .line 111
    const/16 v2, 0x10

    .line 112
    .line 113
    aput-object v0, v1, v2

    .line 114
    .line 115
    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    .line 116
    .line 117
    const/16 v2, 0x11

    .line 118
    .line 119
    aput-object v0, v1, v2

    .line 120
    .line 121
    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    .line 122
    .line 123
    const/16 v2, 0x12

    .line 124
    .line 125
    aput-object v0, v1, v2

    .line 126
    .line 127
    sget-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    .line 128
    .line 129
    const/16 v2, 0x13

    .line 130
    .line 131
    aput-object v0, v1, v2

    .line 132
    .line 133
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    .line 134
    .line 135
    const/16 v2, 0x14

    .line 136
    .line 137
    aput-object v0, v1, v2

    .line 138
    .line 139
    sget-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    .line 140
    .line 141
    const/16 v2, 0x15

    .line 142
    .line 143
    aput-object v0, v1, v2

    .line 144
    .line 145
    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    .line 146
    .line 147
    const/16 v2, 0x16

    .line 148
    .line 149
    aput-object v0, v1, v2

    .line 150
    .line 151
    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    .line 152
    .line 153
    const/16 v2, 0x17

    .line 154
    .line 155
    aput-object v0, v1, v2

    .line 156
    .line 157
    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    .line 158
    .line 159
    const/16 v2, 0x18

    .line 160
    .line 161
    aput-object v0, v1, v2

    .line 162
    .line 163
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    .line 164
    .line 165
    const/16 v2, 0x19

    .line 166
    .line 167
    aput-object v0, v1, v2

    .line 168
    .line 169
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    .line 170
    .line 171
    const/16 v2, 0x1a

    .line 172
    .line 173
    aput-object v0, v1, v2

    .line 174
    .line 175
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    .line 176
    .line 177
    const/16 v2, 0x1b

    .line 178
    .line 179
    aput-object v0, v1, v2

    .line 180
    .line 181
    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    .line 182
    .line 183
    const/16 v2, 0x1c

    .line 184
    .line 185
    aput-object v0, v1, v2

    .line 186
    .line 187
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:Ljava/util/List;

    .line 192
    .line 193
    return-void
.end method
