.class public final Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;
.super Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactPicture:Landroid/widget/ImageView;

.field public final email:Lcom/google/android/material/textview/MaterialTextView;

.field public final menuAddContact:Landroid/view/View;

.field public final menuOverflow:Landroid/view/View;

.field public final name:Lcom/google/android/material/textview/MaterialTextView;

.field public final originalBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f09028c

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->menuAddContact:Landroid/view/View;

    .line 18
    .line 19
    const v1, 0x7f09028d

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->menuOverflow:Landroid/view/View;

    .line 30
    .line 31
    const v2, 0x7f090152

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast v2, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v2, 0x7f0902e2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 53
    .line 54
    iput-object v2, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 55
    .line 56
    const v2, 0x7f0901c6

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 64
    .line 65
    iput-object v2, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v0, p0}, Landroidx/work/Operation$State;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v1, p0}, Landroidx/work/Operation$State;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->participant:Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 7
    .line 8
    iget-object v0, p2, Lcom/fsck/k9/ui/messagedetails/Participant;->displayName:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/fsck/k9/ui/messagedetails/Participant;->contactLookupUri:Landroid/net/Uri;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 33
    .line 34
    iget-object v4, p2, Lcom/fsck/k9/ui/messagedetails/Participant;->emailAddress:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->alwaysHideAddContactsButton:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v0, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    move v0, v2

    .line 49
    :goto_2
    iget-object v4, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->menuAddContact:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->showContactsPicture:Z

    .line 55
    .line 56
    iget-object v4, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;->contactPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagedetails/Participant;->getAddress()Lcom/fsck/k9/mail/Address;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, v4, p2}, Lcom/fsck/k9/contacts/ContactPictureLoader;->setContactPicture(Landroid/widget/ImageView;Lcom/fsck/k9/mail/Address;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
