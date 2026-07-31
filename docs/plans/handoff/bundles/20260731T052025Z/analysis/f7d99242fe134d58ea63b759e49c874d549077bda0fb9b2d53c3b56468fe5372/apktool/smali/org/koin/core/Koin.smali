.class public final Lorg/koin/core/Koin;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

.field public final logger:Lokio/AsyncTimeout$Companion;

.field public final optionRegistry:Lcom/bumptech/glide/load/engine/Jobs;

.field public final resolver:Lorg/jsoup/internal/SoftPool;

.field public final scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 12
    .line 13
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/koin/core/Koin;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/koin/core/Koin;->resolver:Lorg/jsoup/internal/SoftPool;

    .line 19
    .line 20
    new-instance v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;-><init>(Lorg/koin/core/Koin;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 26
    .line 27
    new-instance v0, Lorg/slf4j/event/EventRecodingLogger;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p0, v0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 49
    .line 50
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/bumptech/glide/load/engine/Jobs;

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/Jobs;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lorg/koin/core/Koin;->optionRegistry:Lcom/bumptech/glide/load/engine/Jobs;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final createEagerInstances()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 7
    .line 8
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object p0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 18
    .line 19
    iget-object v4, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Lj$/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x0

    .line 28
    new-array v6, v6, [Lorg/koin/core/instance/SingleInstanceFactory;

    .line 29
    .line 30
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, [Lorg/koin/core/instance/SingleInstanceFactory;

    .line 35
    .line 36
    array-length v6, v5

    .line 37
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 49
    .line 50
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lorg/koin/core/Koin;

    .line 53
    .line 54
    iget-object v7, p0, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 57
    .line 58
    iget-object v8, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 59
    .line 60
    const-class p0, Landroidx/sqlite/SQLite;

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    invoke-direct/range {v6 .. v11}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lokio/AsyncTimeout$Companion;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 86
    .line 87
    invoke-virtual {v4, v6}, Lorg/koin/core/instance/SingleInstanceFactory;->get(Lcom/fsck/k9/mailstore/LocalStore$7;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 96
    .line 97
    sget-object p0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 98
    .line 99
    invoke-static {v2, v3, p0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final loadModules(Ljava/util/List;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lkotlin/collections/ArrayDeque;

    .line 9
    .line 10
    new-instance v3, Lkotlin/collections/ReversedListReadOnly;

    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lkotlin/collections/ArrayDeque;-><init>(Lkotlin/collections/ReversedListReadOnly;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/koin/core/module/Module;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, v3, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v4, Lkotlin/collections/ReversedList;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Lkotlin/collections/ReversedList;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lkotlin/collections/ReversedList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_2
    :goto_1
    move-object v4, v3

    .line 54
    check-cast v4, Lkotlin/collections/ReversedList$listIterator$1;

    .line 55
    .line 56
    iget-object v4, v4, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Ljava/util/ListIterator;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lorg/koin/core/module/Module;

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, v0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 83
    .line 84
    iget-object v3, v2, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_a

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lorg/koin/core/module/Module;

    .line 103
    .line 104
    iget-object v6, v5, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_9

    .line 119
    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    .line 137
    .line 138
    iget-object v9, v7, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 139
    .line 140
    iget-object v9, v2, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v9, Lorg/koin/core/Koin;

    .line 143
    .line 144
    iget-object v9, v9, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v10, v7, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 150
    .line 151
    iget-object v11, v2, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v11, Lj$/util/concurrent/ConcurrentHashMap;

    .line 154
    .line 155
    invoke-virtual {v11, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    .line 160
    .line 161
    sget-object v13, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 162
    .line 163
    if-eqz v12, :cond_8

    .line 164
    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    invoke-virtual {v10}, Lorg/koin/core/definition/BeanDefinition;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v12, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .line 174
    .line 175
    invoke-virtual {v13, v12}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    check-cast v12, Ljava/lang/Iterable;

    .line 183
    .line 184
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-eqz v14, :cond_6

    .line 193
    .line 194
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    move-object v15, v14

    .line 199
    check-cast v15, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 200
    .line 201
    iget-object v15, v15, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 202
    .line 203
    invoke-virtual {v15, v10}, Lorg/koin/core/definition/BeanDefinition;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_5

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    const/4 v14, 0x0

    .line 211
    :goto_3
    check-cast v14, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 212
    .line 213
    if-eqz v14, :cond_8

    .line 214
    .line 215
    invoke-virtual {v10}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-virtual {v3, v12}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_7
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 228
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v2, "Already existing definition for "

    .line 232
    .line 233
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, " at "

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_8
    :goto_4
    invoke-virtual {v10}, Lorg/koin/core/definition/BeanDefinition;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-object v9, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 262
    .line 263
    invoke-virtual {v13, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :cond_9
    iget-object v5, v5, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/LinkedHashSet;

    .line 272
    .line 273
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_4

    .line 282
    .line 283
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 288
    .line 289
    iget-object v7, v6, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 290
    .line 291
    invoke-virtual {v7}, Lorg/koin/core/definition/BeanDefinition;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v3, v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_a
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_b

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Lorg/koin/core/module/Module;

    .line 323
    .line 324
    iget-object v3, v0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/Set;

    .line 325
    .line 326
    iget-object v2, v2, Lorg/koin/core/module/Module;->scopes:Ljava/util/LinkedHashSet;

    .line 327
    .line 328
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_b
    return-void
.end method
