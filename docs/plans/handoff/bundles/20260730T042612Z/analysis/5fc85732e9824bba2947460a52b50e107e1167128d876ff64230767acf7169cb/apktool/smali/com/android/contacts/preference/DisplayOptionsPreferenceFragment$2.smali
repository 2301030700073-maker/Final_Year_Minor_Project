.class Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$2;
.super Landroid/content/CursorLoader;
.source "DisplayOptionsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)V
    .locals 0

    .line 324
    invoke-direct {p0, p2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLoadInBackground()Landroid/database/Cursor;
    .locals 1

    .line 328
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$2;->onLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
