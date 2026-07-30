.class final Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/ShortcutIntentBuilder;->access$200()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    const/4 v1, 0x2

    .line 209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mLookupKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mContentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ShortcutIntentBuilder;->access$300(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
