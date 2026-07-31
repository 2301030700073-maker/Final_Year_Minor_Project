.class public final Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public actionOrder:Ljava/util/ArrayList;

.field public cutoff:I

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public final themeProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    sget-object v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->Companion:Landroidx/transition/Transition$1;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v0, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v2, 0xa

    .line 40
    .line 41
    sget-object v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 42
    .line 43
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->token:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v5, Lkotlin/Pair;

    .line 69
    .line 70
    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v0, v1}, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->normalizeOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->actionOrder:Ljava/util/ArrayList;

    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    iput v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->cutoff:I

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 19
    .line 20
    sget-object p2, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 21
    .line 22
    iget-object p2, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    sget-object v2, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 29
    .line 30
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 52
    .line 53
    iget-object v3, v2, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->token:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v4, Lkotlin/Pair;

    .line 56
    .line 57
    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p2, v0}, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->normalizeOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->actionOrder:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget p1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 76
    .line 77
    iput p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->cutoff:I

    .line 78
    .line 79
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v4, 0x6

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;I)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    const p2, -0x623d3f1b

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p2, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method
