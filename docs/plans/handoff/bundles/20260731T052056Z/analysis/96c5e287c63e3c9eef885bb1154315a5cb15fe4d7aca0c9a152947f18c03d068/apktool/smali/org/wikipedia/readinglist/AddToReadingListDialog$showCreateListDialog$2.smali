.class public final Lorg/wikipedia/readinglist/AddToReadingListDialog$showCreateListDialog$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;
.implements Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$showCreateListDialog$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAbout()V
    .locals 0

    .line 1
    return-void
.end method

.method public onChecked(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$showCreateListDialog$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->titles:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->addAndDismiss(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "titles"

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public onCustomize()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onNotification()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSaveToList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$showCreateListDialog$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 14
    .line 15
    new-instance v6, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 16
    .line 17
    const/16 v2, 0x1b

    .line 18
    .line 19
    invoke-direct {v6, v0, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-static {p0, v6, v4, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void
.end method
