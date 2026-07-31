.class public final Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;
.super Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final action:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Function;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;->action:Lkotlin/Function;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of p0, p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;

    .line 12
    .line 13
    iget-object v0, p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 14
    .line 15
    :cond_0
    return-object v0

    .line 16
    :pswitch_0
    instance-of p0, p1, Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 23
    .line 24
    :cond_1
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;->action:Lkotlin/Function;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p4, Lapp/k9mail/feature/settings/import/ui/ImportListItem;

    .line 9
    .line 10
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p4, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;

    .line 21
    .line 22
    check-cast p0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-boolean p2, p4, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 29
    .line 30
    xor-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
