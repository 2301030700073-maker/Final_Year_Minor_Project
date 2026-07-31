.class public final Lapp/k9mail/feature/widget/message/list/MessageListLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final messageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 13
    .line 14
    return-void
.end method

.method public static buildSelection(Lapp/k9mail/feature/widget/message/list/MessageListConfig;)Lkotlin/Pair;
    .locals 3

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListConfig;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lorg/jsoup/internal/SoftPool;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, v2, v1, v0}, Lorg/jsoup/internal/SoftPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v1, Lkotlin/Pair;

    .line 46
    .line 47
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method


# virtual methods
.method public final getMessageListInfo(Lapp/k9mail/feature/widget/message/list/MessageListConfig;)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p1, Lapp/k9mail/feature/widget/message/list/MessageListConfig;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 29
    .line 30
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "date"

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, " DESC"

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ", "

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, ""

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "id DESC"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-instance v8, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 67
    .line 68
    iget-object v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 69
    .line 70
    iget-object v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 71
    .line 72
    iget-object v6, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 73
    .line 74
    invoke-direct {v8, v6, v2, v3, v5}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListConfig;->showingThreadedList:Z

    .line 78
    .line 79
    iget-object v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    invoke-static {p1}, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->buildSelection(Lapp/k9mail/feature/widget/message/list/MessageListConfig;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v5, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 92
    .line 93
    move-object v6, v2

    .line 94
    check-cast v6, [Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual/range {v3 .. v8}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->getThreadedMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/legacy/mailstore/MessageMapper;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-static {p1}, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->buildSelection(Lapp/k9mail/feature/widget/message/list/MessageListConfig;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v5, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v6, v2

    .line 112
    check-cast v6, [Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual/range {v3 .. v8}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->getMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/legacy/mailstore/MessageMapper;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_1
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    new-instance p0, Landroidx/viewpager/widget/ViewPager$1;

    .line 123
    .line 124
    const/16 p1, 0xd

    .line 125
    .line 126
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    .line 133
    .line 134
    .line 135
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method
