.class public final Lcom/sovranreactnative/Sovran;
.super Ljava/lang/Object;
.source "Sovran.kt"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sovranreactnative/Sovran$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSovran.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sovran.kt\ncom/sovranreactnative/Sovran\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1863#2,2:47\n*S KotlinDebug\n*F\n+ 1 Sovran.kt\ncom/sovranreactnative/Sovran\n*L\n23#1:47,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00110\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sovranreactnative/Sovran;",
        "Lcom/facebook/react/ReactPackage;",
        "<init>",
        "()V",
        "isInitialized",
        "",
        "queue",
        "",
        "Lcom/sovranreactnative/Sovran$Action;",
        "module",
        "Lcom/sovranreactnative/SovranModule;",
        "createNativeModules",
        "",
        "Lcom/facebook/react/bridge/NativeModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createViewManagers",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "dispatch",
        "",
        "action",
        "",
        "payload",
        "",
        "",
        "Action",
        "segment_sovran-react-native_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isInitialized:Z

.field private module:Lcom/sovranreactnative/SovranModule;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sovranreactnative/Sovran$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uUc5hv2ZgMncU-c4KQDynpkd948(Lcom/sovranreactnative/Sovran;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sovranreactnative/Sovran;->createNativeModules$lambda$1(Lcom/sovranreactnative/Sovran;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sovranreactnative/Sovran;->queue:Ljava/util/List;

    return-void
.end method

.method private static final createNativeModules$lambda$1(Lcom/sovranreactnative/Sovran;)Lkotlin/Unit;
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/sovranreactnative/Sovran;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInitialized queue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SovranModule"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/sovranreactnative/Sovran;->isInitialized:Z

    .line 23
    iget-object v0, p0, Lcom/sovranreactnative/Sovran;->queue:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sovranreactnative/Sovran$Action;

    .line 24
    iget-object v2, p0, Lcom/sovranreactnative/Sovran;->module:Lcom/sovranreactnative/SovranModule;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sovranreactnative/Sovran$Action;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sovranreactnative/Sovran$Action;->getPayload()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sovranreactnative/SovranModule;->dispatch(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/sovranreactnative/Sovran;->queue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/sovranreactnative/SovranModule;

    invoke-direct {v0, p1}, Lcom/sovranreactnative/SovranModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/sovranreactnative/Sovran;->module:Lcom/sovranreactnative/SovranModule;

    .line 20
    new-instance p1, Lcom/sovranreactnative/Sovran$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sovranreactnative/Sovran$$ExternalSyntheticLambda0;-><init>(Lcom/sovranreactnative/Sovran;)V

    invoke-virtual {v0, p1}, Lcom/sovranreactnative/SovranModule;->setOnInitialized(Lkotlin/jvm/functions/Function0;)V

    .line 29
    iget-object p1, p0, Lcom/sovranreactnative/Sovran;->module:Lcom/sovranreactnative/SovranModule;

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.NativeModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/NativeModule;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final dispatch(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/sovranreactnative/Sovran;->isInitialized:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SovranModule"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-boolean v0, p0, Lcom/sovranreactnative/Sovran;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sovranreactnative/Sovran;->module:Lcom/sovranreactnative/SovranModule;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sovranreactnative/SovranModule;->dispatch(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sovranreactnative/Sovran;->queue:Ljava/util/List;

    new-instance v1, Lcom/sovranreactnative/Sovran$Action;

    invoke-direct {v1, p1, p2}, Lcom/sovranreactnative/Sovran$Action;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
