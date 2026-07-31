.class public final Lorg/jsoup/internal/SoftPool;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lokio/Socket;
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final initializer:Ljava/lang/Object;

.field public threadLocalStack:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 52
    iput-object v0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/jetbrains/compose/resources/ResourceCaches;->caches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    iput-object p2, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    iput-object p3, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Latch;)V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 12
    .line 13
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lokio/Socket;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lokio/Socket;->getSink()Lokio/Sink;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-wide/16 v4, -0x1

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    move-object v2, p1

    .line 25
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Landroidx/compose/runtime/Latch;Lokio/Sink;JZ)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v7, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 31
    .line 32
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lokio/Socket;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lokio/Socket;->getSource()Lokio/Source;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const-wide/16 v10, -0x1

    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    move-object v8, v2

    .line 44
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Landroidx/compose/runtime/Latch;Lokio/Source;JZ)V

    .line 45
    .line 46
    .line 47
    iput-object v7, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 57
    new-instance p1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    invoke-direct {v1, p1, v0}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    iput-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 68
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0

    const/16 p2, 0x8

    iput p2, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 73
    iput-object p3, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 60
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 61
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public borrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/util/function/Supplier;

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public getSink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 4
    .line 5
    return-object p0
.end method

.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lorg/jsoup/safety/Cleaner;

    .line 9
    .line 10
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    if-eqz p2, :cond_5

    .line 13
    .line 14
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 15
    .line 16
    iget-object p2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 17
    .line 18
    iget-object v0, v1, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/jsoup/safety/Safelist;

    .line 21
    .line 22
    iget-object v2, p2, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-static {v2}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_7

    .line 35
    .line 36
    iget-object v0, v1, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lorg/jsoup/safety/Safelist;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->shallowClone()Lorg/jsoup/nodes/Element;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object p2, p2, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, v1, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->hasAttributes()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v4, Lorg/jsoup/nodes/Attributes$1;

    .line 68
    .line 69
    invoke-direct {v4, v3}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes$1;->remove()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v3, v1, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 86
    .line 87
    iget v3, v3, Lorg/jsoup/nodes/Attributes;->size:I

    .line 88
    .line 89
    if-nez v3, :cond_1

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    iput-object v3, v1, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 93
    .line 94
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v4, Lorg/jsoup/nodes/Attributes$1;

    .line 102
    .line 103
    invoke-direct {v4, v3}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lorg/jsoup/nodes/Attribute;

    .line 117
    .line 118
    invoke-virtual {v0, p2, p1, v3}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object v5, v3, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v6, v3, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v6}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v2, v5, v6}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v3, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v0, p2}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const-string v0, "a"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    const-string v0, "rel"

    .line 154
    .line 155
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string v4, "nofollow"

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    const-string v3, "href"

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_4

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_4

    .line 188
    .line 189
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_4

    .line 194
    .line 195
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    const/4 v0, -0x1

    .line 200
    if-eq p1, v0, :cond_4

    .line 201
    .line 202
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 203
    .line 204
    .line 205
    :cond_4
    invoke-virtual {v2, p2}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 220
    .line 221
    .line 222
    iput-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_5
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 226
    .line 227
    if-eqz p2, :cond_6

    .line 228
    .line 229
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 230
    .line 231
    new-instance p2, Lorg/jsoup/nodes/TextNode;

    .line 232
    .line 233
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 243
    .line 244
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_6
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    .line 249
    .line 250
    if-eqz p2, :cond_7

    .line 251
    .line 252
    iget-object p2, v1, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p2, Lorg/jsoup/safety/Safelist;

    .line 255
    .line 256
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 257
    .line 258
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iget-object p2, p2, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/HashSet;

    .line 263
    .line 264
    invoke-static {v0}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_7

    .line 273
    .line 274
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 275
    .line 276
    new-instance p2, Lorg/jsoup/nodes/DataNode;

    .line 277
    .line 278
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 288
    .line 289
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_2
    return-void

    .line 293
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p0, Ljava/lang/Appendable;

    .line 296
    .line 297
    check-cast v1, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 298
    .line 299
    invoke-virtual {p1, p0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :catch_0
    move-exception p0

    .line 304
    new-instance p1, Lorg/jsoup/SerializationException;

    .line 305
    .line 306
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 20
    .line 21
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 25
    .line 26
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v7, v1

    .line 29
    check-cast v7, Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 30
    .line 31
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v8, v1

    .line 34
    check-cast v8, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    .line 35
    .line 36
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v9, v1

    .line 39
    check-cast v9, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x2

    .line 43
    move-object v3, p1

    .line 44
    invoke-direct/range {v2 .. v9}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;IILorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;)V

    .line 45
    .line 46
    .line 47
    iget p1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 48
    .line 49
    iput p1, v2, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 50
    .line 51
    iput-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object p1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 70
    .line 71
    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getState()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 76
    .line 77
    :goto_0
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 78
    .line 79
    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    packed-switch v2, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    packed-switch v1, :pswitch_data_1

    .line 87
    .line 88
    .line 89
    const-string p0, "null"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_0
    const-string p0, "T_END_OF_STREAM"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_1
    const-string p0, "T_BODY"

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_2
    const-string p0, "T_END_BODYPART"

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    const-string p0, "T_START_BODYPART"

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_4
    const-string p0, "T_EPILOGUE"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    const-string p0, "T_PREAMBLE"

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_6
    const-string p0, "T_END_MULTIPART"

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_7
    const-string p0, "T_START_MULTIPART"

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_8
    const-string p0, "T_END_HEADER"

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_9
    const-string p0, "T_FIELD"

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_a
    const-string p0, "T_START_HEADER"

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_b
    const-string p0, "T_RAW_ENTITY"

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_c
    const-string p0, "T_END_MESSAGE"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_d
    const-string p0, "T_START_MESSAGE"

    .line 132
    .line 133
    :goto_1
    const-string p1, "Invalid state: "

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :pswitch_e
    return-void

    .line 143
    :pswitch_f
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 146
    .line 147
    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getBodyDescriptor()Lcom/eygraber/uri/Uri$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 154
    .line 155
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v3, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 162
    .line 163
    invoke-interface {v3, v1, v2}, Lorg/apache/james/mime4j/parser/ContentHandler;->body(Lcom/eygraber/uri/Uri$Builder;Ljava/io/InputStream;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :pswitch_10
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 174
    .line 175
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endBodyPart()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_2

    .line 179
    .line 180
    :pswitch_11
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 183
    .line 184
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startBodyPart()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :pswitch_12
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 192
    .line 193
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 196
    .line 197
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :pswitch_13
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 208
    .line 209
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 212
    .line 213
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_14
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 224
    .line 225
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMultipart()V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :pswitch_15
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 232
    .line 233
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 236
    .line 237
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getBodyDescriptor()Lcom/eygraber/uri/Uri$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMultipart(Lcom/eygraber/uri/Uri$Builder;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_16
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 248
    .line 249
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endHeader()V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :pswitch_17
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 256
    .line 257
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 260
    .line 261
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getField()Lorg/apache/james/mime4j/stream/Field;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/ContentHandler;->field(Lorg/apache/james/mime4j/stream/Field;)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :pswitch_18
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 272
    .line 273
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startHeader()V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :pswitch_19
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 280
    .line 281
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v2, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 284
    .line 285
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    .line 286
    .line 287
    .line 288
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->raw()V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :pswitch_1a
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 295
    .line 296
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMessage()V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :pswitch_1b
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v1, Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 303
    .line 304
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMessage()V

    .line 305
    .line 306
    .line 307
    :goto_2
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 308
    .line 309
    const/16 v2, 0xe

    .line 310
    .line 311
    if-eq v1, v2, :cond_7

    .line 312
    .line 313
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 316
    .line 317
    if-eqz v1, :cond_7

    .line 318
    .line 319
    :goto_3
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 322
    .line 323
    if-eqz v1, :cond_6

    .line 324
    .line 325
    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 335
    .line 336
    :cond_0
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 339
    .line 340
    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getState()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    iput v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 345
    .line 346
    if-eq v1, v2, :cond_1

    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 355
    .line 356
    instance-of v3, v1, Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 357
    .line 358
    if-eqz v3, :cond_4

    .line 359
    .line 360
    check-cast v1, Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 361
    .line 362
    iget-object v3, v1, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 363
    .line 364
    const/4 v4, 0x0

    .line 365
    iput v4, v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 366
    .line 367
    iput v4, v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 368
    .line 369
    const/4 v5, 0x1

    .line 370
    iput-boolean v5, v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    .line 371
    .line 372
    invoke-static {}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    iget-object v6, v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 377
    .line 378
    invoke-virtual {v5, v4, v6}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 379
    .line 380
    .line 381
    iget-object v3, v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->shiftTable:[I

    .line 382
    .line 383
    if-nez v3, :cond_2

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_2
    sget-boolean v6, Lorg/apache/james/mime4j/util/BufferRecycler;->ENABLED:Z

    .line 387
    .line 388
    if-eqz v6, :cond_3

    .line 389
    .line 390
    iget-object v5, v5, Lorg/apache/james/mime4j/util/BufferRecycler;->_intBuffers:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    :cond_3
    :goto_4
    invoke-static {}, Lorg/apache/james/mime4j/stream/MimeEntity;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    iget-object v1, v1, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    .line 400
    .line 401
    invoke-virtual {v3, v4, v1}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 402
    .line 403
    .line 404
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_5

    .line 409
    .line 410
    const/4 v1, 0x0

    .line 411
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 419
    .line 420
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 421
    .line 422
    iget v3, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 423
    .line 424
    invoke-interface {v1, v3}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_6
    iput v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_7
    const-string p0, "No more tokens are available."

    .line 433
    .line 434
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    nop

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :pswitch_data_1
    .packed-switch 0x1
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

.method public release(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    if-ge p0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lorg/jsoup/safety/Cleaner;

    .line 13
    .line 14
    iget-object p2, v1, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lorg/jsoup/safety/Safelist;

    .line 17
    .line 18
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p2, p2, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 41
    .line 42
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 43
    .line 44
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "#text"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    :try_start_0
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ljava/lang/Appendable;

    .line 62
    .line 63
    check-cast v1, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 64
    .line 65
    invoke-virtual {p1, p0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Lorg/jsoup/SerializationException;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/internal/SoftPool;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "; "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
