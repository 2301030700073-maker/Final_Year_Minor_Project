.class public final Lcom/fsck/k9/ui/messagelist/MessageListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentMessageListLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

.field public final messageListLiveDataFactory:Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

.field public final messageSortOverrides:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveDataFactory:Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p1, p2}, Lcom/fsck/k9/helper/SingleLiveEvent;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 15
    .line 16
    new-instance p1, Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final loadMessageList(Lcom/fsck/k9/ui/messagelist/MessageListConfig;Z)V
    .locals 11

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;Z)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    const-string v3, "LegacyMessageListViewModel"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->currentMessageListLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p2, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->config:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v4

    .line 25
    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->currentMessageListLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iput-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->currentMessageListLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/fsck/k9/helper/SingleLiveEvent;->pending:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroidx/arch/core/internal/SafeIterableMap;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object v1, p2, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 54
    .line 55
    invoke-virtual {v1, p2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveDataFactory:Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 68
    .line 69
    iget-object v6, p2, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 70
    .line 71
    iget-object v7, p2, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 72
    .line 73
    iget-object v8, p2, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 74
    .line 75
    move-object v10, p1

    .line 76
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLoader;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)V

    .line 77
    .line 78
    .line 79
    iput-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->currentMessageListLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 80
    .line 81
    new-instance p1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 p2, 0xe

    .line 84
    .line 85
    invoke-direct {p1, p2, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 89
    .line 90
    const/4 p2, 0x7

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 98
    .line 99
    invoke-direct {p1, v5, p0}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, v0, Lcom/fsck/k9/helper/SingleLiveEvent;->pending:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p2, Landroidx/arch/core/internal/SafeIterableMap;

    .line 105
    .line 106
    invoke-virtual {p2, v5}, Landroidx/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget-object v4, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 116
    .line 117
    invoke-direct {v1, v5, p1}, Landroidx/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget v2, p2, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    iput v2, p2, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    .line 125
    .line 126
    iget-object v2, p2, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    iput-object v1, p2, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 131
    .line 132
    iput-object v1, p2, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iput-object v1, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 136
    .line 137
    iput-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 138
    .line 139
    iput-object v1, p2, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 140
    .line 141
    :goto_1
    check-cast v4, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 142
    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    iget-object p2, v4, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 146
    .line 147
    if-ne p2, p0, :cond_5

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const-string p0, "This source was already added with the different observer"

    .line 151
    .line 152
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 157
    .line 158
    :goto_3
    return-void

    .line 159
    :cond_7
    iget p0, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 160
    .line 161
    if-lez p0, :cond_8

    .line 162
    .line 163
    invoke-virtual {v5, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    return-void
.end method
