.class public final Landroidx/room/driver/SupportSQLiteConnectionPool;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final supportDriver:Landroidx/fragment/app/Fragment$7;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Landroidx/fragment/app/Fragment$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Landroidx/fragment/app/Fragment$7;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Landroidx/fragment/app/Fragment$7;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 11
    .line 12
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 13
    .line 14
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
