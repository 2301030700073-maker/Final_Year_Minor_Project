.class abstract Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBitmapData:[B

.field protected mContentType:Ljava/lang/String;

.field protected mDisplayName:Ljava/lang/String;

.field protected mLookupKey:Ljava/lang/String;

.field protected mPhotoId:J

.field protected mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private loadPhoto()V
    .locals 8

    .line 176
    iget-wide v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 181
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/ShortcutIntentBuilder;->access$100()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    .line 182
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v6, 0x0

    const-string v4, "_id=?"

    .line 181
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-static {p1}, Lcom/android/contacts/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mContentType:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->loadData()V

    .line 169
    invoke-direct {p0}, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->loadPhoto()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract loadData()V
.end method
