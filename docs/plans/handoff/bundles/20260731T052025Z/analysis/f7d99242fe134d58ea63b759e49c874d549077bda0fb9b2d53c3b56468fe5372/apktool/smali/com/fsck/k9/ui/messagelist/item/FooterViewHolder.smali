.class public final Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;
.super Lcom/fsck/k9/ui/messagelist/item/MessageListViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final textView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f09026a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/FooterViewHolder;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    return-void
.end method
