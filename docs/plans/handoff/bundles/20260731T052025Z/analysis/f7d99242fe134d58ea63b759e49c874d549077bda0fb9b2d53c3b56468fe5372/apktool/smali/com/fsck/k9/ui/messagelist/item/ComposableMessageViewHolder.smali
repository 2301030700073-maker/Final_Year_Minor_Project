.class public final Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;
.super Lcom/fsck/k9/ui/messagelist/item/MessageListViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appearance:Lkotlin/jvm/functions/Function0;

.field public final avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

.field public final composeView:Landroidx/compose/ui/platform/ComposeView;

.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final onAvatarClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

.field public final onClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

.field public final onFavouriteClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

.field public final onLongClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

.field public final themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

.field public uniqueId:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeView;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->onClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->onLongClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->onAvatarClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->onFavouriteClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->appearance:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    iput-object p8, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 31
    .line 32
    iput-object p9, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 33
    .line 34
    const-wide/16 p1, -0x1

    .line 35
    .line 36
    iput-wide p1, p0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->uniqueId:J

    .line 37
    .line 38
    return-void
.end method
