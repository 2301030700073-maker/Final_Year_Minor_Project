.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->INSTANCE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newInstance(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;
    .locals 8

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const-string v4, "showingThreadedList"

    .line 8
    .line 9
    const-string v5, "isThreadedDisplay"

    .line 10
    .line 11
    const-string v6, "searchObject"

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->serialize(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v7, Lkotlin/Pair;

    .line 29
    .line 30
    invoke-direct {v7, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p2, Lkotlin/Pair;

    .line 38
    .line 39
    invoke-direct {p2, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p3, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-direct {p3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-array p0, v3, [Lkotlin/Pair;

    .line 52
    .line 53
    aput-object v7, p0, v2

    .line 54
    .line 55
    aput-object p2, p0, v1

    .line 56
    .line 57
    aput-object p3, p0, v0

    .line 58
    .line 59
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->serialize(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 75
    .line 76
    invoke-direct {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v7, Lkotlin/Pair;

    .line 80
    .line 81
    invoke-direct {v7, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p2, Lkotlin/Pair;

    .line 89
    .line 90
    invoke-direct {p2, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance p3, Lkotlin/Pair;

    .line 98
    .line 99
    invoke-direct {p3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-array p0, v3, [Lkotlin/Pair;

    .line 103
    .line 104
    aput-object v7, p0, v2

    .line 105
    .line 106
    aput-object p2, p0, v1

    .line 107
    .line 108
    aput-object p3, p0, v0

    .line 109
    .line 110
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
