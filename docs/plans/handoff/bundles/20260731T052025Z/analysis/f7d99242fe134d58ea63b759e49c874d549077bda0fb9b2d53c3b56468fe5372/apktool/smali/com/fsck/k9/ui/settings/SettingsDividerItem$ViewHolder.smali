.class public final Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;
.super Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final text:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    const p2, 0x7f090421

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->text:Lcom/google/android/material/textview/MaterialTextView;

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f09017b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->text:Lcom/google/android/material/textview/MaterialTextView;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->text:Lcom/google/android/material/textview/MaterialTextView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDateItem;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/MessageDateItem;->date:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/settings/SettingsDividerItem;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/SettingsDividerItem;->text:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsDividerItem$ViewHolder;->text:Lcom/google/android/material/textview/MaterialTextView;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDateItem;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/settings/SettingsDividerItem;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
