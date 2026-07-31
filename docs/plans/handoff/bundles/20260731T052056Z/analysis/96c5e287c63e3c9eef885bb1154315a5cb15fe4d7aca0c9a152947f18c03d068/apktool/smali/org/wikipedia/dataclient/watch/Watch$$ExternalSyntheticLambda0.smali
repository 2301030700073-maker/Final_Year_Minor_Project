.class public final synthetic Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 24
    .line 25
    sget-object v1, Lorg/wikipedia/dataclient/restbase/UserEdits$Item$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/UserEdits$Item$$serializer;

    .line 26
    .line 27
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 32
    .line 33
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 34
    .line 35
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 40
    .line 41
    sget-object v1, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition$$serializer;

    .line 42
    .line 43
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 48
    .line 49
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 50
    .line 51
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/dataclient/restbase/Metrics$Results$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/Metrics$Results$$serializer;

    .line 58
    .line 59
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_6
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 64
    .line 65
    sget-object v1, Lorg/wikipedia/dataclient/restbase/Metrics$Items$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/Metrics$Items$$serializer;

    .line 66
    .line 67
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_7
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 72
    .line 73
    sget-object v1, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection$$serializer;

    .line 74
    .line 75
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_8
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 80
    .line 81
    sget-object v1, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange$$serializer;

    .line 82
    .line 83
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 88
    .line 89
    sget-object v1, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem$$serializer;

    .line 90
    .line 91
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 96
    .line 97
    sget-object v1, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/TalkPage$TopicReply$$serializer;

    .line 98
    .line 99
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 104
    .line 105
    sget-object v1, Lorg/wikipedia/dataclient/page/TalkPage$Topic$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/TalkPage$Topic$$serializer;

    .line 106
    .line 107
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 112
    .line 113
    sget-object v1, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory$$serializer;

    .line 114
    .line 115
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_d
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 120
    .line 121
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 122
    .line 123
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 128
    .line 129
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 130
    .line 131
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 136
    .line 137
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 138
    .line 139
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 144
    .line 145
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 146
    .line 147
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 152
    .line 153
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 154
    .line 155
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 156
    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 160
    .line 161
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 162
    .line 163
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 168
    .line 169
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 170
    .line 171
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData$$serializer;

    .line 172
    .line 173
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 174
    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 178
    .line 179
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 180
    .line 181
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 182
    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 186
    .line 187
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 188
    .line 189
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 190
    .line 191
    .line 192
    return-object p0

    .line 193
    :pswitch_16
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 194
    .line 195
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 196
    .line 197
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 202
    .line 203
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message$$serializer;

    .line 204
    .line 205
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_18
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 210
    .line 211
    const-class v0, Lorg/wikipedia/dataclient/mwapi/MwResponse;

    .line 212
    .line 213
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/4 v1, 0x0

    .line 220
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 221
    .line 222
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 223
    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 227
    .line 228
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 229
    .line 230
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 235
    .line 236
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 237
    .line 238
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 239
    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 243
    .line 244
    sget-object v1, Lorg/wikipedia/notifications/db/Notification$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$$serializer;

    .line 245
    .line 246
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 247
    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_1c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 251
    .line 252
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 253
    .line 254
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
