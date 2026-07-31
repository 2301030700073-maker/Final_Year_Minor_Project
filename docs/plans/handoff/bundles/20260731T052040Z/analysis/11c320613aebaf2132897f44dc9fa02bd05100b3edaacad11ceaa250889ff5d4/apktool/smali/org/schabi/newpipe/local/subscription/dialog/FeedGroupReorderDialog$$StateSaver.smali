.class public Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
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
    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "groupOrderedIdList"

    .line 4
    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 11
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "groupOrderedIdList"

    .line 4
    .line 5
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
