.class public final Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lretrofit2/OkHttpCall$1;

.field public final synthetic this$0:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;Lretrofit2/OkHttpCall$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;->this$0:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 2
    .line 3
    iget-object p1, p2, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;->binding:Lretrofit2/OkHttpCall$1;

    .line 11
    .line 12
    return-void
.end method
