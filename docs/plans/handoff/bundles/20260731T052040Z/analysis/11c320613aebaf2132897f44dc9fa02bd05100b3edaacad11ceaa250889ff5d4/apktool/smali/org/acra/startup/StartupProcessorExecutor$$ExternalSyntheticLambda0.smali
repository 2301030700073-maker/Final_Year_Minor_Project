.class public final synthetic Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcoil3/ComponentRegistry$Builder;

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcoil3/ComponentRegistry$Builder;Ljava/util/Calendar;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$0:Lcoil3/ComponentRegistry$Builder;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    .line 6
    .line 7
    iput-boolean p3, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$2:Z

    .line 5
    .line 6
    iget-object v3, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$0:Lcoil3/ComponentRegistry$Builder;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/acra/file/ReportLocator;

    .line 16
    .line 17
    iget-object v4, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Lcom/grack/nanojson/JsonBuilder;

    .line 20
    .line 21
    iget-object v5, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, Lorg/schabi/newpipe/App;

    .line 24
    .line 25
    iget-object v6, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, Lorg/acra/config/CoreConfiguration;

    .line 28
    .line 29
    iget-object v7, v0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    .line 30
    .line 31
    const-string v8, "ACRA-unapproved"

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    new-array v7, v9, [Ljava/io/File;

    .line 48
    .line 49
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    .line 50
    .line 51
    array-length v10, v7

    .line 52
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    array-length v10, v7

    .line 56
    move v11, v9

    .line 57
    :goto_0
    if-ge v11, v10, :cond_1

    .line 58
    .line 59
    aget-object v12, v7, v11

    .line 60
    .line 61
    new-instance v13, Lorg/acra/startup/Report;

    .line 62
    .line 63
    invoke-direct {v13, v12, v9}, Lorg/acra/startup/Report;-><init>(Ljava/io/File;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v11, v11, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v7, Ljava/util/ArrayList;

    .line 77
    .line 78
    array-length v10, v0

    .line 79
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    array-length v10, v0

    .line 83
    move v11, v9

    .line 84
    :goto_1
    if-ge v11, v10, :cond_2

    .line 85
    .line 86
    aget-object v12, v0, v11

    .line 87
    .line 88
    new-instance v13, Lorg/acra/startup/Report;

    .line 89
    .line 90
    invoke-direct {v13, v12, v1}, Lorg/acra/startup/Report;-><init>(Ljava/io/File;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v11, v11, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v6}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-class v8, Lorg/acra/startup/StartupProcessor;

    .line 108
    .line 109
    check-cast v7, Lorg/acra/plugins/ServicePluginLoader;

    .line 110
    .line 111
    invoke-virtual {v7, v6, v8}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_3

    .line 124
    .line 125
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Lorg/acra/startup/StartupProcessor;

    .line 130
    .line 131
    invoke-interface {v8, v5, v6, v0}, Lorg/acra/startup/StartupProcessor;->processReports(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_7

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Lorg/acra/startup/Report;

    .line 150
    .line 151
    iget-object v8, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v8, Lokio/Path$Companion;

    .line 154
    .line 155
    iget-object v10, v7, Lorg/acra/startup/Report;->file:Ljava/io/File;

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const-string v8, ".stacktrace"

    .line 168
    .line 169
    const-string v12, ""

    .line 170
    .line 171
    invoke-static {v11, v8, v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    sget-object v11, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v8, v11, v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    :try_start_0
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 186
    .line 187
    const-string/jumbo v13, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    .line 188
    .line 189
    .line 190
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 191
    .line 192
    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    :catch_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v8, :cond_4

    .line 213
    .line 214
    iget-boolean v8, v7, Lorg/acra/startup/Report;->delete:Z

    .line 215
    .line 216
    if-eqz v8, :cond_5

    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_4

    .line 223
    .line 224
    sget-object v7, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 225
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v8, "Could not delete report "

    .line 229
    .line 230
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    const-string v8, "ACRA"

    .line 241
    .line 242
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_5
    iget-boolean v8, v7, Lorg/acra/startup/Report;->approved:Z

    .line 247
    .line 248
    if-eqz v8, :cond_6

    .line 249
    .line 250
    move v9, v1

    .line 251
    goto :goto_3

    .line 252
    :cond_6
    iget-boolean v7, v7, Lorg/acra/startup/Report;->approve:Z

    .line 253
    .line 254
    if-eqz v7, :cond_4

    .line 255
    .line 256
    if-eqz v2, :cond_4

    .line 257
    .line 258
    new-instance v7, Lorg/acra/util/ProcessFinisher;

    .line 259
    .line 260
    invoke-direct {v7, v5, v6}, Lorg/acra/util/ProcessFinisher;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v10}, Lorg/acra/util/ProcessFinisher;->performInteractions(Ljava/io/File;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_4

    .line 268
    .line 269
    invoke-virtual {v4, v10}, Lcom/grack/nanojson/JsonBuilder;->scheduleReports(Ljava/io/File;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_7
    if-eqz v9, :cond_8

    .line 275
    .line 276
    if-eqz v2, :cond_8

    .line 277
    .line 278
    const/4 p0, 0x0

    .line 279
    invoke-virtual {v4, p0}, Lcom/grack/nanojson/JsonBuilder;->scheduleReports(Ljava/io/File;)V

    .line 280
    .line 281
    .line 282
    :cond_8
    return-void

    .line 283
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    .line 284
    .line 285
    new-instance v4, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    invoke-direct {v4, p0, v3, v2, v1}, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;-><init>(Lcoil3/ComponentRegistry$Builder;Ljava/util/Calendar;ZI)V

    .line 288
    .line 289
    .line 290
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
