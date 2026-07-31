.class public final Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _scrollEvents:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final scrollEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-static {v2, v0, v0, v1}, Lokhttp3/Cookie$Companion;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;->_scrollEvents:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 12
    .line 13
    new-instance v1, Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/Channel;Z)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;->scrollEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 20
    .line 21
    return-void
.end method
