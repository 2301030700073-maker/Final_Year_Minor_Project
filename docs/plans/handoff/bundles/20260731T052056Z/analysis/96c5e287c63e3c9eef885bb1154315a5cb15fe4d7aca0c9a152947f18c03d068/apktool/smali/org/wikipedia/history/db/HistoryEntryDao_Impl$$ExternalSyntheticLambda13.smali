.class public final synthetic Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

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
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v6, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v7, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v8, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 16
    .line 17
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v0, "UPDATE ReadingListPage SET thumbUrl = ?, description = ? WHERE lang = ? AND apiTitle = ?"

    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-interface {p1, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-interface {p1, v5, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    if-nez v8, :cond_1

    .line 43
    .line 44
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p1, v4, v8}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {p1, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :goto_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const-string v0, "DELETE FROM HistoryEntry WHERE authority = ? AND lang = ? AND namespace = ? AND apiTitle = ?"

    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :try_start_1
    invoke-interface {p1, v5, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v4, v8}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_4

    .line 91
    :cond_2
    invoke-interface {p1, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-interface {p1, v2, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :goto_4
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
