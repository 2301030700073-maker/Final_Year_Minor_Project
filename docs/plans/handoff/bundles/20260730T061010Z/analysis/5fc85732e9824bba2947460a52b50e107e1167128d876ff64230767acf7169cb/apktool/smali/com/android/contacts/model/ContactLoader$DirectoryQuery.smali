.class Lcom/android/contacts/model/ContactLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryQuery"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "displayName"

    const-string v1, "packageName"

    const-string v2, "typeResourceId"

    const-string v3, "accountType"

    const-string v4, "accountName"

    const-string v5, "exportSupport"

    .line 272
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
