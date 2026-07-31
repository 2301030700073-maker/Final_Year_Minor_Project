.class public final Landroidx/compose/ui/autofill/ContentType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/autofill/ContentType$Companion;

.field public static final Password:Landroidx/compose/ui/autofill/AndroidContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->$$INSTANCE:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 7
    .line 8
    const-string/jumbo v0, "username"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 12
    .line 13
    .line 14
    const-string v0, "password"

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 21
    .line 22
    const-string v0, "emailAddress"

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 25
    .line 26
    .line 27
    const-string v0, "newUsername"

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 30
    .line 31
    .line 32
    const-string v0, "newPassword"

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 35
    .line 36
    .line 37
    const-string v0, "postalAddress"

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 40
    .line 41
    .line 42
    const-string v0, "postalCode"

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 45
    .line 46
    .line 47
    const-string v0, "creditCardNumber"

    .line 48
    .line 49
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 50
    .line 51
    .line 52
    const-string v0, "creditCardSecurityCode"

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 55
    .line 56
    .line 57
    const-string v0, "creditCardExpirationDate"

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 60
    .line 61
    .line 62
    const-string v0, "creditCardExpirationMonth"

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 65
    .line 66
    .line 67
    const-string v0, "creditCardExpirationYear"

    .line 68
    .line 69
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 70
    .line 71
    .line 72
    const-string v0, "creditCardExpirationDay"

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 75
    .line 76
    .line 77
    const-string v0, "addressCountry"

    .line 78
    .line 79
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 80
    .line 81
    .line 82
    const-string v0, "addressRegion"

    .line 83
    .line 84
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 85
    .line 86
    .line 87
    const-string v0, "addressLocality"

    .line 88
    .line 89
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "streetAddress"

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 96
    .line 97
    .line 98
    const-string v0, "extendedAddress"

    .line 99
    .line 100
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 101
    .line 102
    .line 103
    const-string v0, "extendedPostalCode"

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 106
    .line 107
    .line 108
    const-string v0, "personName"

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 111
    .line 112
    .line 113
    const-string v0, "personGivenName"

    .line 114
    .line 115
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 116
    .line 117
    .line 118
    const-string v0, "personFamilyName"

    .line 119
    .line 120
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 121
    .line 122
    .line 123
    const-string v0, "personMiddleName"

    .line 124
    .line 125
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 126
    .line 127
    .line 128
    const-string v0, "personMiddleInitial"

    .line 129
    .line 130
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 131
    .line 132
    .line 133
    const-string v0, "personNamePrefix"

    .line 134
    .line 135
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 136
    .line 137
    .line 138
    const-string v0, "personNameSuffix"

    .line 139
    .line 140
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 141
    .line 142
    .line 143
    const-string v0, "phoneNumber"

    .line 144
    .line 145
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 146
    .line 147
    .line 148
    const-string v0, "phoneNumberDevice"

    .line 149
    .line 150
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 151
    .line 152
    .line 153
    const-string v0, "phoneCountryCode"

    .line 154
    .line 155
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 156
    .line 157
    .line 158
    const-string v0, "phoneNational"

    .line 159
    .line 160
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 161
    .line 162
    .line 163
    const-string v0, "gender"

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 166
    .line 167
    .line 168
    const-string v0, "birthDateFull"

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 171
    .line 172
    .line 173
    const-string v0, "birthDateDay"

    .line 174
    .line 175
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 176
    .line 177
    .line 178
    const-string v0, "birthDateMonth"

    .line 179
    .line 180
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 181
    .line 182
    .line 183
    const-string v0, "birthDateYear"

    .line 184
    .line 185
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 186
    .line 187
    .line 188
    const-string/jumbo v0, "smsOTPCode"

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Landroidx/sqlite/SQLite;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 192
    .line 193
    .line 194
    return-void
.end method
