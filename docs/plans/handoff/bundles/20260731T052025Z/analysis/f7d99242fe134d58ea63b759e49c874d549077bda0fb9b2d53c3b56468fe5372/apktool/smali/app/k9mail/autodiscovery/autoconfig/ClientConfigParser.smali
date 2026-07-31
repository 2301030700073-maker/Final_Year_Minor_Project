.class public final Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final domain:Ljava/lang/String;

.field public final email:Lnet/thunderbird/core/common/mail/EmailAddress;

.field public final localPart:Ljava/lang/String;

.field public final pullParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lnet/thunderbird/core/common/mail/EmailAddress;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->email:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 11
    .line 12
    iget-object v0, p2, Lnet/thunderbird/core/common/mail/EmailAddress;->localPart:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->localPart:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p2, p2, Lnet/thunderbird/core/common/mail/EmailAddress;->domain:Lnet/thunderbird/core/common/mail/EmailDomain;

    .line 17
    .line 18
    iget-object p2, p2, Lnet/thunderbird/core/common/mail/EmailDomain;->normalized:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->domain:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Ljava/io/InputStreamReader;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 39
    .line 40
    return-void
.end method

.method public static isValidHostname(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/net/HostNameUtils;->HOST_PATTERN:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalHostNameOrIP(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method


# virtual methods
.method public final parse()Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    iget-object v2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v3, v4, :cond_3

    .line 11
    .line 12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v4, "clientConfig"

    .line 17
    .line 18
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {v2, p0, v1}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;-><init>(Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 45
    .line 46
    const-string v1, "Missing \'emailProvider\' element"

    .line 47
    .line 48
    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->skipElement()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 56
    if-ne v3, v2, :cond_0

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_4
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 62
    .line 63
    const-string v1, "Missing \'clientConfig\' element"

    .line 64
    .line 65
    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final parseServer(Ljava/lang/String;Lkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v1, v3, v4

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v0, v3, v1

    .line 28
    .line 29
    const-string v0, "Unsupported \'%s[type]\' value: \'%s\'"

    .line 30
    .line 31
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->skipElement()V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_0
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v4, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    const/4 v11, 0x1

    .line 66
    move-object v5, p0

    .line 67
    invoke-direct/range {v4 .. v11}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v8, v1

    .line 92
    check-cast v8, Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v6, v1

    .line 109
    check-cast v6, Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 110
    .line 111
    if-eqz v6, :cond_1

    .line 112
    .line 113
    invoke-static {p0}, Lokhttp3/Cookie$Companion;->toHostname(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Lnet/thunderbird/core/common/net/Hostname;

    .line 117
    .line 118
    invoke-direct {v4, p0}, Lnet/thunderbird/core/common/net/Hostname;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->toPort(I)V

    .line 122
    .line 123
    .line 124
    new-instance v5, Lnet/thunderbird/core/common/net/Port;

    .line 125
    .line 126
    invoke-direct {v5, v0}, Lnet/thunderbird/core/common/net/Port;-><init>(I)V

    .line 127
    .line 128
    .line 129
    move-object v3, p2

    .line 130
    invoke-interface/range {v3 .. v8}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_1
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 136
    .line 137
    const-string v0, "Missing \'socketType\' element"

    .line 138
    .line 139
    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_2
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 144
    .line 145
    const-string v0, "No usable \'authentication\' element found"

    .line 146
    .line 147
    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_3
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 152
    .line 153
    const-string v0, "Missing \'username\' element"

    .line 154
    .line 155
    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_4
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 160
    .line 161
    const-string v0, "Missing \'port\' element"

    .line 162
    .line 163
    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_5
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 168
    .line 169
    const-string v0, "Missing \'hostname\' element"

    .line 170
    .line 171
    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final readElement(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v2, v1, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p0, "End of document reached while reading element \'"

    .line 54
    .line 55
    const-string p1, "\'"

    .line 56
    .line 57
    invoke-static {p0, v0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance p1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {p1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    const-string p0, "Failed requirement."

    .line 69
    .line 70
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final readText()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v1, v0, p0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final replaceVariables(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "%EMAILDOMAIN%"

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->domain:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "%EMAILLOCALPART%"

    .line 10
    .line 11
    iget-object v1, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->localPart:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->email:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailAddress;->getAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "%EMAILADDRESS%"

    .line 24
    .line 25
    invoke-static {p1, v0, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final skipElement()V
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    const-string v0, "Skipping element \'%s\'"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
