.class Lcom/android/contacts/database/SimContactDao$1;
.super Ljava/lang/Object;
.source "SimContactDao.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/database/SimContactDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Landroid/content/Context;",
        "Lcom/android/contacts/database/SimContactDao;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/contacts/database/SimContactDaoImpl;

    invoke-direct {v0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/contacts/database/SimContactDao$1;->apply(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;

    move-result-object p1

    return-object p1
.end method
