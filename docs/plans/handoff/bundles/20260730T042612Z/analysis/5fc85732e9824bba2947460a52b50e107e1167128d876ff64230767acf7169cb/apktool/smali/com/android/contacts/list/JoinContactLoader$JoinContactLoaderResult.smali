.class public Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
.super Landroid/database/CursorWrapper;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinContactLoaderResult"
.end annotation


# instance fields
.field public final suggestionCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 49
    iput-object p2, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 59
    invoke-super {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 62
    :cond_2
    throw v0
.end method
