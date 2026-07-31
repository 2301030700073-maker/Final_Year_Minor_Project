.class public final synthetic Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/WikipediaApp;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/WikipediaApp;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    .line 15
    .line 16
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/high16 v3, 0x10000

    .line 24
    .line 25
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    xor-int/lit8 v1, p0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_0
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 49
    .line 50
    invoke-static {p0}, Lorg/jsoup/select/NodeTraversor;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    const-string v0, ""

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string v3, " "

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_1
    const v3, 0x7f12013f

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 v3, 0x6

    .line 77
    new-array v4, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    const-string v5, "r/50598-r-2026-07-13"

    .line 80
    .line 81
    aput-object v5, v4, v1

    .line 82
    .line 83
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 84
    .line 85
    aput-object v1, v4, v2

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    aput-object p0, v4, v1

    .line 89
    .line 90
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    aput-object p0, v4, v1

    .line 94
    .line 95
    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 96
    .line 97
    const/4 v1, 0x4

    .line 98
    aput-object p0, v4, v1

    .line 99
    .line 100
    const/4 p0, 0x5

    .line 101
    aput-object v0, v4, p0

    .line 102
    .line 103
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "WikipediaApp/%s (Android %s; %s; %s Build/%s)%s"

    .line 108
    .line 109
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 115
    .line 116
    new-instance v0, Lorg/wikipedia/language/AppLanguageState;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lorg/wikipedia/language/AppLanguageState;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_2
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 123
    .line 124
    new-instance v0, Landroid/os/Handler;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
