.class public final Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final handle:Landroid/widget/ImageView;

.field public final tabIconView:Landroidx/appcompat/widget/AppCompatImageView;

.field public final tabNameView:Landroid/widget/TextView;

.field public final synthetic this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a03c2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabNameView:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a03c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    const p1, 0x7f0a01bb

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->handle:Landroid/widget/ImageView;

    .line 38
    .line 39
    return-void
.end method
