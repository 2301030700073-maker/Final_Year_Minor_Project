.class public final Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lnet/newpipe/app/viewmodel/about/AboutViewModel;


# direct methods
.method public constructor <init>(Lnet/newpipe/app/viewmodel/about/AboutViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->this$0:Lnet/newpipe/app/viewmodel/about/AboutViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->this$0:Lnet/newpipe/app/viewmodel/about/AboutViewModel;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;-><init>(Lnet/newpipe/app/viewmodel/about/AboutViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->label:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;->this$0:Lnet/newpipe/app/viewmodel/about/AboutViewModel;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->json:Lkotlinx/serialization/json/Json;

    .line 14
    .line 15
    iget-object p1, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->resourceHandler:Lnet/newpipe/app/platform/ResourceHandler;

    .line 16
    .line 17
    check-cast p1, Lnet/newpipe/app/platform/AndroidResourceHandler;

    .line 18
    .line 19
    invoke-virtual {p1}, Lnet/newpipe/app/platform/AndroidResourceHandler;->readResourceToString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lnet/newpipe/app/model/AboutLibraries;->Companion:Lnet/newpipe/app/model/AboutLibraries$Companion;

    .line 27
    .line 28
    invoke-virtual {v0}, Lnet/newpipe/app/model/AboutLibraries$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v6, v0

    .line 33
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 43
    .line 44
    sget-object v2, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 45
    .line 46
    invoke-interface {v6}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/google/common/base/Joiner;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V

    .line 59
    .line 60
    .line 61
    check-cast p1, Lnet/newpipe/app/model/AboutLibraries;

    .line 62
    .line 63
    iget-object p0, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->_libraries:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    .line 65
    iget-object p1, p1, Lnet/newpipe/app/model/AboutLibraries;->libraries:Ljava/util/List;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    sget-object p1, Lco/touchlab/kermit/Logger$Companion;->Companion:Lco/touchlab/kermit/Logger$Companion;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lco/touchlab/kermit/Severity;->Error:Lco/touchlab/kermit/Severity;

    .line 79
    .line 80
    iget-object v1, p1, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 81
    .line 82
    iget-object v1, v1, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_minSeverity:Lco/touchlab/kermit/Severity;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-gtz v1, :cond_0

    .line 89
    .line 90
    const-string v1, "Failed to parse BOM"

    .line 91
    .line 92
    invoke-virtual {p1, v0, p0, v1}, Lco/touchlab/kermit/Logger$Companion;->processLog(Lco/touchlab/kermit/Severity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0
.end method
