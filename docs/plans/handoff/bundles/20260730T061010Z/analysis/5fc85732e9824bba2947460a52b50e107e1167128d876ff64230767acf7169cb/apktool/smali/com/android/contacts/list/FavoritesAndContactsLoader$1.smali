.class Lcom/android/contacts/list/FavoritesAndContactsLoader$1;
.super Landroid/database/MergeCursor;
.source "FavoritesAndContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/FavoritesAndContactsLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contactsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/FavoritesAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0

    .line 63
    iput-object p3, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method
