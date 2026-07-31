.class public Lokio/PriorityQueue;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ldagger/internal/Provider;
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public array:Ljava/lang/Object;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    const/16 v0, 0x64

    .line 33
    iput v0, p0, Lokio/PriorityQueue;->size:I

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 41
    iput p1, p0, Lokio/PriorityQueue;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 26
    iput p2, p0, Lokio/PriorityQueue;->$r8$classId:I

    iput-object p3, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    iput p1, p0, Lokio/PriorityQueue;->size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/io/Serializable;I)V
    .locals 0

    .line 27
    iput p3, p0, Lokio/PriorityQueue;->$r8$classId:I

    iput p1, p0, Lokio/PriorityQueue;->size:I

    iput-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    const/4 v0, 0x0

    .line 40
    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lokio/PriorityQueue;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 8
    .line 9
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 22
    .line 23
    iput p2, p0, Lokio/PriorityQueue;->size:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/ui/node/RulerTrackingMap;)V
    .locals 0

    const/16 p1, 0x12

    iput p1, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomConnectionManager;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 34
    iput-object p1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 35
    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lokio/PriorityQueue;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lokio/PriorityQueue;->$r8$classId:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    return-void
.end method

.method public static final access$readObject(Lokio/PriorityQueue;Lkotlin/DeepRecursiveScopeImpl;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    instance-of v1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 11
    .line 12
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 25
    .line 26
    invoke-direct {v1, p0, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lokio/PriorityQueue;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x6

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x7

    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x1

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-ne v2, v8, :cond_3

    .line 42
    .line 43
    iget p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->I$0:I

    .line 44
    .line 45
    iget-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    iget-object v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Lokio/PriorityQueue;

    .line 50
    .line 51
    iget-object v9, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 57
    .line 58
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v7, :cond_2

    .line 70
    .line 71
    if-ne p1, v6, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    iget-object p0, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 77
    .line 78
    const-string p1, "Expected end of the object or comma"

    .line 79
    .line 80
    invoke-static {p0, p1, v5, v3, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    throw v3

    .line 84
    :cond_2
    move v5, p0

    .line 85
    move-object p0, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 88
    .line 89
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v3

    .line 93
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eq v2, v7, :cond_8

    .line 105
    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    move-object v9, p1

    .line 112
    move p1, p2

    .line 113
    :goto_1
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 116
    .line 117
    invoke-virtual {p2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v2, 0x5

    .line 128
    invoke-virtual {p2, v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 129
    .line 130
    .line 131
    iput-object v9, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    .line 132
    .line 133
    iput-object p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Lokio/PriorityQueue;

    .line 134
    .line 135
    iput-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    iput-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    .line 138
    .line 139
    iput v5, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->I$0:I

    .line 140
    .line 141
    iput v8, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iput-object v1, v9, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_5
    move-object v2, p0

    .line 152
    :goto_2
    iget-object p0, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 155
    .line 156
    if-ne p1, v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0, v6}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    if-eq p1, v7, :cond_7

    .line 163
    .line 164
    :goto_3
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    .line 165
    .line 166
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_7
    const-string p1, "object"

    .line 171
    .line 172
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v3

    .line 176
    :cond_8
    const-string p0, "Unexpected leading comma"

    .line 177
    .line 178
    invoke-static {v0, p0, v5, v3, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    throw v3
.end method

.method public static deleteDatabaseFile(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ":memory:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-gt v3, v0, :cond_5

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    move v5, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v5, v0

    .line 25
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v6, 0x20

    .line 30
    .line 31
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-gtz v5, :cond_1

    .line 36
    .line 37
    move v5, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v5, v2

    .line 40
    :goto_2
    if-nez v4, :cond_3

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    move v4, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-nez v5, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    const-string v0, "deleting the database file: "

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "SupportSQLite"

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    const-string v0, "delete failed: "

    .line 93
    .line 94
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 4

    .line 82
    invoke-virtual {p0, p1, p2}, Lokio/PriorityQueue;->contains(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget v0, p0, Lokio/PriorityQueue;->size:I

    .line 84
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast v1, [J

    .line 85
    array-length v2, v1

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 86
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 87
    iput-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 88
    :cond_0
    aput-wide p1, v1, v0

    .line 89
    iget p1, p0, Lokio/PriorityQueue;->size:I

    if-lt v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokio/PriorityQueue;->size:I

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "segments"

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget v5, p0, Lokio/PriorityQueue;->size:I

    .line 14
    .line 15
    add-int/lit8 v5, v5, 0x1

    .line 16
    .line 17
    array-length v6, v0

    .line 18
    if-ne v5, v6, :cond_4

    .line 19
    .line 20
    array-length v0, v0

    .line 21
    mul-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    new-array v5, v0, [Ljava/lang/String;

    .line 24
    .line 25
    move v6, v3

    .line 26
    :goto_0
    if-ge v6, v0, :cond_0

    .line 27
    .line 28
    aput-object v2, v5, v6

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, [Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/16 v2, 0xe

    .line 40
    .line 41
    invoke-static {v0, v5, v3, v3, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 42
    .line 43
    .line 44
    iput-object v5, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_2
    const/4 v0, 0x4

    .line 52
    new-array v5, v0, [Ljava/lang/String;

    .line 53
    .line 54
    :goto_1
    if-ge v3, v0, :cond_3

    .line 55
    .line 56
    aput-object v2, v5, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iput-object v5, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 62
    .line 63
    :cond_4
    :goto_2
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, [Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget v1, p0, Lokio/PriorityQueue;->size:I

    .line 70
    .line 71
    add-int/lit8 v2, v1, 0x1

    .line 72
    .line 73
    iput v2, p0, Lokio/PriorityQueue;->size:I

    .line 74
    .line 75
    aput-object p1, v0, v1

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public contains(J)Z
    .locals 6

    .line 1
    iget v0, p0, Lokio/PriorityQueue;->size:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, [J

    .line 10
    .line 11
    aget-wide v4, v3, v2

    .line 12
    .line 13
    cmp-long v3, v4, p1

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1
.end method

.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 11

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v3, v1

    .line 6
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 7
    .line 8
    iget-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 9
    .line 10
    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 11
    .line 12
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v8, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iput-object p0, v8, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iput-object p0, v8, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v2, v8, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iput-object p0, v8, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iget-object v2, v8, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v8, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    iput-object p0, v8, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iget-object v2, v8, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v2, -0x1

    .line 77
    iget-object v5, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    .line 79
    invoke-virtual {v8, v2, p0, v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const/4 v2, -0x2

    .line 88
    iget-object v5, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    .line 90
    invoke-virtual {v8, v2, p0, v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/String;

    .line 94
    .line 95
    if-nez p0, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    const/4 v2, -0x3

    .line 99
    iget-object v5, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 100
    .line 101
    invoke-virtual {v8, v2, p0, v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 105
    .line 106
    const/4 v9, 0x1

    .line 107
    const/4 v10, 0x0

    .line 108
    if-nez p0, :cond_7

    .line 109
    .line 110
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 111
    .line 112
    if-eqz p0, :cond_f

    .line 113
    .line 114
    :cond_7
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    .line 116
    iget v2, v8, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 117
    .line 118
    invoke-virtual {p0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    move-object v7, p0

    .line 123
    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 124
    .line 125
    iget-boolean p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    new-instance v2, Landroidx/appcompat/app/AlertController$AlertParams$1;

    .line 130
    .line 131
    iget v5, v8, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 132
    .line 133
    iget-object v6, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    iget-boolean p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 140
    .line 141
    if-eqz p0, :cond_9

    .line 142
    .line 143
    iget p0, v8, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    iget p0, v8, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 147
    .line 148
    :goto_4
    iget-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 149
    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_a
    new-instance v2, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    .line 154
    .line 155
    const v5, 0x1020014

    .line 156
    .line 157
    .line 158
    iget-object v6, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 159
    .line 160
    invoke-direct {v2, v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :goto_5
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 164
    .line 165
    iget p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 166
    .line 167
    iput p0, v8, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 168
    .line 169
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    .line 171
    if-eqz p0, :cond_b

    .line 172
    .line 173
    new-instance p0, Landroidx/appcompat/app/AlertController$AlertParams$3;

    .line 174
    .line 175
    invoke-direct {p0, v3, v8}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_b
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;

    .line 183
    .line 184
    if-eqz p0, :cond_c

    .line 185
    .line 186
    new-instance p0, Landroidx/appcompat/app/AlertController$AlertParams$4;

    .line 187
    .line 188
    invoke-direct {p0, v3, v7, v8}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    :goto_6
    iget-boolean p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 195
    .line 196
    if-eqz p0, :cond_d

    .line 197
    .line 198
    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_d
    iget-boolean p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 203
    .line 204
    if-eqz p0, :cond_e

    .line 205
    .line 206
    const/4 p0, 0x2

    .line 207
    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 208
    .line 209
    .line 210
    :cond_e
    :goto_7
    iput-object v7, v8, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 211
    .line 212
    :cond_f
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 213
    .line 214
    if-eqz p0, :cond_10

    .line 215
    .line 216
    iput-object p0, v8, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 217
    .line 218
    iput-boolean v1, v8, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 219
    .line 220
    :cond_10
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    .line 231
    .line 232
    iget-object p0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroidx/appcompat/view/menu/MenuDialogHelper;

    .line 233
    .line 234
    if-eqz p0, :cond_11

    .line 235
    .line 236
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 237
    .line 238
    .line 239
    :cond_11
    return-object v0
.end method

.method public ensureTotalCapacity(II)V
    .locals 2

    .line 1
    add-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, [C

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-gt v1, p2, :cond_1

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-ge p2, p1, :cond_0

    .line 12
    .line 13
    move p2, p1

    .line 14
    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 6
    .line 7
    iget v0, v0, Lokio/PriorityQueue;->size:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/AssertionError;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 18
    .line 19
    .line 20
    throw v1

    .line 21
    :pswitch_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1
    new-instance v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_2
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 37
    .line 38
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 45
    .line 46
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_3
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 65
    .line 66
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 67
    .line 68
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 73
    .line 74
    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 75
    .line 76
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 81
    .line 82
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

    .line 83
    .line 84
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 89
    .line 90
    invoke-direct {v0, v2, v3, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_4
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 95
    .line 96
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 97
    .line 98
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 103
    .line 104
    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 105
    .line 106
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 111
    .line 112
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 113
    .line 114
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 119
    .line 120
    invoke-direct {v0, v2, v3, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlinx/coroutines/Job;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :pswitch_5
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "device_policy"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 140
    .line 141
    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    .line 142
    .line 143
    .line 144
    return-object v1

    .line 145
    :pswitch_6
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->flags:Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    .line 152
    .line 153
    invoke-static {v0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Landroidx/camera/camera2/pipe/StrictMode;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_7
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 163
    .line 164
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 165
    .line 166
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 171
    .line 172
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 173
    .line 174
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroidx/camera/camera2/pipe/StrictMode;

    .line 179
    .line 180
    invoke-direct {v0, v2, v1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V

    .line 181
    .line 182
    .line 183
    return-object v0

    .line 184
    :pswitch_8
    new-instance v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 185
    .line 186
    new-instance v4, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 187
    .line 188
    new-instance v0, Landroidx/cardview/widget/CardView$1;

    .line 189
    .line 190
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 191
    .line 192
    iget-object v5, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 193
    .line 194
    iget-object v6, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 195
    .line 196
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Landroidx/camera/camera2/pipe/core/Threads;

    .line 201
    .line 202
    invoke-direct {v0, v2, v6}, Landroidx/cardview/widget/CardView$1;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 206
    .line 207
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 212
    .line 213
    iget-object v6, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 214
    .line 215
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 220
    .line 221
    iget-object v7, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 222
    .line 223
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 228
    .line 229
    iget-object v8, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 230
    .line 231
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 236
    .line 237
    iget-object v9, v5, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v9, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 240
    .line 241
    iget-object v9, v9, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 242
    .line 243
    invoke-static {v9}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v10, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 247
    .line 248
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Landroidx/camera/camera2/pipe/core/Threads;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v0, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v2, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v6, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 277
    .line 278
    iput-object v7, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 279
    .line 280
    iput-object v8, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object v9, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v10, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 285
    .line 286
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 287
    .line 288
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 289
    .line 290
    .line 291
    iput-object v0, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 292
    .line 293
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 294
    .line 295
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 300
    .line 301
    new-instance v6, Lokhttp3/Dispatcher;

    .line 302
    .line 303
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 304
    .line 305
    iget-object v7, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 306
    .line 307
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    check-cast v7, Landroidx/camera/camera2/pipe/core/Threads;

    .line 312
    .line 313
    iget-object v8, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 314
    .line 315
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Lkotlinx/coroutines/Job;

    .line 320
    .line 321
    invoke-direct {v6, v2, v7, v8}, Lokhttp3/Dispatcher;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)V

    .line 322
    .line 323
    .line 324
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 325
    .line 326
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    move-object v7, v2

    .line 331
    check-cast v7, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 332
    .line 333
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ldagger/internal/Provider;

    .line 334
    .line 335
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    move-object v8, v2

    .line 340
    check-cast v8, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    .line 341
    .line 342
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

    .line 343
    .line 344
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    move-object v9, v2

    .line 349
    check-cast v9, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 350
    .line 351
    iget-object v2, v5, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v2, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 354
    .line 355
    iget-object v10, v2, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 356
    .line 357
    invoke-static {v10}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 361
    .line 362
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    move-object v11, v1

    .line 367
    check-cast v11, Landroidx/camera/camera2/pipe/core/Threads;

    .line 368
    .line 369
    move-object v5, v0

    .line 370
    invoke-direct/range {v3 .. v11}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Lokhttp3/Dispatcher;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V

    .line 371
    .line 372
    .line 373
    return-object v3

    .line 374
    :pswitch_9
    new-instance v4, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 375
    .line 376
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->permissionsProvider:Ldagger/internal/Provider;

    .line 377
    .line 378
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    move-object v5, v0

    .line 383
    check-cast v5, Landroidx/camera/camera2/pipe/core/Permissions;

    .line 384
    .line 385
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

    .line 386
    .line 387
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    move-object v6, v0

    .line 392
    check-cast v6, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 393
    .line 394
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCloserImplProvider:Ldagger/internal/Provider;

    .line 395
    .line 396
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    move-object v7, v0

    .line 401
    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 402
    .line 403
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 404
    .line 405
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    move-object v8, v0

    .line 410
    check-cast v8, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 411
    .line 412
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 413
    .line 414
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    move-object v9, v0

    .line 419
    check-cast v9, Landroidx/camera/camera2/pipe/core/Threads;

    .line 420
    .line 421
    invoke-direct/range {v4 .. v9}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;-><init>(Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/Threads;)V

    .line 422
    .line 423
    .line 424
    return-object v4

    .line 425
    :pswitch_a
    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 426
    .line 427
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 428
    .line 429
    .line 430
    return-object v0

    .line 431
    :pswitch_b
    new-instance v0, Landroidx/camera/camera2/pipe/core/Permissions;

    .line 432
    .line 433
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/Permissions;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    return-object v0

    .line 441
    :pswitch_c
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 442
    .line 443
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 448
    .line 449
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    move-object v4, v0

    .line 454
    check-cast v4, Landroidx/camera/camera2/pipe/core/Threads;

    .line 455
    .line 456
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->permissionsProvider:Ldagger/internal/Provider;

    .line 457
    .line 458
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    move-object v5, v0

    .line 463
    check-cast v5, Landroidx/camera/camera2/pipe/core/Permissions;

    .line 464
    .line 465
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 466
    .line 467
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 470
    .line 471
    iget-object v6, v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraMetadataConfig:Landroidx/cardview/widget/CardView$1;

    .line 472
    .line 473
    invoke-static {v6}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 477
    .line 478
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    move-object v7, v0

    .line 483
    check-cast v7, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 484
    .line 485
    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/SystemTimeSource;)V

    .line 486
    .line 487
    .line 488
    return-object v2

    .line 489
    :pswitch_d
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    new-instance v1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    .line 494
    .line 495
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 496
    .line 497
    .line 498
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 499
    .line 500
    const/16 v6, 0x23

    .line 501
    .line 502
    if-lt v5, v6, :cond_0

    .line 503
    .line 504
    new-instance v5, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    .line 505
    .line 506
    invoke-direct {v5, v0}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;-><init>(Landroid/content/Context;)V

    .line 507
    .line 508
    .line 509
    iput-object v5, v1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->mCamera2Provider:Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    .line 510
    .line 511
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    const/16 v7, 0x84

    .line 520
    .line 521
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 522
    .line 523
    .line 524
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 526
    .line 527
    if-nez v5, :cond_1

    .line 528
    .line 529
    goto :goto_2

    .line 530
    :cond_1
    array-length v6, v5

    .line 531
    move v7, v3

    .line 532
    move-object v8, v4

    .line 533
    :goto_0
    if-ge v7, v6, :cond_5

    .line 534
    .line 535
    aget-object v9, v5, v7

    .line 536
    .line 537
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 538
    .line 539
    if-nez v9, :cond_2

    .line 540
    .line 541
    goto :goto_1

    .line 542
    :cond_2
    const-string v10, "androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY"

    .line 543
    .line 544
    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    if-eqz v9, :cond_4

    .line 549
    .line 550
    if-nez v8, :cond_3

    .line 551
    .line 552
    move-object v8, v9

    .line 553
    goto :goto_1

    .line 554
    :cond_3
    const-string v0, "Multiple Play Services CameraDeviceSetupCompat implementations found in the manifest."

    .line 555
    .line 556
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-object v4

    .line 560
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 561
    .line 562
    goto :goto_0

    .line 563
    :cond_5
    if-nez v8, :cond_6

    .line 564
    .line 565
    goto :goto_2

    .line 566
    :cond_6
    :try_start_1
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    new-array v6, v2, [Ljava/lang/Class;

    .line 571
    .line 572
    const-class v7, Landroid/content/Context;

    .line 573
    .line 574
    aput-object v7, v6, v3

    .line 575
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    new-array v2, v2, [Ljava/lang/Object;

    .line 581
    .line 582
    aput-object v0, v2, v3

    .line 583
    .line 584
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    check-cast v0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    .line 590
    move-object v4, v0

    .line 591
    goto :goto_2

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const-string v1, "Failed to instantiate Play Services CameraDeviceSetupCompat implementation"

    .line 594
    .line 595
    invoke-static {v1, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    return-object v4

    .line 599
    :catch_1
    :goto_2
    iput-object v4, v1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->mPlayServicesProvider:Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    .line 600
    .line 601
    return-object v1

    .line 602
    :pswitch_e
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 603
    .line 604
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;-><init>()V

    .line 605
    .line 606
    .line 607
    return-object v0

    .line 608
    :pswitch_f
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    return-object v0

    .line 620
    :pswitch_10
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    const-string v1, "camera"

    .line 625
    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 634
    .line 635
    return-object v0

    .line 636
    :pswitch_11
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 637
    .line 638
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 639
    .line 640
    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 641
    .line 642
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    check-cast v3, Landroidx/camera/camera2/pipe/core/Threads;

    .line 647
    .line 648
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    iget-object v5, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->providePackageManagerProvider:Ldagger/internal/Provider;

    .line 653
    .line 654
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    check-cast v5, Landroid/content/pm/PackageManager;

    .line 659
    .line 660
    iget-object v6, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 661
    .line 662
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 667
    .line 668
    iget-object v7, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraDeviceSetupCompatFactoryProvider:Ldagger/internal/Provider;

    .line 669
    .line 670
    iget-object v8, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 671
    .line 672
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    check-cast v8, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 677
    .line 678
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 679
    .line 680
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    move-object v9, v1

    .line 685
    check-cast v9, Lkotlinx/coroutines/Job;

    .line 686
    .line 687
    move-object v1, v0

    .line 688
    invoke-direct/range {v1 .. v9}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlinx/coroutines/Job;)V

    .line 689
    .line 690
    .line 691
    return-object v1

    .line 692
    :pswitch_12
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 693
    .line 694
    iget-object v4, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 695
    .line 696
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    check-cast v4, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 701
    .line 702
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 703
    .line 704
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 709
    .line 710
    iget v5, v0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 711
    .line 712
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    new-instance v6, Ljava/util/ArrayList;

    .line 719
    .line 720
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .line 722
    .line 723
    iget-object v7, v0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v7, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 726
    .line 727
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    sget-object v7, Landroidx/camera/camera2/pipe/core/AndroidThreads;->factory:Ljava/util/concurrent/ThreadFactory;

    .line 731
    .line 732
    const-string v8, "CXCP-IO-"

    .line 733
    .line 734
    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    new-instance v9, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;

    .line 739
    .line 740
    invoke-direct {v9, v5, v8}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;-><init>(ILandroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;)V

    .line 741
    .line 742
    .line 743
    const/16 v8, 0x8

    .line 744
    .line 745
    invoke-static {v9, v8}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 746
    .line 747
    .line 748
    move-result-object v13

    .line 749
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    invoke-static {v13}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 753
    .line 754
    .line 755
    move-result-object v14

    .line 756
    const-string v9, "CXCP-BG-"

    .line 757
    .line 758
    invoke-static {v7, v9}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    new-instance v10, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;

    .line 763
    .line 764
    invoke-direct {v10, v5, v9}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;-><init>(ILandroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;)V

    .line 765
    .line 766
    .line 767
    iget v5, v0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 768
    .line 769
    invoke-static {v10, v5}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 770
    .line 771
    .line 772
    move-result-object v15

    .line 773
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    invoke-static {v15}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 777
    .line 778
    .line 779
    move-result-object v16

    .line 780
    const-string v5, "CXCP-"

    .line 781
    .line 782
    invoke-static {v7, v5}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    iget v7, v0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 787
    .line 788
    new-instance v9, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;

    .line 789
    .line 790
    invoke-direct {v9, v7, v5}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;-><init>(ILandroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;)V

    .line 791
    .line 792
    .line 793
    iget v5, v0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 794
    .line 795
    invoke-static {v9, v5}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 796
    .line 797
    .line 798
    move-result-object v5

    .line 799
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    new-instance v9, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 807
    .line 808
    const/4 v10, 0x5

    .line 809
    invoke-direct {v9, v10, v6}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    sget-object v6, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->THREAD:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    .line 813
    .line 814
    invoke-virtual {v4, v6, v9}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    .line 815
    .line 816
    .line 817
    new-instance v6, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;

    .line 818
    .line 819
    invoke-direct {v6, v0, v4, v3}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;-><init>(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;I)V

    .line 820
    .line 821
    .line 822
    new-instance v3, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;

    .line 823
    .line 824
    invoke-direct {v3, v0, v4, v2}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;-><init>(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;I)V

    .line 825
    .line 826
    .line 827
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 828
    .line 829
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 830
    .line 831
    .line 832
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 833
    .line 834
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 835
    .line 836
    .line 837
    new-instance v9, Lkotlinx/coroutines/SupervisorJobImpl;

    .line 838
    .line 839
    invoke-direct {v9, v1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 840
    .line 841
    .line 842
    invoke-static {v9, v7}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 843
    .line 844
    .line 845
    move-result-object v9

    .line 846
    new-instance v10, Lkotlinx/coroutines/CoroutineName;

    .line 847
    .line 848
    const-string v11, "CXCP"

    .line 849
    .line 850
    invoke-direct {v10, v11}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 854
    .line 855
    .line 856
    move-result-object v9

    .line 857
    invoke-static {v9}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 858
    .line 859
    .line 860
    move-result-object v9

    .line 861
    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 862
    .line 863
    new-instance v9, Lkotlinx/coroutines/SupervisorJobImpl;

    .line 864
    .line 865
    invoke-direct {v9, v1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 866
    .line 867
    .line 868
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    .line 869
    .line 870
    const-string v10, "CXCP-Dispatch"

    .line 871
    .line 872
    invoke-direct {v1, v10}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-static {v9, v1}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 884
    .line 885
    new-instance v1, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;

    .line 886
    .line 887
    invoke-direct {v1, v8, v0, v2}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    sget-object v8, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->SCOPE:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    .line 891
    .line 892
    invoke-virtual {v4, v8, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    .line 893
    .line 894
    .line 895
    new-instance v10, Landroidx/camera/camera2/pipe/core/Threads;

    .line 896
    .line 897
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 898
    .line 899
    move-object v11, v0

    .line 900
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    .line 901
    .line 902
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 903
    .line 904
    move-object v12, v0

    .line 905
    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    .line 906
    .line 907
    move-object/from16 v20, v3

    .line 908
    .line 909
    move-object/from16 v17, v5

    .line 910
    .line 911
    move-object/from16 v19, v6

    .line 912
    .line 913
    move-object/from16 v18, v7

    .line 914
    .line 915
    invoke-direct/range {v10 .. v20}, Landroidx/camera/camera2/pipe/core/Threads;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;)V

    .line 916
    .line 917
    .line 918
    return-object v10

    .line 919
    :pswitch_13
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 920
    .line 921
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 922
    .line 923
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 928
    .line 929
    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCacheProvider:Ldagger/internal/Provider;

    .line 930
    .line 931
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 936
    .line 937
    iget-object v4, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 938
    .line 939
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 944
    .line 945
    iget-object v5, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

    .line 946
    .line 947
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    check-cast v5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 952
    .line 953
    move-object v6, v2

    .line 954
    move-object v2, v3

    .line 955
    move-object v3, v4

    .line 956
    move-object v4, v5

    .line 957
    new-instance v5, Landroidx/biometric/BiometricPrompt;

    .line 958
    .line 959
    const/16 v7, 0x12

    .line 960
    .line 961
    invoke-direct {v5, v7, v1}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 962
    .line 963
    .line 964
    move-object/from16 v21, v6

    .line 965
    .line 966
    move-object v6, v1

    .line 967
    move-object/from16 v1, v21

    .line 968
    .line 969
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 970
    .line 971
    .line 972
    move-result-object v6

    .line 973
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/biometric/BiometricPrompt;Landroid/content/Context;)V

    .line 974
    .line 975
    .line 976
    return-object v0

    .line 977
    :pswitch_14
    move-object v6, v1

    .line 978
    iget-object v0, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 979
    .line 980
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 983
    .line 984
    iget-object v1, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2BackendProvider:Lokio/PriorityQueue;

    .line 985
    .line 986
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeContextContext()Landroid/content/Context;

    .line 987
    .line 988
    .line 989
    move-result-object v10

    .line 990
    iget-object v2, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 991
    .line 992
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    move-object v11, v2

    .line 997
    check-cast v11, Landroidx/camera/camera2/pipe/core/Threads;

    .line 998
    .line 999
    iget-object v2, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 1000
    .line 1001
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    move-object v12, v2

    .line 1006
    check-cast v12, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 1007
    .line 1008
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->cameraBackendConfig:Lcom/bumptech/glide/GlideExperiments;

    .line 1018
    .line 1019
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    .line 1021
    .line 1022
    iget-object v0, v0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 1023
    .line 1024
    const-string v2, "Initialize defaultCameraBackend"

    .line 1025
    .line 1026
    :try_start_2
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1}, Lokio/PriorityQueue;->get()Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    check-cast v1, Landroidx/camera/camera2/pipe/CameraBackend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1034
    .line 1035
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1036
    .line 1037
    .line 1038
    new-instance v2, Landroidx/camera/camera2/pipe/CameraBackendId;

    .line 1039
    .line 1040
    const-string v8, "CXCP-Camera2"

    .line 1041
    .line 1042
    invoke-direct {v2, v8}, Landroidx/camera/camera2/pipe/CameraBackendId;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v2

    .line 1049
    if-nez v2, :cond_9

    .line 1050
    .line 1051
    new-instance v2, Landroidx/camera/camera2/pipe/CameraBackendId;

    .line 1052
    .line 1053
    invoke-direct {v2, v8}, Landroidx/camera/camera2/pipe/CameraBackendId;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    new-instance v3, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$$ExternalSyntheticLambda0;

    .line 1057
    .line 1058
    invoke-direct {v3, v1}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    if-eqz v1, :cond_7

    .line 1066
    .line 1067
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    move-object v9, v0

    .line 1075
    goto :goto_3

    .line 1076
    :cond_7
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1077
    .line 1078
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-object v9, v1

    .line 1085
    :goto_3
    new-instance v0, Landroidx/camera/camera2/pipe/CameraBackendId;

    .line 1086
    .line 1087
    invoke-direct {v0, v8}, Landroidx/camera/camera2/pipe/CameraBackendId;-><init>(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    if-eqz v0, :cond_8

    .line 1095
    .line 1096
    new-instance v7, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 1097
    .line 1098
    invoke-direct/range {v7 .. v12}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)V

    .line 1099
    .line 1100
    .line 1101
    return-object v7

    .line 1102
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    const-string v1, "Failed to find "

    .line 1105
    .line 1106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v8}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    const-string v1, " in the list of available CameraPipe backends! Available values are "

    .line 1117
    .line 1118
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1123
    .line 1124
    .line 1125
    return-object v4

    .line 1126
    :cond_9
    invoke-static {v8}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    const-string v1, ". Use CameraBackendConfig#internalBackend field instead."

    .line 1131
    .line 1132
    const-string v2, "CameraBackendConfig#cameraBackends should not contain a backend with "

    .line 1133
    .line 1134
    invoke-static {v0, v1, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    return-object v4

    .line 1138
    :catchall_0
    move-exception v0

    .line 1139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1140
    .line 1141
    .line 1142
    throw v0

    .line 1143
    :pswitch_15
    move-object v6, v1

    .line 1144
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 1145
    .line 1146
    iget-object v1, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 1147
    .line 1148
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 1153
    .line 1154
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;-><init>(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V

    .line 1155
    .line 1156
    .line 1157
    return-object v0

    .line 1158
    :pswitch_16
    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    return-object v0

    .line 1163
    :pswitch_17
    move-object v6, v1

    .line 1164
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 1165
    .line 1166
    iget-object v1, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 1167
    .line 1168
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 1173
    .line 1174
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;-><init>(Lkotlinx/coroutines/Job;)V

    .line 1175
    .line 1176
    .line 1177
    return-object v0

    .line 1178
    nop

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
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

.method public getChangeLog()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/Resources;

    .line 4
    .line 5
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_1
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    invoke-direct {v3, v1, v4}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lde/cketti/changelog/XmlParser;->readChangeLog()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 43
    .line 44
    .line 45
    throw v1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :goto_0
    new-instance v2, Lorg/jsoup/SerializationException;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Error parsing XML resource: "

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    goto :goto_1

    .line 60
    :catch_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_1
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method

.method public getChangeLogSince(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/Resources;

    .line 4
    .line 5
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_1
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 24
    .line 25
    invoke-direct {v3, v1, p1}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lde/cketti/changelog/XmlParser;->readChangeLog()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 42
    .line 43
    .line 44
    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :goto_0
    new-instance v1, Lorg/jsoup/SerializationException;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "Error parsing XML resource: "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    goto :goto_1

    .line 59
    :catch_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public heapifyUp(ILokio/AsyncTimeout;)V
    .locals 8

    .line 1
    :goto_0
    shr-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Lokio/AsyncTimeout;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-wide v2, v1, Lokio/AsyncTimeout;->timeoutAt:J

    .line 15
    .line 16
    iget-wide v4, p2, Lokio/AsyncTimeout;->timeoutAt:J

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    sub-long/2addr v4, v2

    .line 21
    invoke-static {v6, v7, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    iput p1, v1, Lokio/AsyncTimeout;->index:I

    .line 28
    .line 29
    iget-object v2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, [Lokio/AsyncTimeout;

    .line 32
    .line 33
    aput-object v1, v2, p1

    .line 34
    .line 35
    move p1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, [Lokio/AsyncTimeout;

    .line 40
    .line 41
    aput-object p2, p0, p1

    .line 42
    .line 43
    iput p1, p2, Lokio/AsyncTimeout;->index:I

    .line 44
    .line 45
    return-void
.end method

.method public onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/room/RoomConnectionManager;

    .line 4
    .line 5
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p2, p3}, Landroidx/room/RoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public perform(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public read()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lokio/PriorityQueue;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lokio/PriorityQueue;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    const/4 v4, 0x6

    .line 26
    const/4 v5, 0x0

    .line 27
    if-ne v1, v4, :cond_c

    .line 28
    .line 29
    iget v1, p0, Lokio/PriorityQueue;->size:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, p0, Lokio/PriorityQueue;->size:I

    .line 33
    .line 34
    const/16 v2, 0xc8

    .line 35
    .line 36
    if-ne v1, v2, :cond_5

    .line 37
    .line 38
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 39
    .line 40
    invoke-direct {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lokio/PriorityQueue;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lkotlin/DeepRecursiveScopeImpl;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 49
    .line 50
    iput-object v1, v1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    .line 51
    .line 52
    sget-object v2, Lkotlin/ResultKt;->UNDEFINED_RESULT:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 53
    .line 54
    iput-object v2, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v3, v1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    :try_start_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    invoke-static {v4, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 82
    .line 83
    iget-object v0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Lokio/PriorityQueue;

    .line 84
    .line 85
    invoke-direct {v4, v0, v3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lokio/PriorityQueue;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    .line 89
    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 97
    .line 98
    if-eq v0, v4, :cond_2

    .line 99
    .line 100
    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    new-instance v4, Lkotlin/Result$Failure;

    .line 106
    .line 107
    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    iput-object v2, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    const/4 v6, 0x4

    .line 129
    if-eq v2, v6, :cond_b

    .line 130
    .line 131
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    const/4 v8, 0x7

    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const/4 v7, 0x5

    .line 148
    invoke-virtual {v0, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lokio/PriorityQueue;->read()Lkotlinx/serialization/json/JsonElement;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eq v1, v6, :cond_6

    .line 163
    .line 164
    if-ne v1, v8, :cond_7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    const-string p0, "Expected end of the object or comma"

    .line 168
    .line 169
    invoke-static {v0, p0, v3, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    throw v5

    .line 173
    :cond_8
    :goto_1
    if-ne v1, v4, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0, v8}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    if-eq v1, v6, :cond_a

    .line 180
    .line 181
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    .line 182
    .line 183
    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    :goto_3
    iget v1, p0, Lokio/PriorityQueue;->size:I

    .line 187
    .line 188
    add-int/lit8 v1, v1, -0x1

    .line 189
    .line 190
    iput v1, p0, Lokio/PriorityQueue;->size:I

    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_a
    const-string p0, "object"

    .line 194
    .line 195
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v5

    .line 199
    :cond_b
    const-string p0, "Unexpected leading comma"

    .line 200
    .line 201
    invoke-static {v0, p0, v3, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    throw v5

    .line 205
    :cond_c
    const/16 v2, 0x8

    .line 206
    .line 207
    if-ne v1, v2, :cond_d

    .line 208
    .line 209
    invoke-virtual {p0}, Lokio/PriorityQueue;->readArray()Lkotlinx/serialization/json/JsonArray;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :cond_d
    invoke-static {v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->tokenDescription(B)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    const-string v1, "Cannot read Json element because of unexpected "

    .line 219
    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {v0, p0, v3, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    throw v5
.end method

.method public readArray()Lkotlinx/serialization/json/JsonArray;
    .locals 8

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    if-eq v2, v5, :cond_6

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v7, 0x9

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lokio/PriorityQueue;->read()Lkotlinx/serialization/json/JsonElement;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq v1, v5, :cond_0

    .line 43
    .line 44
    if-ne v1, v7, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v6, v3

    .line 49
    :goto_1
    iget v7, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "Expected end of the array or comma"

    .line 55
    .line 56
    invoke-static {v0, p0, v7, v4, v5}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v4

    .line 60
    :cond_3
    const/16 p0, 0x8

    .line 61
    .line 62
    if-ne v1, p0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(B)B

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    if-eq v1, v5, :cond_5

    .line 69
    .line 70
    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    .line 71
    .line 72
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_5
    const-string p0, "array"

    .line 77
    .line 78
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v4

    .line 82
    :cond_6
    const-string p0, "Unexpected leading comma"

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    invoke-static {v0, p0, v3, v4, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    throw v4
.end method

.method public readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    .line 1
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string v0, "null"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public release()V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 2
    .line 3
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, [C

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget v1, v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    .line 15
    .line 16
    array-length v2, p0

    .line 17
    add-int/2addr v2, v1

    .line 18
    sget v3, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    .line 19
    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    array-length v2, p0

    .line 23
    add-int/2addr v1, v2

    .line 24
    iput v1, v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    .line 25
    .line 26
    iget-object v1, v0, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw p0
.end method

.method public remove(J)V
    .locals 5

    .line 150
    iget v0, p0, Lokio/PriorityQueue;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 151
    iget-object v2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast v2, [J

    aget-wide v3, v2, v1

    cmp-long v2, p1, v3

    if-nez v2, :cond_1

    .line 152
    iget p1, p0, Lokio/PriorityQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ge v1, p1, :cond_0

    .line 153
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast p2, [J

    add-int/lit8 v0, v1, 0x1

    aget-wide v2, p2, v0

    aput-wide v2, p2, v1

    move v1, v0

    goto :goto_1

    .line 154
    :cond_0
    iget p1, p0, Lokio/PriorityQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lokio/PriorityQueue;->size:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Lokio/AsyncTimeout;)V
    .locals 9

    .line 1
    iget v0, p1, Lokio/AsyncTimeout;->index:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    iget v2, p0, Lokio/PriorityQueue;->size:I

    .line 7
    .line 8
    iget-object v3, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, [Lokio/AsyncTimeout;

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput v1, p1, Lokio/AsyncTimeout;->index:I

    .line 18
    .line 19
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, [Lokio/AsyncTimeout;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v4, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    iput v2, p0, Lokio/PriorityQueue;->size:I

    .line 29
    .line 30
    if-ne p1, v3, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-wide v1, p1, Lokio/AsyncTimeout;->timeoutAt:J

    .line 34
    .line 35
    iget-wide v4, v3, Lokio/AsyncTimeout;->timeoutAt:J

    .line 36
    .line 37
    sub-long/2addr v4, v1

    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    invoke-static {v1, v2, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, [Lokio/AsyncTimeout;

    .line 49
    .line 50
    aput-object v3, p0, v0

    .line 51
    .line 52
    iput v0, v3, Lokio/AsyncTimeout;->index:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    if-gez p1, :cond_5

    .line 56
    .line 57
    :goto_0
    shl-int/lit8 p1, v0, 0x1

    .line 58
    .line 59
    add-int/lit8 v4, p1, 0x1

    .line 60
    .line 61
    iget v5, p0, Lokio/PriorityQueue;->size:I

    .line 62
    .line 63
    if-gt v4, v5, :cond_3

    .line 64
    .line 65
    iget-object v5, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, [Lokio/AsyncTimeout;

    .line 68
    .line 69
    aget-object p1, v5, p1

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, [Lokio/AsyncTimeout;

    .line 77
    .line 78
    aget-object v4, v5, v4

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-wide v5, p1, Lokio/AsyncTimeout;->timeoutAt:J

    .line 84
    .line 85
    iget-wide v7, v4, Lokio/AsyncTimeout;->timeoutAt:J

    .line 86
    .line 87
    sub-long/2addr v7, v5

    .line 88
    invoke-static {v1, v2, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-gez v5, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object p1, v4

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-gt p1, v5, :cond_4

    .line 98
    .line 99
    iget-object v4, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, [Lokio/AsyncTimeout;

    .line 102
    .line 103
    aget-object p1, v4, p1

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-wide v4, v3, Lokio/AsyncTimeout;->timeoutAt:J

    .line 109
    .line 110
    iget-wide v6, p1, Lokio/AsyncTimeout;->timeoutAt:J

    .line 111
    .line 112
    sub-long/2addr v6, v4

    .line 113
    invoke-static {v1, v2, v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-lez v4, :cond_4

    .line 118
    .line 119
    iget v4, p1, Lokio/AsyncTimeout;->index:I

    .line 120
    .line 121
    iput v0, p1, Lokio/AsyncTimeout;->index:I

    .line 122
    .line 123
    iget-object v5, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v5, [Lokio/AsyncTimeout;

    .line 126
    .line 127
    aput-object p1, v5, v0

    .line 128
    .line 129
    move v0, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, [Lokio/AsyncTimeout;

    .line 134
    .line 135
    aput-object v3, p0, v0

    .line 136
    .line 137
    iput v0, v3, Lokio/AsyncTimeout;->index:I

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    invoke-virtual {p0, v0, v3}, Lokio/PriorityQueue;->heapifyUp(ILokio/AsyncTimeout;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    const-string p0, "Failed requirement."

    .line 145
    .line 146
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lokio/PriorityQueue;->$r8$classId:I

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
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    .line 15
    .line 16
    iget p0, p0, Lokio/PriorityQueue;->size:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lcom/bumptech/glide/load/resource/file/FileResource;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/file/FileResource;-><init>([B)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p0, Lokio/PriorityQueue;->size:I

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lokio/PriorityQueue;->ensureTotalCapacity(II)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [C

    .line 19
    .line 20
    iget v2, p0, Lokio/PriorityQueue;->size:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lokio/PriorityQueue;->size:I

    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    iput p1, p0, Lokio/PriorityQueue;->size:I

    .line 34
    .line 35
    return-void
.end method
