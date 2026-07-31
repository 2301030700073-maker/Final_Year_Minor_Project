.class public final Landroidx/compose/ui/autofill/ContentType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/autofill/ContentType$Companion;

.field public static final EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

.field public static final Password:Landroidx/compose/ui/autofill/AndroidContentType;

.field public static final PhoneNumber:Landroidx/compose/ui/autofill/AndroidContentType;

.field public static final Username:Landroidx/compose/ui/autofill/AndroidContentType;


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
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->Username:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 16
    .line 17
    const-string v0, "password"

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 24
    .line 25
    const-string v0, "emailAddress"

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 32
    .line 33
    const-string v0, "newUsername"

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 36
    .line 37
    .line 38
    const-string v0, "newPassword"

    .line 39
    .line 40
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 41
    .line 42
    .line 43
    const-string v0, "postalAddress"

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 46
    .line 47
    .line 48
    const-string v0, "postalCode"

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 51
    .line 52
    .line 53
    const-string v0, "creditCardNumber"

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 56
    .line 57
    .line 58
    const-string v0, "creditCardSecurityCode"

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 61
    .line 62
    .line 63
    const-string v0, "creditCardExpirationDate"

    .line 64
    .line 65
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 66
    .line 67
    .line 68
    const-string v0, "creditCardExpirationMonth"

    .line 69
    .line 70
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 71
    .line 72
    .line 73
    const-string v0, "creditCardExpirationYear"

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 76
    .line 77
    .line 78
    const-string v0, "creditCardExpirationDay"

    .line 79
    .line 80
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 81
    .line 82
    .line 83
    const-string v0, "addressCountry"

    .line 84
    .line 85
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 86
    .line 87
    .line 88
    const-string v0, "addressRegion"

    .line 89
    .line 90
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 91
    .line 92
    .line 93
    const-string v0, "addressLocality"

    .line 94
    .line 95
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 96
    .line 97
    .line 98
    const-string v0, "streetAddress"

    .line 99
    .line 100
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 101
    .line 102
    .line 103
    const-string v0, "extendedAddress"

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 106
    .line 107
    .line 108
    const-string v0, "extendedPostalCode"

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 111
    .line 112
    .line 113
    const-string v0, "personName"

    .line 114
    .line 115
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 116
    .line 117
    .line 118
    const-string v0, "personGivenName"

    .line 119
    .line 120
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 121
    .line 122
    .line 123
    const-string v0, "personFamilyName"

    .line 124
    .line 125
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 126
    .line 127
    .line 128
    const-string v0, "personMiddleName"

    .line 129
    .line 130
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 131
    .line 132
    .line 133
    const-string v0, "personMiddleInitial"

    .line 134
    .line 135
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 136
    .line 137
    .line 138
    const-string v0, "personNamePrefix"

    .line 139
    .line 140
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 141
    .line 142
    .line 143
    const-string v0, "personNameSuffix"

    .line 144
    .line 145
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 146
    .line 147
    .line 148
    const-string v0, "phoneNumber"

    .line 149
    .line 150
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->PhoneNumber:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 155
    .line 156
    const-string v0, "phoneNumberDevice"

    .line 157
    .line 158
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 159
    .line 160
    .line 161
    const-string v0, "phoneCountryCode"

    .line 162
    .line 163
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 164
    .line 165
    .line 166
    const-string v0, "phoneNational"

    .line 167
    .line 168
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 169
    .line 170
    .line 171
    const-string v0, "gender"

    .line 172
    .line 173
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 174
    .line 175
    .line 176
    const-string v0, "birthDateFull"

    .line 177
    .line 178
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 179
    .line 180
    .line 181
    const-string v0, "birthDateDay"

    .line 182
    .line 183
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 184
    .line 185
    .line 186
    const-string v0, "birthDateMonth"

    .line 187
    .line 188
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 189
    .line 190
    .line 191
    const-string v0, "birthDateYear"

    .line 192
    .line 193
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 194
    .line 195
    .line 196
    const-string v0, "smsOTPCode"

    .line 197
    .line 198
    invoke-static {v0}, Landroidx/work/Operation$State;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 199
    .line 200
    .line 201
    return-void
.end method
