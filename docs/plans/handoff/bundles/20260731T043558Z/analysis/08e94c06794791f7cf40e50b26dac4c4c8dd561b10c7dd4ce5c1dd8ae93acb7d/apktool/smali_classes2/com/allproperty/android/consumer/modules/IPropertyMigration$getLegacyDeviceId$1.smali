.class final Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IPropertyMigration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/IPropertyMigration;->getLegacyDeviceId(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIPropertyMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPropertyMigration.kt\ncom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,59:1\n49#2:60\n51#2:64\n46#3:61\n51#3:63\n105#4:62\n*S KotlinDebug\n*F\n+ 1 IPropertyMigration.kt\ncom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1\n*L\n40#1:60\n40#1:64\n40#1:61\n40#1:63\n40#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1"
    f = "IPropertyMigration.kt"
    i = {
        0x1
    }
    l = {
        0x2a,
        0x2d
    }
    m = "invokeSuspend"
    n = {
        "uniqueId"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/allproperty/android/consumer/modules/IPropertyMigration;


# direct methods
.method constructor <init>(Lcom/allproperty/android/consumer/modules/IPropertyMigration;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/allproperty/android/consumer/modules/IPropertyMigration;",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->this$0:Lcom/allproperty/android/consumer/modules/IPropertyMigration;

    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;

    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->this$0:Lcom/allproperty/android/consumer/modules/IPropertyMigration;

    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p1, v0, v1, p2}, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;-><init>(Lcom/allproperty/android/consumer/modules/IPropertyMigration;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->this$0:Lcom/allproperty/android/consumer/modules/IPropertyMigration;

    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/IPropertyMigration;->access$getReactContext$p(Lcom/allproperty/android/consumer/modules/IPropertyMigration;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/IPropertyMigrationKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 62
    new-instance v1, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 64
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 42
    iput v3, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->label:I

    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 39
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 44
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 45
    :cond_4
    sget-object v1, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v1}, Lcom/google/firebase/analytics/AnalyticsKt;->getAnalytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-string v3, "getAppInstanceId(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->label:I

    invoke-static {v1, v3}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    .line 39
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 47
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    :goto_2
    move-object p1, v0

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/IPropertyMigration$getLegacyDeviceId$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
