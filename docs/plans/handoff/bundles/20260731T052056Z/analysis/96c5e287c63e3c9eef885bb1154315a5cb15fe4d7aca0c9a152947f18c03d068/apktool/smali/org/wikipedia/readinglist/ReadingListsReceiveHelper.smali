.class public final Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activity/BaseActivity$Callback;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

.field public static final INSTANCE$1:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

.field public static lists:Ljava/util/List;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE$1:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 14
    .line 15
    return-void
.end method

.method public static addTitlesToList(Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->pages:Ljava/util/List;

    .line 2
    .line 3
    new-instance v3, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;

    .line 30
    .line 31
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 32
    .line 33
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;->title:Ljava/lang/String;

    .line 34
    .line 35
    iget v5, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;->ns:I

    .line 36
    .line 37
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;->lang:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v2, v0, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->code()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v5, v0, :cond_0

    .line 58
    .line 59
    sget-object v0, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v5}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object p0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 80
    .line 81
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object p0, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 90
    .line 91
    new-instance v0, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 92
    .line 93
    const/4 v5, 0x4

    .line 94
    move-object v2, p1

    .line 95
    invoke-direct/range {v0 .. v5}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p2, v0}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 103
    .line 104
    if-ne p0, p1, :cond_2

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public static extractListDataToExport(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v4, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, v4, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v7, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 61
    .line 62
    new-instance v9, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;

    .line 63
    .line 64
    iget-object v10, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v11, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 67
    .line 68
    iget-object v11, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v8, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 71
    .line 72
    invoke-virtual {v8}, Lorg/wikipedia/page/Namespace;->code()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    invoke-direct {v9, v10, v11, v8}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 84
    .line 85
    invoke-direct {v4, v5, v6, v7}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v3, 0x1

    .line 97
    if-ne v2, v3, :cond_2

    .line 98
    .line 99
    const v2, 0x7f120870

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const v2, 0x7f12045a

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 111
    .line 112
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v4, v3, v0

    .line 119
    .line 120
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 128
    .line 129
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;

    .line 130
    .line 131
    invoke-direct {v3, v1}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    :try_start_1
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;->Companion:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents$Companion;

    .line 141
    .line 142
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 147
    .line 148
    invoke-virtual {v4, v5, v3}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_3

    .line 153
    :catch_0
    move-exception v3

    .line 154
    :try_start_2
    invoke-static {v3}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    move-object v3, v1

    .line 158
    :goto_3
    invoke-static {p0, v2, v3}, Lorg/wikipedia/util/FileUtil;->createFileInDownloadsFolder(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Landroid/content/Intent;

    .line 162
    .line 163
    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    .line 164
    .line 165
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-class v3, Landroid/app/NotificationManager;

    .line 169
    .line 170
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Landroid/app/NotificationManager;

    .line 175
    .line 176
    if-eqz v3, :cond_3

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-static {p0, v2, v4}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->getNotificationBuilder(Landroid/content/Context;Landroid/content/Intent;I)Landroidx/core/app/NotificationCompat$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v3, v0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    const v3, 0x7f1207b6

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const/16 v4, 0xc

    .line 204
    .line 205
    invoke-static {p0, v3, v0, v4}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 210
    .line 211
    const/16 v5, 0x16

    .line 212
    .line 213
    invoke-direct {v4, v5, p0, v2}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const v2, 0x7f120889

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v2, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 230
    .line 231
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 232
    .line 233
    invoke-static {p0, v1}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v5, "ReadingList.ListItemCount:"

    .line 240
    .line 241
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, ".exported"

    .line 248
    .line 249
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-direct {v3, v1, v2}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :catch_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    const v2, 0x7f100026

    .line 268
    .line 269
    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 282
    .line 283
    .line 284
    :goto_4
    return-void
.end method

.method public static getNotificationBuilder(Landroid/content/Context;Landroid/content/Intent;I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/notifications/NotificationCategory;->MENTION:Lorg/wikipedia/notifications/NotificationCategory;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 22
    .line 23
    .line 24
    const v2, 0x7f120788

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 36
    .line 37
    const v2, 0x7f120786

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 49
    .line 50
    const/high16 v2, 0x8000000

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {p0, v3, p1, v2}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 58
    .line 59
    const p1, 0x7f080154

    .line 60
    .line 61
    .line 62
    const-string v2, ""

    .line 63
    .line 64
    const v4, 0x7f06002b

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v4, p1, v2}, Lorg/wikipedia/notifications/NotificationPresenter;->drawNotificationBitmap(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f080216

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 78
    .line 79
    iput p1, v2, Landroid/app/Notification;->icon:I

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 86
    .line 87
    new-instance p1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p2, v1, v3

    .line 99
    .line 100
    const p2, 0x7f120787

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method


# virtual methods
.method public exportLists(Lorg/wikipedia/activity/BaseActivity;Ljava/util/List;)V
    .locals 1

    .line 1
    sput-object p2, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->lists:Ljava/util/List;

    .line 2
    .line 3
    iput-object p0, p1, Lorg/wikipedia/activity/BaseActivity;->callback:Lorg/wikipedia/activity/BaseActivity$Callback;

    .line 4
    .line 5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x1d

    .line 8
    .line 9
    if-ge p0, v0, :cond_1

    .line 10
    .line 11
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    .line 13
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, Lorg/wikipedia/activity/BaseActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p0, p2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->extractListDataToExport(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onPermissionResult(Lorg/wikipedia/activity/BaseActivity;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->lists:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->extractListDataToExport(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    sput-object p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->lists:Ljava/util/List;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const p0, 0x7f120773

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public receiveReadingLists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 31

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;-><init>(Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v3, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 34
    .line 35
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    const-string v9, ""

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eq v3, v7, :cond_2

    .line 44
    .line 45
    if-ne v3, v6, :cond_1

    .line 46
    .line 47
    iget v3, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$2:I

    .line 48
    .line 49
    iget v11, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$1:I

    .line 50
    .line 51
    iget v12, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$0:I

    .line 52
    .line 53
    iget-boolean v13, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->Z$0:Z

    .line 54
    .line 55
    iget-object v14, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$19:Ljava/util/List;

    .line 56
    .line 57
    iget-object v15, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$18:Ljava/util/List;

    .line 58
    .line 59
    const/16 p0, 0x0

    .line 60
    .line 61
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$13:Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v7, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$11:Lorg/wikipedia/dataclient/WikiSite;

    .line 64
    .line 65
    iget-object v8, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$8:Ljava/util/Iterator;

    .line 66
    .line 67
    iget-object v5, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$6:Ljava/util/List;

    .line 68
    .line 69
    iget-object v6, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$5:Ljava/lang/String;

    .line 70
    .line 71
    move-object/from16 v17, v0

    .line 72
    .line 73
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$4:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v26, v10

    .line 79
    .line 80
    move-object v10, v2

    .line 81
    move v2, v13

    .line 82
    move-object/from16 v13, v26

    .line 83
    .line 84
    move-object/from16 v26, v4

    .line 85
    .line 86
    move-object/from16 v27, v9

    .line 87
    .line 88
    move-object v4, v15

    .line 89
    move-object/from16 v9, p0

    .line 90
    .line 91
    move-object v15, v5

    .line 92
    move-object v5, v1

    .line 93
    move-object v1, v0

    .line 94
    move-object/from16 v0, v17

    .line 95
    .line 96
    goto/16 :goto_13

    .line 97
    .line 98
    :cond_1
    const/16 p0, 0x0

    .line 99
    .line 100
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 101
    .line 102
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_2
    move-object/from16 v17, v0

    .line 107
    .line 108
    const/16 p0, 0x0

    .line 109
    .line 110
    iget v0, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$3:I

    .line 111
    .line 112
    iget v3, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$2:I

    .line 113
    .line 114
    iget v5, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$1:I

    .line 115
    .line 116
    iget v6, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$0:I

    .line 117
    .line 118
    iget-boolean v7, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->Z$0:Z

    .line 119
    .line 120
    iget-object v8, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$20:Ljava/util/ArrayList;

    .line 121
    .line 122
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$19:Ljava/util/List;

    .line 123
    .line 124
    iget-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$18:Ljava/util/List;

    .line 125
    .line 126
    iget-object v12, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$13:Ljava/util/Iterator;

    .line 127
    .line 128
    iget-object v13, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$11:Lorg/wikipedia/dataclient/WikiSite;

    .line 129
    .line 130
    iget-object v14, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$8:Ljava/util/Iterator;

    .line 131
    .line 132
    iget-object v15, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$6:Ljava/util/List;

    .line 133
    .line 134
    move/from16 p1, v0

    .line 135
    .line 136
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$5:Ljava/lang/String;

    .line 137
    .line 138
    move-object/from16 p2, v0

    .line 139
    .line 140
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$4:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move/from16 v26, v6

    .line 146
    .line 147
    move-object v6, v0

    .line 148
    move-object/from16 v0, v17

    .line 149
    .line 150
    move-object/from16 v17, v14

    .line 151
    .line 152
    move-object v14, v13

    .line 153
    move-object v13, v12

    .line 154
    move-object v12, v11

    .line 155
    move/from16 v11, v26

    .line 156
    .line 157
    move-object/from16 v26, v4

    .line 158
    .line 159
    move v4, v7

    .line 160
    move-object/from16 v27, v9

    .line 161
    .line 162
    move v7, v5

    .line 163
    move-object v9, v8

    .line 164
    move-object/from16 v8, p2

    .line 165
    .line 166
    move-object v5, v1

    .line 167
    move-object v1, v2

    .line 168
    move/from16 v2, p1

    .line 169
    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_3
    move-object/from16 v17, v0

    .line 173
    .line 174
    const/16 p0, 0x0

    .line 175
    .line 176
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 180
    .line 181
    move-object/from16 v0, p3

    .line 182
    .line 183
    if-eqz p4, :cond_4

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance v3, Ljava/lang/String;

    .line 194
    .line 195
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 196
    .line 197
    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v3

    .line 201
    :cond_4
    if-eqz v0, :cond_6

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_5

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList;->Companion:Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList$Companion;

    .line 216
    .line 217
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 226
    .line 227
    invoke-virtual {v3, v0, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    .line 237
    .line 238
    :goto_2
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList;

    .line 239
    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList;->name:Ljava/lang/String;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_7
    move-object/from16 v3, p0

    .line 246
    .line 247
    :goto_3
    if-nez v3, :cond_8

    .line 248
    .line 249
    move-object v3, v9

    .line 250
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-nez v5, :cond_9

    .line 255
    .line 256
    move-object/from16 v3, p1

    .line 257
    .line 258
    :cond_9
    if-eqz v0, :cond_a

    .line 259
    .line 260
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList;->description:Ljava/lang/String;

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_a
    move-object/from16 v5, p0

    .line 264
    .line 265
    :goto_4
    if-nez v5, :cond_b

    .line 266
    .line 267
    move-object v5, v9

    .line 268
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-nez v6, :cond_c

    .line 273
    .line 274
    move-object/from16 v5, p2

    .line 275
    .line 276
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    if-eqz v0, :cond_24

    .line 282
    .line 283
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingList;->list:Ljava/util/Map;

    .line 284
    .line 285
    if-eqz v0, :cond_24

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    move-object v7, v6

    .line 296
    const/4 v8, 0x0

    .line 297
    move-object v6, v5

    .line 298
    move-object v5, v3

    .line 299
    move-object v3, v1

    .line 300
    move-object v1, v0

    .line 301
    move/from16 v0, p4

    .line 302
    .line 303
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-eqz v10, :cond_23

    .line 308
    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    check-cast v10, Ljava/util/Map$Entry;

    .line 314
    .line 315
    sget-object v11, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 316
    .line 317
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    check-cast v12, Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-static {v12}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    check-cast v10, Ljava/lang/Iterable;

    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    const/16 v12, 0x32

    .line 340
    .line 341
    invoke-static {v10, v12, v12}, Lkotlin/collections/CollectionsKt;->windowed(Ljava/lang/Iterable;II)Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    move-object v13, v10

    .line 350
    move-object v12, v11

    .line 351
    move-object v10, v7

    .line 352
    move v11, v8

    .line 353
    const/4 v7, 0x0

    .line 354
    move-object v8, v6

    .line 355
    move-object v6, v5

    .line 356
    move-object v5, v3

    .line 357
    const/4 v3, 0x0

    .line 358
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-eqz v14, :cond_22

    .line 363
    .line 364
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    check-cast v14, Ljava/util/List;

    .line 369
    .line 370
    new-instance v15, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v17

    .line 379
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v18

    .line 383
    if-eqz v18, :cond_e

    .line 384
    .line 385
    move-object/from16 v26, v4

    .line 386
    .line 387
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    move-object/from16 v27, v9

    .line 392
    .line 393
    move-object v9, v4

    .line 394
    check-cast v9, Lkotlinx/serialization/json/JsonElement;

    .line 395
    .line 396
    move-object/from16 p1, v14

    .line 397
    .line 398
    instance-of v14, v9, Lkotlinx/serialization/json/JsonPrimitive;

    .line 399
    .line 400
    if-eqz v14, :cond_d

    .line 401
    .line 402
    check-cast v9, Lkotlinx/serialization/json/JsonPrimitive;

    .line 403
    .line 404
    invoke-virtual {v9}, Lkotlinx/serialization/json/JsonPrimitive;->isString()Z

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    if-eqz v9, :cond_d

    .line 409
    .line 410
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    :cond_d
    move-object/from16 v14, p1

    .line 414
    .line 415
    move-object/from16 v4, v26

    .line 416
    .line 417
    move-object/from16 v9, v27

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_e
    move-object/from16 v26, v4

    .line 421
    .line 422
    move-object/from16 v27, v9

    .line 423
    .line 424
    move-object/from16 p1, v14

    .line 425
    .line 426
    new-instance v4, Ljava/util/ArrayList;

    .line 427
    .line 428
    const/16 v9, 0xa

    .line 429
    .line 430
    invoke-static {v15, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v15

    .line 445
    if-eqz v15, :cond_f

    .line 446
    .line 447
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    check-cast v15, Lkotlinx/serialization/json/JsonElement;

    .line 452
    .line 453
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    check-cast v15, Lkotlinx/serialization/json/JsonPrimitive;

    .line 457
    .line 458
    invoke-virtual {v15}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v15

    .line 462
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_f
    new-instance v14, Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .line 470
    .line 471
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v15

    .line 475
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v17

    .line 479
    if-eqz v17, :cond_11

    .line 480
    .line 481
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    move-object/from16 p3, v15

    .line 486
    .line 487
    move-object v15, v9

    .line 488
    check-cast v15, Lkotlinx/serialization/json/JsonElement;

    .line 489
    .line 490
    move-object/from16 v28, v2

    .line 491
    .line 492
    instance-of v2, v15, Lkotlinx/serialization/json/JsonPrimitive;

    .line 493
    .line 494
    if-eqz v2, :cond_10

    .line 495
    .line 496
    check-cast v15, Lkotlinx/serialization/json/JsonPrimitive;

    .line 497
    .line 498
    invoke-virtual {v15}, Lkotlinx/serialization/json/JsonPrimitive;->isString()Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-nez v2, :cond_10

    .line 503
    .line 504
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    :cond_10
    move-object/from16 v15, p3

    .line 508
    .line 509
    move-object/from16 v2, v28

    .line 510
    .line 511
    const/16 v9, 0xa

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_11
    move-object/from16 v28, v2

    .line 515
    .line 516
    new-instance v2, Ljava/util/ArrayList;

    .line 517
    .line 518
    const/16 v9, 0xa

    .line 519
    .line 520
    invoke-static {v14, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 521
    .line 522
    .line 523
    move-result v15

    .line 524
    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v14

    .line 535
    if-eqz v14, :cond_12

    .line 536
    .line 537
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v14

    .line 541
    check-cast v14, Lkotlinx/serialization/json/JsonElement;

    .line 542
    .line 543
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    check-cast v14, Lkotlinx/serialization/json/JsonPrimitive;

    .line 547
    .line 548
    invoke-static {v14}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    new-instance v15, Ljava/lang/Integer;

    .line 553
    .line 554
    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    goto :goto_a

    .line 561
    :cond_12
    new-instance v9, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object v14

    .line 570
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v15

    .line 574
    if-eqz v15, :cond_14

    .line 575
    .line 576
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v15

    .line 580
    move-object/from16 p1, v2

    .line 581
    .line 582
    move-object v2, v15

    .line 583
    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 584
    .line 585
    instance-of v2, v2, Lkotlinx/serialization/json/JsonObject;

    .line 586
    .line 587
    if-eqz v2, :cond_13

    .line 588
    .line 589
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :cond_13
    move-object/from16 v2, p1

    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_14
    move-object/from16 p1, v2

    .line 596
    .line 597
    new-instance v2, Ljava/util/ArrayList;

    .line 598
    .line 599
    const/16 v14, 0xa

    .line 600
    .line 601
    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 602
    .line 603
    .line 604
    move-result v14

    .line 605
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 613
    .line 614
    .line 615
    move-result v14

    .line 616
    if-eqz v14, :cond_15

    .line 617
    .line 618
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v14

    .line 622
    check-cast v14, Lkotlinx/serialization/json/JsonElement;

    .line 623
    .line 624
    sget-object v15, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 625
    .line 626
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    check-cast v14, Lkotlinx/serialization/json/JsonObject;

    .line 630
    .line 631
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    sget-object v17, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->Companion:Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$Companion;

    .line 635
    .line 636
    invoke-virtual/range {v17 .. v17}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 637
    .line 638
    .line 639
    move-result-object v17

    .line 640
    move-object/from16 p2, v9

    .line 641
    .line 642
    move-object/from16 v9, v17

    .line 643
    .line 644
    check-cast v9, Lkotlinx/serialization/KSerializer;

    .line 645
    .line 646
    invoke-virtual {v15, v9, v14}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    check-cast v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;

    .line 651
    .line 652
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-object/from16 v9, p2

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    if-eqz v9, :cond_17

    .line 667
    .line 668
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    check-cast v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;

    .line 673
    .line 674
    new-instance v17, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 675
    .line 676
    sget-object v14, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 677
    .line 678
    iget v15, v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->ns:I

    .line 679
    .line 680
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    invoke-static {v15}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 684
    .line 685
    .line 686
    move-result-object v19

    .line 687
    iget-object v14, v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->title:Ljava/lang/String;

    .line 688
    .line 689
    sget-object v15, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 690
    .line 691
    invoke-static {v14}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v21

    .line 695
    iget-object v15, v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->description:Ljava/lang/String;

    .line 696
    .line 697
    sget-object v18, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 698
    .line 699
    iget-object v9, v9, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 700
    .line 701
    if-nez v9, :cond_16

    .line 702
    .line 703
    move-object/from16 v9, v27

    .line 704
    .line 705
    :cond_16
    move-object/from16 p2, v2

    .line 706
    .line 707
    const/16 v2, 0x14a

    .line 708
    .line 709
    invoke-static {v2, v9}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v23

    .line 713
    iget-object v2, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 714
    .line 715
    const v25, 0xdfc0

    .line 716
    .line 717
    .line 718
    move-object/from16 v24, v2

    .line 719
    .line 720
    move-object/from16 v18, v12

    .line 721
    .line 722
    move-object/from16 v20, v14

    .line 723
    .line 724
    move-object/from16 v22, v15

    .line 725
    .line 726
    invoke-direct/range {v17 .. v25}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    .line 728
    .line 729
    move-object/from16 v9, v17

    .line 730
    .line 731
    move-object/from16 v2, v18

    .line 732
    .line 733
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-object v12, v2

    .line 737
    move-object/from16 v2, p2

    .line 738
    .line 739
    goto :goto_d

    .line 740
    :cond_17
    move-object v2, v12

    .line 741
    new-instance v9, Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .line 745
    .line 746
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v12

    .line 750
    if-nez v12, :cond_1b

    .line 751
    .line 752
    sget-object v12, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 753
    .line 754
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 755
    .line 756
    .line 757
    move-result-object v12

    .line 758
    const/16 v21, 0x0

    .line 759
    .line 760
    const/16 v22, 0x3e

    .line 761
    .line 762
    const-string/jumbo v18, "|"

    .line 763
    .line 764
    .line 765
    const/16 v19, 0x0

    .line 766
    .line 767
    const/16 v20, 0x0

    .line 768
    .line 769
    move-object/from16 v17, p1

    .line 770
    .line 771
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v14

    .line 775
    iput-object v6, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$4:Ljava/lang/String;

    .line 776
    .line 777
    iput-object v8, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$5:Ljava/lang/String;

    .line 778
    .line 779
    iput-object v10, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$6:Ljava/util/List;

    .line 780
    .line 781
    iput-object v1, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$8:Ljava/util/Iterator;

    .line 782
    .line 783
    iput-object v2, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$11:Lorg/wikipedia/dataclient/WikiSite;

    .line 784
    .line 785
    iput-object v13, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$13:Ljava/util/Iterator;

    .line 786
    .line 787
    iput-object v9, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$18:Ljava/util/List;

    .line 788
    .line 789
    iput-object v9, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$19:Ljava/util/List;

    .line 790
    .line 791
    iput-object v4, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$20:Ljava/util/ArrayList;

    .line 792
    .line 793
    iput-boolean v0, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->Z$0:Z

    .line 794
    .line 795
    iput v11, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$0:I

    .line 796
    .line 797
    iput v7, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$1:I

    .line 798
    .line 799
    iput v3, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$2:I

    .line 800
    .line 801
    const/4 v15, 0x0

    .line 802
    iput v15, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$3:I

    .line 803
    .line 804
    const/4 v15, 0x1

    .line 805
    iput v15, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 806
    .line 807
    const/4 v15, 0x2

    .line 808
    move-object/from16 v17, v1

    .line 809
    .line 810
    move-object/from16 v1, p0

    .line 811
    .line 812
    invoke-static {v12, v14, v1, v5, v15}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v12

    .line 816
    move-object/from16 v1, v28

    .line 817
    .line 818
    if-ne v12, v1, :cond_18

    .line 819
    .line 820
    move-object v10, v1

    .line 821
    goto/16 :goto_12

    .line 822
    .line 823
    :cond_18
    move-object v14, v2

    .line 824
    move-object v15, v10

    .line 825
    const/4 v2, 0x0

    .line 826
    move-object v10, v9

    .line 827
    move-object v9, v4

    .line 828
    move v4, v0

    .line 829
    move-object v0, v12

    .line 830
    move-object v12, v10

    .line 831
    :goto_e
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 832
    .line 833
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 834
    .line 835
    if-eqz v0, :cond_19

    .line 836
    .line 837
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 838
    .line 839
    goto :goto_f

    .line 840
    :cond_19
    const/4 v0, 0x0

    .line 841
    :goto_f
    if-nez v0, :cond_1a

    .line 842
    .line 843
    move-object/from16 v0, v26

    .line 844
    .line 845
    :cond_1a
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 846
    .line 847
    .line 848
    move-object v0, v8

    .line 849
    move v8, v4

    .line 850
    move-object v4, v0

    .line 851
    move v0, v11

    .line 852
    move v11, v7

    .line 853
    move v7, v0

    .line 854
    move-object v0, v6

    .line 855
    move-object v6, v9

    .line 856
    move-object v9, v12

    .line 857
    :goto_10
    move-object/from16 v12, v17

    .line 858
    .line 859
    goto :goto_11

    .line 860
    :cond_1b
    move-object/from16 v17, v1

    .line 861
    .line 862
    move-object/from16 v1, v28

    .line 863
    .line 864
    move-object v12, v8

    .line 865
    move v8, v0

    .line 866
    move-object v0, v6

    .line 867
    move-object v6, v4

    .line 868
    move-object v4, v12

    .line 869
    move v12, v11

    .line 870
    move v11, v7

    .line 871
    move v7, v12

    .line 872
    move-object v14, v2

    .line 873
    move-object v15, v10

    .line 874
    const/4 v2, 0x0

    .line 875
    goto :goto_10

    .line 876
    :goto_11
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 877
    .line 878
    .line 879
    move-result v10

    .line 880
    if-nez v10, :cond_1f

    .line 881
    .line 882
    sget-object v10, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 883
    .line 884
    invoke-static {v14}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 885
    .line 886
    .line 887
    move-result-object v10

    .line 888
    move-object/from16 v17, v10

    .line 889
    .line 890
    const/4 v10, 0x0

    .line 891
    move/from16 v18, v11

    .line 892
    .line 893
    const/16 v11, 0x3e

    .line 894
    .line 895
    move/from16 v19, v7

    .line 896
    .line 897
    const-string/jumbo v7, "|"

    .line 898
    .line 899
    .line 900
    move/from16 v20, v8

    .line 901
    .line 902
    const/4 v8, 0x0

    .line 903
    move-object/from16 v21, v9

    .line 904
    .line 905
    const/4 v9, 0x0

    .line 906
    move-object/from16 v28, v1

    .line 907
    .line 908
    move-object/from16 v30, v17

    .line 909
    .line 910
    move/from16 v29, v18

    .line 911
    .line 912
    move-object/from16 v1, v21

    .line 913
    .line 914
    move/from16 v17, v2

    .line 915
    .line 916
    move/from16 v18, v3

    .line 917
    .line 918
    move/from16 v3, v19

    .line 919
    .line 920
    move/from16 v2, v20

    .line 921
    .line 922
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    iput-object v0, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$4:Ljava/lang/String;

    .line 927
    .line 928
    iput-object v4, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$5:Ljava/lang/String;

    .line 929
    .line 930
    iput-object v15, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$6:Ljava/util/List;

    .line 931
    .line 932
    iput-object v12, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$8:Ljava/util/Iterator;

    .line 933
    .line 934
    iput-object v14, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$11:Lorg/wikipedia/dataclient/WikiSite;

    .line 935
    .line 936
    iput-object v13, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$13:Ljava/util/Iterator;

    .line 937
    .line 938
    iput-object v1, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$18:Ljava/util/List;

    .line 939
    .line 940
    iput-object v1, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$19:Ljava/util/List;

    .line 941
    .line 942
    const/4 v9, 0x0

    .line 943
    iput-object v9, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->L$20:Ljava/util/ArrayList;

    .line 944
    .line 945
    iput-boolean v2, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->Z$0:Z

    .line 946
    .line 947
    iput v3, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$0:I

    .line 948
    .line 949
    move/from16 v7, v29

    .line 950
    .line 951
    iput v7, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$1:I

    .line 952
    .line 953
    move/from16 v8, v18

    .line 954
    .line 955
    iput v8, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$2:I

    .line 956
    .line 957
    move/from16 v10, v17

    .line 958
    .line 959
    iput v10, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->I$3:I

    .line 960
    .line 961
    const/4 v10, 0x2

    .line 962
    iput v10, v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 963
    .line 964
    move-object/from16 v11, v30

    .line 965
    .line 966
    const/4 v10, 0x1

    .line 967
    invoke-static {v11, v9, v6, v5, v10}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v6

    .line 971
    move-object/from16 v10, v28

    .line 972
    .line 973
    if-ne v6, v10, :cond_1c

    .line 974
    .line 975
    :goto_12
    return-object v10

    .line 976
    :cond_1c
    move-object v11, v12

    .line 977
    move v12, v3

    .line 978
    move v3, v8

    .line 979
    move-object v8, v11

    .line 980
    move v11, v7

    .line 981
    move-object v7, v14

    .line 982
    move-object v14, v1

    .line 983
    move-object v1, v0

    .line 984
    move-object v0, v6

    .line 985
    move-object v6, v4

    .line 986
    move-object v4, v14

    .line 987
    :goto_13
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 988
    .line 989
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 990
    .line 991
    if-eqz v0, :cond_1d

    .line 992
    .line 993
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 994
    .line 995
    goto :goto_14

    .line 996
    :cond_1d
    move-object v0, v9

    .line 997
    :goto_14
    if-nez v0, :cond_1e

    .line 998
    .line 999
    move-object/from16 v0, v26

    .line 1000
    .line 1001
    :cond_1e
    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1002
    .line 1003
    .line 1004
    move-object v0, v6

    .line 1005
    move-object v6, v1

    .line 1006
    move-object v1, v8

    .line 1007
    move-object v8, v0

    .line 1008
    move-object v14, v7

    .line 1009
    move v7, v11

    .line 1010
    move v11, v12

    .line 1011
    :goto_15
    move v0, v2

    .line 1012
    goto :goto_16

    .line 1013
    :cond_1f
    move-object v10, v1

    .line 1014
    move v2, v8

    .line 1015
    move-object v1, v9

    .line 1016
    const/4 v9, 0x0

    .line 1017
    move v8, v3

    .line 1018
    move v3, v7

    .line 1019
    move v7, v11

    .line 1020
    move-object v6, v0

    .line 1021
    move v11, v3

    .line 1022
    move v3, v8

    .line 1023
    move-object v8, v4

    .line 1024
    move-object v4, v1

    .line 1025
    move-object v1, v12

    .line 1026
    goto :goto_15

    .line 1027
    :goto_16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v4

    .line 1035
    if-eqz v4, :cond_21

    .line 1036
    .line 1037
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1042
    .line 1043
    new-instance v17, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1044
    .line 1045
    sget-object v12, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 1046
    .line 1047
    iget v9, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    .line 1048
    .line 1049
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    invoke-static {v9}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v19

    .line 1056
    iget-object v9, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1057
    .line 1058
    invoke-virtual {v4, v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v20

    .line 1062
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1063
    .line 1064
    iget-object v9, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 1065
    .line 1066
    invoke-static {v9}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v21

    .line 1070
    iget-object v9, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 1071
    .line 1072
    sget-object v12, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 1073
    .line 1074
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    if-nez v4, :cond_20

    .line 1079
    .line 1080
    move-object/from16 v4, v27

    .line 1081
    .line 1082
    :cond_20
    const/16 v12, 0x14a

    .line 1083
    .line 1084
    invoke-static {v12, v4}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v23

    .line 1088
    iget-object v4, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1089
    .line 1090
    const v25, 0xdfc0

    .line 1091
    .line 1092
    .line 1093
    move-object/from16 v24, v4

    .line 1094
    .line 1095
    move-object/from16 v22, v9

    .line 1096
    .line 1097
    move-object/from16 v18, v14

    .line 1098
    .line 1099
    invoke-direct/range {v17 .. v25}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1100
    .line 1101
    .line 1102
    move-object/from16 v4, v17

    .line 1103
    .line 1104
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    const/4 v9, 0x0

    .line 1108
    goto :goto_17

    .line 1109
    :cond_21
    move-object/from16 v18, v14

    .line 1110
    .line 1111
    move-object/from16 p0, v9

    .line 1112
    .line 1113
    move-object v2, v10

    .line 1114
    move-object v10, v15

    .line 1115
    move-object/from16 v12, v18

    .line 1116
    .line 1117
    move-object/from16 v4, v26

    .line 1118
    .line 1119
    move-object/from16 v9, v27

    .line 1120
    .line 1121
    goto/16 :goto_6

    .line 1122
    .line 1123
    :cond_22
    move-object/from16 v17, v1

    .line 1124
    .line 1125
    const/16 v16, 0x2

    .line 1126
    .line 1127
    move-object v3, v5

    .line 1128
    move-object v5, v6

    .line 1129
    move-object v6, v8

    .line 1130
    move-object v7, v10

    .line 1131
    move v8, v11

    .line 1132
    const/16 p0, 0x0

    .line 1133
    .line 1134
    goto/16 :goto_5

    .line 1135
    .line 1136
    :cond_23
    move-object v3, v5

    .line 1137
    move-object v5, v6

    .line 1138
    move-object v6, v7

    .line 1139
    :cond_24
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    const/4 v10, 0x1

    .line 1144
    if-le v0, v10, :cond_25

    .line 1145
    .line 1146
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$$inlined$sortBy$1;

    .line 1147
    .line 1148
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1152
    .line 1153
    .line 1154
    :cond_25
    new-instance v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1155
    .line 1156
    invoke-direct {v0, v3, v5}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    iget-object v1, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 1160
    .line 1161
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1162
    .line 1163
    .line 1164
    return-object v0
.end method
