.class public abstract Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemBuilder:Lorg/jsoup/parser/TokenData;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V
.end method

.method public updateState(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 0

    .line 1
    return-void
.end method
