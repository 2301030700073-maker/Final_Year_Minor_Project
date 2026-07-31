.class public final synthetic Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iput p2, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$2:I

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget v7, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$2:I

    .line 12
    .line 13
    iget p0, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda6;->f$1:I

    .line 14
    .line 15
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "UPDATE Category SET count = count + 1 WHERE year = ? AND month = ? AND title = ? AND lang = ?"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    int-to-long v8, p0

    .line 30
    :try_start_0
    invoke-interface {p1, v8, v9, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 31
    .line 32
    .line 33
    int-to-long v7, v7

    .line 34
    invoke-interface {p1, v7, v8, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v1, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v0, "SELECT * FROM Category WHERE year = ? AND month = ? AND title = ? AND lang = ?"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    int-to-long v8, p0

    .line 68
    :try_start_1
    invoke-interface {p1, v8, v9, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 69
    .line 70
    .line 71
    int-to-long v7, v7

    .line 72
    invoke-interface {p1, v7, v8, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v2, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v1, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string/jumbo p0, "year"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const-string v0, "month"

    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v1, "title"

    .line 95
    .line 96
    invoke-static {p1, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const-string v2, "lang"

    .line 101
    .line 102
    invoke-static {p1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const-string v3, "count"

    .line 107
    .line 108
    invoke-static {p1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_0

    .line 117
    .line 118
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    long-to-int v7, v4

    .line 123
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    long-to-int v8, v4

    .line 128
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    long-to-int v9, v0

    .line 141
    new-instance v6, Lorg/wikipedia/categories/db/Category;

    .line 142
    .line 143
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    move-object p0, v0

    .line 149
    goto :goto_1

    .line 150
    :cond_0
    const/4 v6, 0x0

    .line 151
    :goto_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 152
    .line 153
    .line 154
    return-object v6

    .line 155
    :goto_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
