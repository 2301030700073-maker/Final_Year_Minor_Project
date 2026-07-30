.class final Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "packageName"

    const-string v2, "typeResourceId"

    const-string v3, "displayName"

    const-string v4, "photoSupport"

    .line 48
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getDirectoryUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/contacts/compat/DirectoryCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method
