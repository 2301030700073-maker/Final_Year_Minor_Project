.class public final Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final fallbackIcon:I

.field public final inflater:Landroid/view/LayoutInflater;

.field public final items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 11
    .line 12
    const p1, 0x7f080167

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->fallbackIcon:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    .line 6
    .line 7
    int-to-long p0, p0

    .line 8
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const p2, 0x7f0d0077

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 14
    .line 15
    aget-object p1, p3, p1

    .line 16
    .line 17
    const p3, 0x7f0a03c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    .line 26
    const v0, 0x7f0a03c2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iget v1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemIcon:I

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->fallbackIcon:I

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-object p2
.end method
