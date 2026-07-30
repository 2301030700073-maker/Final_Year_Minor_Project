.class Lcom/android/contacts/SimImportFragment$SimContactLoader$2;
.super Ljava/lang/Object;
.source "SimImportFragment.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/SimImportFragment$SimContactLoader;->loadData()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/contacts/SimImportFragment$LoaderResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/contacts/SimImportFragment$SimContactLoader;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lcom/android/contacts/SimImportFragment$LoaderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 476
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 477
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/SimImportFragment$LoaderResult;

    .line 478
    iput-object v0, p1, Lcom/android/contacts/SimImportFragment$LoaderResult;->accounts:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportFragment$SimContactLoader$2;->apply(Ljava/util/List;)Lcom/android/contacts/SimImportFragment$LoaderResult;

    move-result-object p1

    return-object p1
.end method
