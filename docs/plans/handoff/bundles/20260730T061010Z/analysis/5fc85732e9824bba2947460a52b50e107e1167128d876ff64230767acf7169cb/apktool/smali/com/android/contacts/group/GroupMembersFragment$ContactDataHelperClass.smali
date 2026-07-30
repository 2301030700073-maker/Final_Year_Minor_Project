.class Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDataHelperClass"
.end annotation


# instance fields
.field private firstItemId:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryItemId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->items:Ljava/util/List;

    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->firstItemId:Ljava/lang/String;

    .line 340
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->primaryItemId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMembersFragment$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Z)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->firstItemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->firstItemId:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 347
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->primaryItemId:Ljava/lang/String;

    .line 349
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefaultSelectionItemId()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->primaryItemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->firstItemId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hasDefaultItem()Z
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->primaryItemId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
