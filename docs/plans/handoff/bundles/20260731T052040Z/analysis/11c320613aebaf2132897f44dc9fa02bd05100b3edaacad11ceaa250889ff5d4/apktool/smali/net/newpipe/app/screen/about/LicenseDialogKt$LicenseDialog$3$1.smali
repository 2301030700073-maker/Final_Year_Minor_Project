.class public final Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $license:Lnet/newpipe/app/model/License;

.field final synthetic $licenseContent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lnet/newpipe/app/model/License;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$license:Lnet/newpipe/app/model/License;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$licenseContent$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$license:Lnet/newpipe/app/model/License;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$licenseContent$delegate:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;-><init>(Lnet/newpipe/app/model/License;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$licenseContent$delegate:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    iget-object v0, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->$license:Lnet/newpipe/app/model/License;

    .line 29
    .line 30
    iget-object v0, v0, Lnet/newpipe/app/model/License;->spdxID:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "files/LICENSES/"

    .line 33
    .line 34
    const-string v3, ".txt"

    .line 35
    .line 36
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object p1, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    iput v1, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$3$1;->label:I

    .line 43
    .line 44
    const-string p0, "composeResources/newpipe.shared.generated.resources/"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object v0, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 51
    .line 52
    sget-object v0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 59
    .line 60
    if-ne p0, v0, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    move-object v4, p1

    .line 64
    move-object p1, p0

    .line 65
    move-object p0, v4

    .line 66
    :goto_0
    check-cast p1, [B

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method
