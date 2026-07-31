.class public final Lcom/fsck/k9/ui/messagedetails/ParticipantItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final alwaysHideAddContactsButton:Z

.field public final contactPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

.field public final participant:Lcom/fsck/k9/ui/messagedetails/Participant;

.field public final showContactsPicture:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/contacts/ContactPictureLoader;ZZLcom/fsck/k9/ui/messagedetails/Participant;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->contactPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->showContactsPicture:Z

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->alwaysHideAddContactsButton:Z

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->participant:Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0c02d2

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const p0, 0x7f09029b

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
