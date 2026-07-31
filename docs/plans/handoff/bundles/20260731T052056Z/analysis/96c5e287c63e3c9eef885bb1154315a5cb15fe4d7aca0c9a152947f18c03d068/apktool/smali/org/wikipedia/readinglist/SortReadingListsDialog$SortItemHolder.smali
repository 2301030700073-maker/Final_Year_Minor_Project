.class public final Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Lokhttp3/MultipartBody$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 2
    .line 3
    iget-object p1, p2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->binding:Lokhttp3/MultipartBody$Builder;

    .line 11
    .line 12
    return-void
.end method
