.class public final Lcom/fsck/k9/controller/PendingCommandSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;


# instance fields
.field public final adapters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/controller/PendingCommandSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/controller/PendingCommandSerializer;->INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/squareup/moshi/Moshi;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/squareup/moshi/Moshi;-><init>(Lokhttp3/Headers$Builder;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "move_or_copy"

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "move_and_mark_as_read"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "append"

    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "replace"

    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptySpam;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "empty_spam"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "empty_trash"

    .line 83
    .line 84
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "expunge"

    .line 94
    .line 95
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "mark_all_as_read"

    .line 105
    .line 106
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "set_flag"

    .line 116
    .line 117
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-class v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "delete"

    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/fsck/k9/controller/PendingCommandSerializer;->adapters:Ljava/util/Map;

    .line 136
    .line 137
    return-void
.end method
