.class Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->loadData()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;",
        "Ljava/util/List<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;->this$0:Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;->this$0:Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;

    invoke-static {v0, p1}, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->access$000(Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
