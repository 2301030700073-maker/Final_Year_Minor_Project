.class public Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "itemsListState"

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 13
    .line 14
    const-string v0, "name"

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "playlistId"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoxedLong(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iput-object p0, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 29
    .line 30
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 28
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "itemsListState"

    .line 7
    .line 8
    iget-object v1, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "name"

    .line 14
    .line 15
    iget-object v1, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "playlistId"

    .line 21
    .line 22
    iget-object p1, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoxedLong(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
