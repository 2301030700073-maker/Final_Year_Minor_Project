.class public final Lretrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/imageservice/ImageLoadListener;
.implements Lorg/wikipedia/media/AvPlayer$Callback;
.implements Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;
.implements Lretrofit2/CallAdapter;
.implements Lretrofit2/Callback;
.implements Lokhttp3/Callback;
.implements Lretrofit2/Converter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public final val$callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 12
    iput p1, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 13
    iput p4, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    const/4 p2, 0x5

    .line 2
    iput p2, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/widget/ScrollView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p3, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 17
    iput-object p5, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 9
    .line 10
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, v0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lkotlinx/serialization/json/Json;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public onCancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public onError()V
    .locals 1

    .line 36
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 37
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->previewSaveDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 38
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 39
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 35
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/media/AvPlayer$Callback;

    invoke-interface {p0, p1, p2}, Lorg/wikipedia/media/AvPlayer$Callback;->onError(II)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/Throwable;

    .line 18
    .line 19
    const v1, 0x7f1201e2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    check-cast v0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->onError(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    .line 22
    :try_start_0
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p1, Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lretrofit2/OkHttpCall;

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 23
    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    .line 4
    .line 5
    iget-object p1, p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lretrofit2/Callback;

    .line 10
    .line 11
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    invoke-direct {v1, p0, v0, p2, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/location/Location;

    .line 4
    .line 5
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/places/PlacesFragment;->showLinkPreview(Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget p1, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/content/Context;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const p2, 0x7f0903f6

    .line 24
    .line 25
    .line 26
    const-string v3, "item"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne p1, p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkThreadItemView;->getCallback()Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    iget-object p1, v1, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 44
    .line 45
    sget p2, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object p2, p2, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    invoke-static {p2}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, p2, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p0, p2}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    move v0, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v4

    .line 70
    :cond_2
    const p2, 0x7f09039e

    .line 71
    .line 72
    .line 73
    if-ne p1, p2, :cond_5

    .line 74
    .line 75
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 76
    .line 77
    iget-object p1, v1, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-class p2, Landroid/content/ClipboardManager;

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Landroid/content/ClipboardManager;

    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    invoke-static {v4, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    check-cast p0, Landroid/app/Activity;

    .line 109
    .line 110
    const p1, 0x7f1209ab

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v4

    .line 121
    :cond_5
    :goto_1
    return v0

    .line 122
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 126
    .line 127
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v3, p2}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 140
    .line 141
    .line 142
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 143
    .line 144
    if-eqz v1, :cond_10

    .line 145
    .line 146
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const p2, 0x7f0903dc

    .line 151
    .line 152
    .line 153
    if-ne p1, p2, :cond_6

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-eqz p0, :cond_f

    .line 160
    .line 161
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_6
    const p2, 0x7f0903d9

    .line 167
    .line 168
    .line 169
    if-ne p1, p2, :cond_7

    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    if-eqz p0, :cond_f

    .line 176
    .line 177
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_7
    const p2, 0x7f0903dd

    .line 183
    .line 184
    .line 185
    if-ne p1, p2, :cond_8

    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-eqz p0, :cond_f

    .line 192
    .line 193
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_8
    const p2, 0x7f0903db

    .line 199
    .line 200
    .line 201
    if-ne p1, p2, :cond_9

    .line 202
    .line 203
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    if-eqz p0, :cond_f

    .line 208
    .line 209
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_9
    const p2, 0x7f0903da

    .line 214
    .line 215
    .line 216
    if-ne p1, p2, :cond_a

    .line 217
    .line 218
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE$1:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    check-cast p0, Lorg/wikipedia/activity/BaseActivity;

    .line 228
    .line 229
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p1, p0, p2}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->exportLists(Lorg/wikipedia/activity/BaseActivity;Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_a
    const p2, 0x7f0903de

    .line 238
    .line 239
    .line 240
    if-ne p1, p2, :cond_b

    .line 241
    .line 242
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    if-eqz p0, :cond_f

    .line 247
    .line 248
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_b
    const p2, 0x7f0903df

    .line 253
    .line 254
    .line 255
    if-ne p1, p2, :cond_c

    .line 256
    .line 257
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    if-eqz p0, :cond_f

    .line 262
    .line 263
    invoke-interface {p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_c
    if-ne p1, p2, :cond_d

    .line 268
    .line 269
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 270
    .line 271
    if-eqz p1, :cond_f

    .line 272
    .line 273
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    if-eqz p0, :cond_f

    .line 278
    .line 279
    invoke-interface {p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_d
    const p2, 0x7f09039f

    .line 284
    .line 285
    .line 286
    if-ne p1, p2, :cond_e

    .line 287
    .line 288
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    if-eqz p0, :cond_f

    .line 293
    .line 294
    invoke-interface {p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onCustomize()V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_e
    const p2, 0x7f090394

    .line 299
    .line 300
    .line 301
    if-ne p1, p2, :cond_10

    .line 302
    .line 303
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    if-eqz p0, :cond_f

    .line 308
    .line 309
    invoke-interface {p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onAbout()V

    .line 310
    .line 311
    .line 312
    :cond_f
    :goto_2
    move v0, v2

    .line 313
    :cond_10
    return v0

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iget p0, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lretrofit2/Callback;

    .line 4
    .line 5
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lretrofit2/OkHttpCall;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    .line 10
    .line 11
    .line 12
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_1
    move-exception p2

    .line 26
    invoke-static {p2}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :try_start_2
    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_2
    move-exception p0

    .line 34
    invoke-static {p0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v0, Lretrofit2/Callback;

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v0, p2, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 52
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast v0, Lorg/wikipedia/media/AvPlayer;

    .line 53
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    check-cast v0, Lorg/wikipedia/media/AvPlayer;

    .line 54
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/media/AvPlayer$Callback;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v1, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;

    invoke-direct {v1, p0}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    .line 57
    iget-object p0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSuccess(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 12
    .line 13
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p2, p2, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Lio/getstream/photoview/PhotoView;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lio/getstream/photoview/PhotoView;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->hideTransitionReceiver(Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/reflect/Type;

    .line 4
    .line 5
    return-object p0
.end method
