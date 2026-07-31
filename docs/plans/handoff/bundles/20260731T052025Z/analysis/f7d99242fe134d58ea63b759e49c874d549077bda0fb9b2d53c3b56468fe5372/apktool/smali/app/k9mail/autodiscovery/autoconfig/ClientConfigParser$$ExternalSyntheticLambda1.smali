.class public final synthetic Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    iget-object p1, v3, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    .line 24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    sget-object p0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object p0, p0, p1

    .line 37
    .line 38
    const-string p1, "Expected text, but got "

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    iget-object v0, v3, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v4, 0x2

    .line 59
    if-ne p1, v4, :cond_7

    .line 60
    .line 61
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v4, "emailProvider"

    .line 66
    .line 67
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v5, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v6, "id"

    .line 89
    .line 90
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-static {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->isValidHostname(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v0, v3, p1, v4, v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_2

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_1

    .line 125
    .line 126
    new-instance p1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;

    .line 127
    .line 128
    invoke-direct {p1, v4, v5}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 135
    .line 136
    const-string p1, "No supported \'outgoingServer\' element found"

    .line 137
    .line 138
    invoke-direct {p0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_2
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 143
    .line 144
    const-string p1, "No supported \'incomingServer\' element found"

    .line 145
    .line 146
    invoke-direct {p0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_3
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 151
    .line 152
    const-string p1, "Valid \'domain\' element required"

    .line 153
    .line 154
    invoke-direct {p0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_4
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 159
    .line 160
    const-string p1, "Invalid \'emailProvider.id\' attribute"

    .line 161
    .line 162
    invoke-direct {p0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 167
    .line 168
    const-string p1, "Missing \'emailProvider.id\' attribute"

    .line 169
    .line 170
    invoke-direct {p0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_6
    invoke-virtual {v3}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->skipElement()V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_0
    return-object v2

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
