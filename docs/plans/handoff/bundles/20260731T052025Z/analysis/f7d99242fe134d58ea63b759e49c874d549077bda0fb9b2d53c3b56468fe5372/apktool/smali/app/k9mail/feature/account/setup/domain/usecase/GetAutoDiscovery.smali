.class public final Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final oauthProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

.field public final service:Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;


# direct methods
.method public constructor <init>(Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->service:Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->oauthProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cleanAuthenticationTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lapp/k9mail/autodiscovery/api/AuthenticationType;->OAuth2:Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->oauthProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 13
    .line 14
    iget-object p0, p0, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;->hostnameMapping:Lkotlin/collections/builders/MapBuilder;

    .line 15
    .line 16
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    move-object v1, p2

    .line 54
    check-cast v1, Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 55
    .line 56
    if-eq v1, v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object p0

    .line 63
    :cond_3
    :goto_1
    return-object p2
.end method

.method public final execute(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;-><init>(Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-object p2, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->LIMITED:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 52
    .line 53
    invoke-static {p1, p2}, Lnet/thunderbird/core/common/mail/TokensKt;->parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput v2, v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery$execute$1;->label:I

    .line 58
    .line 59
    iget-object p2, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->service:Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 60
    .line 61
    iget-object p2, p2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;->autoDiscoveryRegistry:Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;

    .line 62
    .line 63
    iget-object p2, p2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;->autoDiscoveries:Ljava/util/ArrayList;

    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lapp/k9mail/autodiscovery/api/AutoDiscovery;

    .line 85
    .line 86
    invoke-interface {v2, p1}, Lapp/k9mail/autodiscovery/api/AutoDiscovery;->initDiscovery(Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 95
    .line 96
    invoke-direct {p1, v1}, Lcom/beetstra/jutf7/Base64Util;-><init>(Ljava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 100
    .line 101
    const/16 v1, 0xb

    .line 102
    .line 103
    invoke-direct {p2, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2, v0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 111
    .line 112
    if-ne p2, p1, :cond_4

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_4
    :goto_2
    check-cast p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 116
    .line 117
    instance-of p1, p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    check-cast p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 122
    .line 123
    iget-object p1, p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 124
    .line 125
    iget-object v0, p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->outgoingServerSettings:Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 126
    .line 127
    instance-of v1, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    instance-of v1, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 132
    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    iget-object v3, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->hostname:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v1, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v2, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->authenticationTypes:Ljava/util/List;

    .line 141
    .line 142
    invoke-virtual {p0, v3, v2}, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->cleanAuthenticationTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v2, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->authenticationTypes:Ljava/util/List;

    .line 147
    .line 148
    invoke-virtual {p0, v1, v2}, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->cleanAuthenticationTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_6

    .line 157
    .line 158
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-nez p0, :cond_6

    .line 163
    .line 164
    iget v4, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->port:I

    .line 165
    .line 166
    iget-object v5, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 167
    .line 168
    iget-object v7, p1, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->username:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance v2, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 177
    .line 178
    invoke-direct/range {v2 .. v7}, Lapp/k9mail/autodiscovery/api/ImapServerSettings;-><init>(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v6, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 182
    .line 183
    iget-object v7, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 184
    .line 185
    iget-object v9, v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance v4, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 194
    .line 195
    move-object v5, v1

    .line 196
    invoke-direct/range {v4 .. v9}, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;-><init>(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const/4 p0, 0x0

    .line 200
    const/16 p1, 0xc

    .line 201
    .line 202
    invoke-static {p2, v2, v4, p0, p1}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->copy$default(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lapp/k9mail/autodiscovery/api/ImapServerSettings;Lapp/k9mail/autodiscovery/api/SmtpServerSettings;ZI)Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :cond_6
    :goto_3
    sget-object p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;->INSTANCE:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;

    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_7
    return-object p2
.end method
