.class public final Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final folderFetcher:Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->folderFetcher:Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 16
    .line 17
    iput-object v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    return-void
.end method

.method public static final access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 23
    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v0, v1

    .line 28
    :goto_0
    check-cast v0, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object p1, v0, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_0
    new-instance p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 47
    .line 48
    invoke-direct {p1, p0, v0}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;-><init>(ZLcom/fsck/k9/mail/folders/RemoteFolder;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_1
    new-instance p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;-><init>(Lcom/fsck/k9/mail/folders/RemoteFolder;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 90
    .line 91
    iget-object v4, v2, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    packed-switch v4, :pswitch_data_1

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :pswitch_2
    new-instance v4, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 105
    .line 106
    invoke-direct {v4, v3, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;-><init>(ZLcom/fsck/k9/mail/folders/RemoteFolder;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :pswitch_3
    new-instance v4, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;

    .line 111
    .line 112
    invoke-direct {v4, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;-><init>(Lcom/fsck/k9/mail/folders/RemoteFolder;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance p2, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 120
    .line 121
    invoke-direct {p2, v3}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 122
    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    new-array v1, v1, [Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 126
    .line 127
    aput-object p1, v1, v3

    .line 128
    .line 129
    aput-object p2, v1, p0

    .line 130
    .line 131
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
