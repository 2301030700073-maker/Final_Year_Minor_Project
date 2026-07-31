.class public final Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# instance fields
.field public entry:Lorg/wikipedia/talk/db/TalkTemplate;

.field public final templatesItemView:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

.field public final synthetic this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lorg/wikipedia/talk/template/TalkTemplatesItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->templatesItemView:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final isSwipeable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onSwipe()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->entry:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 15
    .line 16
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string v7, "app_patroller_experience"

    .line 29
    .line 30
    const-string v2, "delete_message_click"

    .line 31
    .line 32
    const-string v3, "pt_warning_messages"

    .line 33
    .line 34
    const-string v4, ""

    .line 35
    .line 36
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->deleteSelectedTalkTemplates()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string p0, "entry"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method
