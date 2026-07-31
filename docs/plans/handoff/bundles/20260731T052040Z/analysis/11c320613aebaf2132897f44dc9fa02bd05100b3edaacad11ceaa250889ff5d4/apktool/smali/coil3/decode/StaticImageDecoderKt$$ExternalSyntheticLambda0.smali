.class public final synthetic Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 11
    .line 12
    invoke-static {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->$r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 20
    .line 21
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v2, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    .line 46
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 47
    .line 48
    const/16 v3, 0x1d

    .line 49
    .line 50
    invoke-direct {v0, v3}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v2, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 69
    .line 70
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 71
    .line 72
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 73
    .line 74
    const/4 v3, 0x5

    .line 75
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v2, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 94
    .line 95
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 96
    .line 97
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 98
    .line 99
    const/16 v3, 0x1a

    .line 100
    .line 101
    invoke-direct {v0, v3}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v2, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    .line 120
    .line 121
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/RouterActivity;

    .line 125
    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {p0, v1, v0}, Landroidx/sqlite/SQLite;->getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_6
    check-cast p0, [B

    .line 138
    .line 139
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->$r8$lambda$MBfIWnUVvgOV0o6ahuVVUwYF53Y([B)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_7
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
