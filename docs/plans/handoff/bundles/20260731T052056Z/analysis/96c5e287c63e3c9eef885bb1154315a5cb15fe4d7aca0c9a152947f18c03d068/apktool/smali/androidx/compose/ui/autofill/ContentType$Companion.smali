.class public final Landroidx/compose/ui/autofill/ContentType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/autofill/ContentType$Companion;

.field public static final EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

.field public static final Password:Landroidx/compose/ui/autofill/AndroidContentType;

.field public static final PhoneNumber:Landroidx/compose/ui/autofill/AndroidContentType;


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
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 12
    .line 13
    .line 14
    const-string v0, "password"

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

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
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 29
    .line 30
    const-string v0, "newUsername"

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 33
    .line 34
    .line 35
    const-string v0, "newPassword"

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 38
    .line 39
    .line 40
    const-string v0, "postalAddress"

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 43
    .line 44
    .line 45
    const-string v0, "postalCode"

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 48
    .line 49
    .line 50
    const-string v0, "creditCardNumber"

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 53
    .line 54
    .line 55
    const-string v0, "creditCardSecurityCode"

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 58
    .line 59
    .line 60
    const-string v0, "creditCardExpirationDate"

    .line 61
    .line 62
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 63
    .line 64
    .line 65
    const-string v0, "creditCardExpirationMonth"

    .line 66
    .line 67
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 68
    .line 69
    .line 70
    const-string v0, "creditCardExpirationYear"

    .line 71
    .line 72
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 73
    .line 74
    .line 75
    const-string v0, "creditCardExpirationDay"

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 78
    .line 79
    .line 80
    const-string v0, "addressCountry"

    .line 81
    .line 82
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 83
    .line 84
    .line 85
    const-string v0, "addressRegion"

    .line 86
    .line 87
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 88
    .line 89
    .line 90
    const-string v0, "addressLocality"

    .line 91
    .line 92
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 93
    .line 94
    .line 95
    const-string v0, "streetAddress"

    .line 96
    .line 97
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 98
    .line 99
    .line 100
    const-string v0, "extendedAddress"

    .line 101
    .line 102
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 103
    .line 104
    .line 105
    const-string v0, "extendedPostalCode"

    .line 106
    .line 107
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 108
    .line 109
    .line 110
    const-string v0, "personName"

    .line 111
    .line 112
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 113
    .line 114
    .line 115
    const-string v0, "personGivenName"

    .line 116
    .line 117
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 118
    .line 119
    .line 120
    const-string v0, "personFamilyName"

    .line 121
    .line 122
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 123
    .line 124
    .line 125
    const-string v0, "personMiddleName"

    .line 126
    .line 127
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 128
    .line 129
    .line 130
    const-string v0, "personMiddleInitial"

    .line 131
    .line 132
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 133
    .line 134
    .line 135
    const-string v0, "personNamePrefix"

    .line 136
    .line 137
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 138
    .line 139
    .line 140
    const-string v0, "personNameSuffix"

    .line 141
    .line 142
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 143
    .line 144
    .line 145
    const-string v0, "phoneNumber"

    .line 146
    .line 147
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->PhoneNumber:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 152
    .line 153
    const-string v0, "phoneNumberDevice"

    .line 154
    .line 155
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 156
    .line 157
    .line 158
    const-string v0, "phoneCountryCode"

    .line 159
    .line 160
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 161
    .line 162
    .line 163
    const-string v0, "phoneNational"

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 166
    .line 167
    .line 168
    const-string v0, "gender"

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 171
    .line 172
    .line 173
    const-string v0, "birthDateFull"

    .line 174
    .line 175
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 176
    .line 177
    .line 178
    const-string v0, "birthDateDay"

    .line 179
    .line 180
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 181
    .line 182
    .line 183
    const-string v0, "birthDateMonth"

    .line 184
    .line 185
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 186
    .line 187
    .line 188
    const-string v0, "birthDateYear"

    .line 189
    .line 190
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 191
    .line 192
    .line 193
    const-string v0, "smsOTPCode"

    .line 194
    .line 195
    invoke-static {v0}, Landroidx/work/OperationKt;->ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;

    .line 196
    .line 197
    .line 198
    return-void
.end method
