.class public final synthetic Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/16 v8, 0xf6

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 13
    .line 14
    const-string v2, "click"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v5, "confirm_button"

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    sget p0, Lorg/wikipedia/activity/SingleWebViewActivity;->$r8$clinit:I

    .line 28
    .line 29
    const p0, 0x7f120034

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x1c

    .line 40
    .line 41
    invoke-static {v0, p0, p2, p2, p1}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    const/4 v7, 0x0

    .line 50
    const/16 v8, 0xf4

    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 53
    .line 54
    const-string v2, "click"

    .line 55
    .line 56
    const-string v3, "logout_warning"

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    const-string v5, "confirm_button"

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 76
    .line 77
    new-instance v2, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 84
    .line 85
    invoke-direct {v1, p0, p2}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Lorg/wikipedia/WikipediaApp;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    invoke-static {p1, v2, p2, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/WikipediaApp;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 99
    .line 100
    .line 101
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 102
    .line 103
    const p0, 0x7f12065c

    .line 104
    .line 105
    .line 106
    invoke-static {p0, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 110
    .line 111
    .line 112
    const p0, 0x7f120688

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x3

    .line 119
    invoke-virtual {v0, p0}, Landroid/app/Activity;->setResult(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
