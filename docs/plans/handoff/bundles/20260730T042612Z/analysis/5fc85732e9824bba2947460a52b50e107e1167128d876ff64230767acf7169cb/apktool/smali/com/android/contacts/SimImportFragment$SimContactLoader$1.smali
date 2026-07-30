.class Lcom/android/contacts/SimImportFragment$SimContactLoader$1;
.super Ljava/lang/Object;
.source "SimImportFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SimImportFragment$SimContactLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/SimImportFragment$SimContactLoader;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader$1;->this$0:Lcom/android/contacts/SimImportFragment$SimContactLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/contacts/SimImportFragment$LoaderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader$1;->this$0:Lcom/android/contacts/SimImportFragment$SimContactLoader;

    invoke-static {v0}, Lcom/android/contacts/SimImportFragment$SimContactLoader;->access$500(Lcom/android/contacts/SimImportFragment$SimContactLoader;)Lcom/android/contacts/SimImportFragment$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/android/contacts/SimImportFragment$SimContactLoader$1;->call()Lcom/android/contacts/SimImportFragment$LoaderResult;

    move-result-object v0

    return-object v0
.end method
