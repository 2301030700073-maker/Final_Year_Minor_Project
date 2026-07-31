.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubscriptionHolder"
.end annotation


# instance fields
.field private final itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

.field final synthetic this$0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;


# direct methods
.method public static synthetic $r8$lambda$8xG-TH_4AMKiaiL7pGyV687EkvU(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->_init_$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->this$0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 5
    .line 6
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->rootView:Landroid/widget/CheckedTextView;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final _init_$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 2
    .line 3
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->rootView:Landroid/widget/CheckedTextView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    xor-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    invoke-static {p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->access$getListener$p(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {p1, p0, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;->onModeChange(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final bind(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->rootView:Landroid/widget/CheckedTextView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getTitle()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->rootView:Landroid/widget/CheckedTextView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
