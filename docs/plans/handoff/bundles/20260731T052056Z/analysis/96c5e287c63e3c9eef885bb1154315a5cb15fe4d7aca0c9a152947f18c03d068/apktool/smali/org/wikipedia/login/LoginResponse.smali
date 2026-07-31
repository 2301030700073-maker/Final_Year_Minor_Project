.class public final Lorg/wikipedia/login/LoginResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/login/LoginResponse$Companion;


# instance fields
.field public final clientLogin:Lorg/wikipedia/login/LoginResponse$ClientLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/login/LoginResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/login/LoginResponse;->Companion:Lorg/wikipedia/login/LoginResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    sput-object v1, Lorg/wikipedia/login/LoginResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/login/LoginResponse$ClientLogin;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/wikipedia/login/LoginResponse;->clientLogin:Lorg/wikipedia/login/LoginResponse$ClientLogin;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/login/LoginResponse;->clientLogin:Lorg/wikipedia/login/LoginResponse$ClientLogin;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final toLoginResult(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/login/LoginResult;
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/login/LoginResponse;->clientLogin:Lorg/wikipedia/login/LoginResponse$ClientLogin;

    .line 8
    .line 9
    if-eqz p0, :cond_b

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->status:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "UI"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-object v1, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->requests:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_8

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/wikipedia/login/LoginResponse$Request;

    .line 42
    .line 43
    iget-object v2, v2, Lorg/wikipedia/login/LoginResponse$Request;->id:Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    move-object v5, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move-object v5, v2

    .line 52
    :goto_1
    const-string v6, "TOTPAuthenticationRequest"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    new-instance v1, Lorg/wikipedia/login/LoginOATHResult;

    .line 62
    .line 63
    iget-object v4, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v6, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/16 v8, 0xe0

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    move-object v2, p2

    .line 75
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_1
    move-object v5, p1

    .line 80
    move-object p1, v2

    .line 81
    move-object v2, p2

    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    move-object p2, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object p2, p1

    .line 87
    :goto_2
    const-string v6, "EmailAuthAuthenticationRequest"

    .line 88
    .line 89
    invoke-static {p2, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    new-instance v1, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 96
    .line 97
    iget-object v4, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v6, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    const/16 v8, 0xe0

    .line 106
    .line 107
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_3
    if-nez p1, :cond_4

    .line 112
    .line 113
    move-object p2, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move-object p2, p1

    .line 116
    :goto_3
    const-string v6, "PasswordAuthenticationRequest"

    .line 117
    .line 118
    invoke-static {p2, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_5

    .line 123
    .line 124
    new-instance v1, Lorg/wikipedia/login/LoginResetPasswordResult;

    .line 125
    .line 126
    iget-object v4, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v6, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    const/16 v8, 0xe0

    .line 135
    .line 136
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_5
    if-nez p1, :cond_6

    .line 141
    .line 142
    move-object p1, v4

    .line 143
    :cond_6
    const-string p2, "TwoFactorModuleSelectAuthenticationRequest"

    .line 144
    .line 145
    invoke-static {p1, p2, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    new-instance v1, Lorg/wikipedia/login/LoginModuleSelectResult;

    .line 152
    .line 153
    iget-object v4, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v6, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    const/16 v8, 0xe0

    .line 162
    .line 163
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_7
    move-object p2, v2

    .line 168
    move-object p1, v5

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_8
    move-object v5, p1

    .line 172
    move-object v2, p2

    .line 173
    goto :goto_4

    .line 174
    :cond_9
    move-object v5, p1

    .line 175
    move-object v2, p2

    .line 176
    const-string p1, "PASS"

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_a

    .line 183
    .line 184
    const-string p1, "FAIL"

    .line 185
    .line 186
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    const-string v0, "An unknown error occurred."

    .line 193
    .line 194
    :cond_a
    :goto_4
    move-object v6, v0

    .line 195
    new-instance v1, Lorg/wikipedia/login/LoginResult;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget-object v4, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v7, p0, Lorg/wikipedia/login/LoginResponse$ClientLogin;->messageCode:Ljava/lang/String;

    .line 203
    .line 204
    const/16 v8, 0x60

    .line 205
    .line 206
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_b
    const/4 p0, 0x0

    .line 211
    return-object p0
.end method
