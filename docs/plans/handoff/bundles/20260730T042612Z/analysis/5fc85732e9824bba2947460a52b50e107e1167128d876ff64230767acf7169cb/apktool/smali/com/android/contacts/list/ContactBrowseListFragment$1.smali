.class Lcom/android/contacts/list/ContactBrowseListFragment$1;
.super Landroid/os/Handler;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 163
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    :goto_0
    return-void
.end method
