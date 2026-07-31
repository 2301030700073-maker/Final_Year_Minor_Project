.class public Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;",
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
    sput-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.fragments.detail.VideoDetailFragment$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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

    .line 59
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 57
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 58
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V
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
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "autoPlayEnabled"

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 13
    .line 14
    const-string v0, "bottomSheetState"

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 21
    .line 22
    const-string v0, "lastStableBottomSheetState"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 29
    .line 30
    const-string v0, "serviceId"

    .line 31
    .line 32
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 37
    .line 38
    const-string/jumbo v0, "title"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo v0, "url"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iput-object p0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Bundle;)V
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
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "autoPlayEnabled"

    .line 7
    .line 8
    iget-boolean v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string v0, "bottomSheetState"

    .line 14
    .line 15
    iget v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "lastStableBottomSheetState"

    .line 21
    .line 22
    iget v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v0, "serviceId"

    .line 28
    .line 29
    iget v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "title"

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "url"

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
