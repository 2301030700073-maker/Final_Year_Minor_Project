.class public abstract Lkotlinx/coroutines/channels/BufferedChannelKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BUFFERED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final CHANNEL_CLOSED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final CLOSE_HANDLER_CLOSED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final CLOSE_HANDLER_INVOKED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final DONE_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

.field public static final FAILED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final INTERRUPTED_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final INTERRUPTED_SEND:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final IN_BUFFER:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final NO_CLOSE_CAUSE:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final NO_RECEIVE_RESULT:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

.field public static final POISONED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final RESUMING_BY_EB:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final RESUMING_BY_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final SEGMENT_SIZE:I

.field public static final SUSPEND:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final SUSPEND_NO_WAITER:Lcom/fsck/k9/mailstore/LocalStore$8;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    const-string v1, "kotlinx.coroutines.bufferedChannel.segmentSize"

    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(ILjava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 24
    .line 25
    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    .line 26
    .line 27
    const/16 v1, 0x2710

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(ILjava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    .line 34
    .line 35
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    const/4 v2, 0x0

    .line 39
    const-string v3, "BUFFERED"

    .line 40
    .line 41
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 45
    .line 46
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 47
    .line 48
    const-string v3, "SHOULD_BUFFER"

    .line 49
    .line 50
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 54
    .line 55
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 56
    .line 57
    const-string v3, "S_RESUMING_BY_RCV"

    .line 58
    .line 59
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 63
    .line 64
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 65
    .line 66
    const-string v3, "RESUMING_BY_EB"

    .line 67
    .line 68
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 72
    .line 73
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 74
    .line 75
    const-string v3, "POISONED"

    .line 76
    .line 77
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 81
    .line 82
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 83
    .line 84
    const-string v3, "DONE_RCV"

    .line 85
    .line 86
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 90
    .line 91
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 92
    .line 93
    const-string v3, "INTERRUPTED_SEND"

    .line 94
    .line 95
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 99
    .line 100
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 101
    .line 102
    const-string v3, "INTERRUPTED_RCV"

    .line 103
    .line 104
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 108
    .line 109
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 110
    .line 111
    const-string v3, "CHANNEL_CLOSED"

    .line 112
    .line 113
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 117
    .line 118
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 119
    .line 120
    const-string v3, "SUSPEND"

    .line 121
    .line 122
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 126
    .line 127
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 128
    .line 129
    const-string v3, "SUSPEND_NO_WAITER"

    .line 130
    .line 131
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 135
    .line 136
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 137
    .line 138
    const-string v3, "FAILED"

    .line 139
    .line 140
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 144
    .line 145
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 146
    .line 147
    const-string v3, "NO_RECEIVE_RESULT"

    .line 148
    .line 149
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_RECEIVE_RESULT:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 153
    .line 154
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 155
    .line 156
    const-string v3, "CLOSE_HANDLER_CLOSED"

    .line 157
    .line 158
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_CLOSED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 162
    .line 163
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 164
    .line 165
    const-string v3, "CLOSE_HANDLER_INVOKED"

    .line 166
    .line 167
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 171
    .line 172
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 173
    .line 174
    const-string v3, "NO_CLOSE_CAUSE"

    .line 175
    .line 176
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_CLOSE_CAUSE:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 180
    .line 181
    return-void
.end method

.method public static final tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method
