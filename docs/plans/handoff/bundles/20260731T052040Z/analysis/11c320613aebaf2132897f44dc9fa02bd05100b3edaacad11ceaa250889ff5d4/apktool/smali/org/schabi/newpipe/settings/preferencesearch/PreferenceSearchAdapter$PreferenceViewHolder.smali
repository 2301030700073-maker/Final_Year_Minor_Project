.class public final Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final binding:Lokhttp3/Dispatcher;


# direct methods
.method public constructor <init>(Lokhttp3/Dispatcher;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lokhttp3/Dispatcher;

    .line 9
    .line 10
    return-void
.end method
