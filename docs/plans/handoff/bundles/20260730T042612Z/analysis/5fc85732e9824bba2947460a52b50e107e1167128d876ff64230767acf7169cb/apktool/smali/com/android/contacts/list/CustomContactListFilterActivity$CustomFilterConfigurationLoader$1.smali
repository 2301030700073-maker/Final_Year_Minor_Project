.class Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadData()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-static {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->access$100(Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;->apply(Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object p1

    return-object p1
.end method
