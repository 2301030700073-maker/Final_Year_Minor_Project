.class Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupMembershipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMembershipAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mNewestGroupPosition:I

.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    .line 105
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getItemIsCheckable(I)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNewestGroupPosition()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->mNewestGroupPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 132
    :cond_0
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-static {p1}, Lcom/android/contacts/editor/GroupMembershipView;->access$000(Lcom/android/contacts/editor/GroupMembershipView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setNewestGroupPosition(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->mNewestGroupPosition:I

    return-void
.end method
