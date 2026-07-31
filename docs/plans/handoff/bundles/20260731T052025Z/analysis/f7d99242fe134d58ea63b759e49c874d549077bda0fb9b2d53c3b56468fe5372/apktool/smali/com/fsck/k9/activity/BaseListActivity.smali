.class public abstract Lcom/fsck/k9/activity/BaseListActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public list:Landroid/widget/ListView;


# virtual methods
.method public final getListView()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x102000a

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ListView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 15
    .line 16
    const v0, 0x1020004

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 31
    .line 32
    return-object p0
.end method
