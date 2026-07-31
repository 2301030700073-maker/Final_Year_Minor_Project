.class public final Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playlistDescription:Ljava/lang/Object;

.field public final playlistDescriptionReadMore:Ljava/lang/Object;

.field public final playlistStreamCount:Ljava/lang/Object;

.field public final playlistTitleView:Ljava/lang/Object;

.field public final rootView:Ljava/lang/Object;

.field public final uploaderAvatarView:Ljava/lang/Object;

.field public final uploaderLayout:Ljava/lang/Object;

.field public final uploaderName:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->searchHistoryDAO()Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamStateDAO()Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 44
    .line 45
    const v0, 0x7f130141

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Ljava/lang/Object;

    .line 53
    .line 54
    const v0, 0x7f130147

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 68
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 69
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 70
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 71
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 72
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    return-object p0
.end method
