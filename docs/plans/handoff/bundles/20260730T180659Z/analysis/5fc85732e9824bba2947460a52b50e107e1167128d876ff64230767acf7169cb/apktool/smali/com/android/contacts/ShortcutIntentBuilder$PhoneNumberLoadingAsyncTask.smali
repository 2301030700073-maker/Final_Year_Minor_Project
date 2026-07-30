.class final Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
.super Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberLoadingAsyncTask"
.end annotation


# instance fields
.field private mPhoneLabel:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private final mShortcutAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 230
    iput-object p3, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/ShortcutIntentBuilder;->access$400()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 240
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 241
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    const/4 v1, 0x2

    .line 242
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x3

    .line 243
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    const/4 v1, 0x4

    .line 244
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    const/4 v1, 0x5

    .line 245
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mLookupKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    .line 255
    iget-object v0, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B

    iget-object v5, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    iget-object v7, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/ShortcutIntentBuilder;->access$500(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
