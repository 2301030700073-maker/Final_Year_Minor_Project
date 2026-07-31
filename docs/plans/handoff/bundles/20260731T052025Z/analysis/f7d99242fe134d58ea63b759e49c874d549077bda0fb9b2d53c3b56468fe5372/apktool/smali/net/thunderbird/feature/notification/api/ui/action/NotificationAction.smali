.class public abstract Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static resolveTitle$suspendImpl(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;-><init>(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->L$0:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;->getLabelResource()Lorg/jetbrains/compose/resources/StringResource;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iput-object p0, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->L$0:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 57
    .line 58
    iput v3, v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$resolveTitle$1;->label:I

    .line 59
    .line 60
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 61
    .line 62
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;

    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;->invoke()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 69
    .line 70
    sget-object v3, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 71
    .line 72
    invoke-static {p1, v3, v1, v0}, Lkotlin/text/CharsKt__CharKt;->loadString(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 77
    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    return-object p1

    .line 87
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    return-object v2
.end method


# virtual methods
.method public abstract getIcon()Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;
.end method

.method public abstract getLabelResource()Lorg/jetbrains/compose/resources/StringResource;
.end method
