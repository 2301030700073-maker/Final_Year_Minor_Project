.class public final Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile glide:Lcom/bumptech/glide/Glide;

.field public static volatile isInitializing:Z


# instance fields
.field public final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final connectivityMonitorFactory:Lokio/AsyncTimeout$Companion;

.field public final glideContext:Lcom/bumptech/glide/GlideContext;

.field public final managers:Ljava/util/ArrayList;

.field public final memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

.field public final requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/LruResourceCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lokio/AsyncTimeout$Companion;ILcom/bumptech/glide/GlideBuilder$1;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;Lcom/bumptech/glide/GlideExperiments;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lokio/AsyncTimeout$Companion;

    .line 20
    .line 21
    new-instance p4, Landroidx/compose/runtime/Latch;

    .line 22
    .line 23
    invoke-direct {p4, p0, p12, p13}, Landroidx/compose/runtime/Latch;-><init>(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p5

    .line 27
    new-instance p5, Landroidx/transition/Transition$1;

    .line 28
    .line 29
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object p6, p9

    .line 33
    move-object p9, p2

    .line 34
    move-object p2, p1

    .line 35
    new-instance p1, Lcom/bumptech/glide/GlideContext;

    .line 36
    .line 37
    move-object p7, p11

    .line 38
    move p11, p8

    .line 39
    move-object p8, p7

    .line 40
    move-object p7, p10

    .line 41
    move-object p10, p14

    .line 42
    invoke-direct/range {p1 .. p11}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;Landroidx/compose/runtime/Latch;Landroidx/transition/Transition$1;Lcom/bumptech/glide/GlideBuilder$1;Landroidx/collection/ArrayMap;Ljava/util/List;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/GlideExperiments;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 46
    .line 47
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 8

    .line 1
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Glide"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    const-class v5, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 15
    .line 16
    new-array v6, v3, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v7, Landroid/content/Context;

    .line 19
    .line 20
    aput-object v7, v6, v2

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-array v6, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v0, v6, v2

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    move-object v4, v0

    .line 41
    goto :goto_4

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :catch_3
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :goto_0
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 51
    .line 52
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :goto_1
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 57
    .line 58
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-object v4

    .line 62
    :goto_2
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 63
    .line 64
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-object v4

    .line 68
    :goto_3
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 69
    .line 70
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-object v4

    .line 74
    :catch_4
    const/4 v0, 0x5

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_4
    const-class v0, Lcom/bumptech/glide/Glide;

    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 90
    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    sget-boolean v1, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 94
    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    sput-boolean v3, Lcom/bumptech/glide/Glide;->isInitializing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    :try_start_2
    invoke-static {p0, v4}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    sput-boolean v2, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 107
    .line 108
    throw p0

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v1, "Glide has been called recursively, this is probably an internal library error!"

    .line 112
    .line 113
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_2
    :goto_5
    monitor-exit v0

    .line 118
    goto :goto_6

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    throw p0

    .line 122
    :cond_3
    :goto_6
    sget-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 123
    .line 124
    return-object p0
.end method

.method public static initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 31

    .line 1
    new-instance v10, Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v10, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/bumptech/glide/load/engine/Jobs;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/Jobs;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v9, Lcom/bumptech/glide/GlideBuilder$1;

    .line 14
    .line 15
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/module/AppGlideModule;->isManifestParsingEnabled()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "Got app info metadata: "

    .line 30
    .line 31
    const-string v5, "ManifestParser"

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    const-string v7, "Loading Glide modules"

    .line 41
    .line 42
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x2

    .line 52
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    const/16 v14, 0x80

    .line 61
    .line 62
    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    if-eqz v11, :cond_6

    .line 67
    .line 68
    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 69
    .line 70
    if-nez v13, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-eqz v13, :cond_3

    .line 78
    .line 79
    new-instance v13, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    :goto_0
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_5

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    check-cast v13, Ljava/lang/String;

    .line 120
    .line 121
    const-string v14, "GlideModule"

    .line 122
    .line 123
    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-virtual {v15, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-nez v14, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-static {v13}, Landroidx/sqlite/SQLite;->parseModule(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v7

    .line 140
    :cond_5
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    const-string v0, "Finished loading Glide modules"

    .line 147
    .line 148
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    :goto_2
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    const-string v0, "Got null app info metadata"

    .line 159
    .line 160
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :goto_3
    const/4 v11, 0x6

    .line 165
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-eqz v11, :cond_7

    .line 170
    .line 171
    const-string v11, "Failed to parse glide modules"

    .line 172
    .line 173
    invoke-static {v5, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_4
    if-eqz p1, :cond_9

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_9

    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    .line 189
    .line 190
    .line 191
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    throw v0

    .line 207
    :cond_9
    :goto_5
    const-string v0, "Glide"

    .line 208
    .line 209
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_b

    .line 214
    .line 215
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-nez v5, :cond_a

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    throw v0

    .line 231
    :cond_b
    :goto_6
    if-eqz p1, :cond_c

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_1a

    .line 246
    .line 247
    if-eqz p1, :cond_d

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/module/AppGlideModule;->applyOptions()V

    .line 250
    .line 251
    .line 252
    :cond_d
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    sget v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 258
    .line 259
    const/4 v11, 0x4

    .line 260
    if-nez v5, :cond_e

    .line 261
    .line 262
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    sput v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 275
    .line 276
    :cond_e
    sget v14, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 277
    .line 278
    const-string v5, "source"

    .line 279
    .line 280
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-nez v13, :cond_19

    .line 285
    .line 286
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 287
    .line 288
    new-instance v19, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 289
    .line 290
    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 291
    .line 292
    .line 293
    new-instance v15, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 294
    .line 295
    invoke-direct {v15, v0, v5, v1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    const-wide/16 v16, 0x0

    .line 299
    .line 300
    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 301
    .line 302
    move-object/from16 v20, v15

    .line 303
    .line 304
    move v15, v14

    .line 305
    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 309
    .line 310
    invoke-direct {v0, v13}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 311
    .line 312
    .line 313
    new-instance v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    .line 314
    .line 315
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v13, "disk-cache"

    .line 319
    .line 320
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    if-nez v14, :cond_18

    .line 325
    .line 326
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 327
    .line 328
    new-instance v21, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 329
    .line 330
    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 331
    .line 332
    .line 333
    new-instance v14, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 334
    .line 335
    const/4 v8, 0x1

    .line 336
    invoke-direct {v14, v5, v13, v8}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/String;Z)V

    .line 337
    .line 338
    .line 339
    const-wide/16 v18, 0x0

    .line 340
    .line 341
    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 342
    .line 343
    move/from16 v17, v8

    .line 344
    .line 345
    move/from16 v16, v8

    .line 346
    .line 347
    move-object/from16 v22, v14

    .line 348
    .line 349
    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 350
    .line 351
    .line 352
    new-instance v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 353
    .line 354
    invoke-direct {v5, v15}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 355
    .line 356
    .line 357
    sget v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 358
    .line 359
    if-nez v8, :cond_f

    .line 360
    .line 361
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    .line 370
    .line 371
    .line 372
    move-result v8

    .line 373
    sput v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 374
    .line 375
    :cond_f
    sget v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    .line 376
    .line 377
    if-lt v8, v11, :cond_10

    .line 378
    .line 379
    const/4 v14, 0x2

    .line 380
    goto :goto_7

    .line 381
    :cond_10
    move v14, v3

    .line 382
    :goto_7
    new-instance v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    .line 383
    .line 384
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v13, "animation"

    .line 388
    .line 389
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v15

    .line 393
    if-nez v15, :cond_17

    .line 394
    .line 395
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 396
    .line 397
    new-instance v19, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 398
    .line 399
    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 400
    .line 401
    .line 402
    move/from16 p0, v11

    .line 403
    .line 404
    new-instance v11, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 405
    .line 406
    invoke-direct {v11, v8, v13, v3}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/String;Z)V

    .line 407
    .line 408
    .line 409
    const-wide/16 v16, 0x0

    .line 410
    .line 411
    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 412
    .line 413
    move-object v13, v15

    .line 414
    move v15, v14

    .line 415
    move-object/from16 v20, v11

    .line 416
    .line 417
    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 418
    .line 419
    .line 420
    new-instance v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 421
    .line 422
    invoke-direct {v8, v13}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 423
    .line 424
    .line 425
    new-instance v11, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .line 426
    .line 427
    invoke-direct {v11, v4}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    new-instance v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 431
    .line 432
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    iget-object v14, v11, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    .line 436
    .line 437
    iget v15, v11, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 438
    .line 439
    iget-object v3, v11, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 440
    .line 441
    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 442
    .line 443
    .line 444
    move-result v17

    .line 445
    if-eqz v17, :cond_11

    .line 446
    .line 447
    const/high16 v17, 0x200000

    .line 448
    .line 449
    :goto_8
    move/from16 v1, v17

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_11
    const/high16 v17, 0x400000

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :goto_9
    iput v1, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 456
    .line 457
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 458
    .line 459
    .line 460
    move-result v17

    .line 461
    const/high16 v19, 0x100000

    .line 462
    .line 463
    mul-int v6, v17, v19

    .line 464
    .line 465
    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 466
    .line 467
    .line 468
    move-result v17

    .line 469
    int-to-float v6, v6

    .line 470
    if-eqz v17, :cond_12

    .line 471
    .line 472
    const v17, 0x3ea8f5c3    # 0.33f

    .line 473
    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_12
    const v17, 0x3ecccccd    # 0.4f

    .line 477
    .line 478
    .line 479
    :goto_a
    mul-float v6, v6, v17

    .line 480
    .line 481
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    iget-object v11, v11, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Landroidx/work/Configuration$Builder;

    .line 486
    .line 487
    iget-object v11, v11, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v11, Landroid/util/DisplayMetrics;

    .line 490
    .line 491
    move-object/from16 v17, v0

    .line 492
    .line 493
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 494
    .line 495
    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 496
    .line 497
    mul-int/2addr v0, v11

    .line 498
    mul-int/lit8 v0, v0, 0x4

    .line 499
    .line 500
    int-to-float v0, v0

    .line 501
    mul-float v11, v0, v15

    .line 502
    .line 503
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    const/high16 v19, 0x40000000    # 2.0f

    .line 508
    .line 509
    mul-float v0, v0, v19

    .line 510
    .line 511
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    move-object/from16 v21, v3

    .line 516
    .line 517
    sub-int v3, v6, v1

    .line 518
    .line 519
    move-object/from16 p0, v5

    .line 520
    .line 521
    add-int v5, v0, v11

    .line 522
    .line 523
    if-gt v5, v3, :cond_13

    .line 524
    .line 525
    iput v0, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 526
    .line 527
    iput v11, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 528
    .line 529
    goto :goto_b

    .line 530
    :cond_13
    int-to-float v0, v3

    .line 531
    add-float v3, v15, v19

    .line 532
    .line 533
    div-float/2addr v0, v3

    .line 534
    mul-float v19, v19, v0

    .line 535
    .line 536
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    iput v3, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 541
    .line 542
    mul-float/2addr v0, v15

    .line 543
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    iput v0, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 548
    .line 549
    :goto_b
    const-string v0, "MemorySizeCalculator"

    .line 550
    .line 551
    const/4 v3, 0x3

    .line 552
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    if-eqz v3, :cond_15

    .line 557
    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    const-string v11, "Calculation complete, Calculated memory cache size: "

    .line 561
    .line 562
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    iget v11, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 566
    .line 567
    move-object/from16 v20, v8

    .line 568
    .line 569
    move-object/from16 v22, v9

    .line 570
    .line 571
    int-to-long v8, v11

    .line 572
    invoke-static {v14, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v8, ", pool size: "

    .line 580
    .line 581
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    iget v8, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 585
    .line 586
    int-to-long v8, v8

    .line 587
    invoke-static {v14, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v8

    .line 591
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v8, ", byte array size: "

    .line 595
    .line 596
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    int-to-long v8, v1

    .line 600
    invoke-static {v14, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v1, ", memory class limited? "

    .line 608
    .line 609
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    if-le v5, v6, :cond_14

    .line 613
    .line 614
    const/4 v1, 0x1

    .line 615
    goto :goto_c

    .line 616
    :cond_14
    const/4 v1, 0x0

    .line 617
    :goto_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v1, ", max size: "

    .line 621
    .line 622
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    int-to-long v5, v6

    .line 626
    invoke-static {v14, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v1, ", memoryClass: "

    .line 634
    .line 635
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    const-string v1, ", isLowMemoryDevice: "

    .line 646
    .line 647
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    goto :goto_d

    .line 665
    :cond_15
    move-object/from16 v20, v8

    .line 666
    .line 667
    move-object/from16 v22, v9

    .line 668
    .line 669
    :goto_d
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 670
    .line 671
    const/16 v1, 0x10

    .line 672
    .line 673
    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 674
    .line 675
    .line 676
    iget v1, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 677
    .line 678
    if-lez v1, :cond_16

    .line 679
    .line 680
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    .line 681
    .line 682
    int-to-long v5, v1

    .line 683
    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    .line 684
    .line 685
    .line 686
    goto :goto_e

    .line 687
    :cond_16
    new-instance v3, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 688
    .line 689
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 690
    .line 691
    .line 692
    :goto_e
    new-instance v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 693
    .line 694
    iget v1, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 695
    .line 696
    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    .line 697
    .line 698
    .line 699
    new-instance v15, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 700
    .line 701
    iget v1, v13, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 702
    .line 703
    int-to-long v8, v1

    .line 704
    invoke-direct {v15, v8, v9}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 705
    .line 706
    .line 707
    new-instance v1, Landroidx/work/Configuration$Builder;

    .line 708
    .line 709
    invoke-direct {v1, v4}, Landroidx/work/Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    .line 711
    .line 712
    new-instance v14, Lcom/bumptech/glide/load/engine/Engine;

    .line 713
    .line 714
    new-instance v6, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 715
    .line 716
    new-instance v23, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 717
    .line 718
    new-instance v29, Ljava/util/concurrent/SynchronousQueue;

    .line 719
    .line 720
    invoke-direct/range {v29 .. v29}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 721
    .line 722
    .line 723
    new-instance v8, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 724
    .line 725
    new-instance v9, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    .line 726
    .line 727
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string v11, "source-unlimited"

    .line 731
    .line 732
    const/4 v13, 0x0

    .line 733
    invoke-direct {v8, v9, v11, v13}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/String;Z)V

    .line 734
    .line 735
    .line 736
    const/16 v24, 0x0

    .line 737
    .line 738
    const v25, 0x7fffffff

    .line 739
    .line 740
    .line 741
    const-wide/16 v26, 0x2710

    .line 742
    .line 743
    sget-object v28, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 744
    .line 745
    move-object/from16 v30, v8

    .line 746
    .line 747
    invoke-direct/range {v23 .. v30}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 748
    .line 749
    .line 750
    move-object/from16 v8, v23

    .line 751
    .line 752
    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 753
    .line 754
    .line 755
    move-object/from16 v16, v1

    .line 756
    .line 757
    move-object/from16 v19, v6

    .line 758
    .line 759
    move-object/from16 v18, v17

    .line 760
    .line 761
    move-object/from16 v17, p0

    .line 762
    .line 763
    invoke-direct/range {v14 .. v20}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/LruResourceCache;Landroidx/work/Configuration$Builder;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)V

    .line 764
    .line 765
    .line 766
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 767
    .line 768
    move-object v1, v14

    .line 769
    new-instance v14, Lcom/bumptech/glide/GlideExperiments;

    .line 770
    .line 771
    invoke-direct {v14, v2}, Lcom/bumptech/glide/GlideExperiments;-><init>(Lcom/bumptech/glide/load/engine/Jobs;)V

    .line 772
    .line 773
    .line 774
    new-instance v6, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 775
    .line 776
    invoke-direct {v6, v7}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 777
    .line 778
    .line 779
    move-object v7, v0

    .line 780
    new-instance v0, Lcom/bumptech/glide/Glide;

    .line 781
    .line 782
    const/4 v8, 0x4

    .line 783
    move-object/from16 v13, p1

    .line 784
    .line 785
    move-object v2, v1

    .line 786
    move-object v1, v4

    .line 787
    move-object/from16 v9, v22

    .line 788
    .line 789
    move-object v4, v3

    .line 790
    move-object v3, v15

    .line 791
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/LruResourceCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lokio/AsyncTimeout$Companion;ILcom/bumptech/glide/GlideBuilder$1;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;Lcom/bumptech/glide/GlideExperiments;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 795
    .line 796
    .line 797
    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 798
    .line 799
    return-void

    .line 800
    :cond_17
    const-string v0, "Name must be non-null and non-empty, but given: animation"

    .line 801
    .line 802
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    :cond_18
    const-string v0, "Name must be non-null and non-empty, but given: disk-cache"

    .line 807
    .line 808
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :cond_19
    const-string v0, "Name must be non-null and non-empty, but given: source"

    .line 813
    .line 814
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    return-void

    .line 818
    :cond_1a
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    throw v0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->clearMemory()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bumptech/glide/RequestManager;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->trimMemory(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->trimMemory(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
