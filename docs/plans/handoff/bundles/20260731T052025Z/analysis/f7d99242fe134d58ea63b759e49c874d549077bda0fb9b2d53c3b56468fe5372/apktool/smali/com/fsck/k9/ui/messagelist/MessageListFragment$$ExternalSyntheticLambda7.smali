.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->decodeArguments()Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    array-length v5, v0

    .line 21
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    array-length v5, v0

    .line 25
    move v6, v1

    .line 26
    :goto_0
    if-ge v6, v5, :cond_0

    .line 27
    .line 28
    aget-object v7, v0, v6

    .line 29
    .line 30
    sget-object v8, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 31
    .line 32
    invoke-virtual {v8, v7}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ne v5, v2, :cond_1

    .line 53
    .line 54
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 55
    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    iget-wide v5, v5, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 59
    .line 60
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_1
    invoke-direct {v4, v0, v3, p0}, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;-><init>(Ljava/util/Set;Ljava/lang/Long;Lcom/fsck/k9/ui/messagelist/MessageListFragment;)V

    .line 65
    .line 66
    .line 67
    new-array p0, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v4, p0, v1

    .line 70
    .line 71
    invoke-static {p0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    const-string p0, "accountUuids"

    .line 77
    .line 78
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v3

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-array v0, v2, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p0, v0, v1

    .line 89
    .line 90
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
