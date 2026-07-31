.class public abstract Landroidx/glance/appwidget/action/ToggleableKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/action/ActionParameters$Key;

    .line 2
    .line 3
    const-string v1, "android.widget.extra.CHECKED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/glance/action/ActionParameters$Key;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/appwidget/action/ToggleableKt;->ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;

    .line 9
    .line 10
    return-void
.end method

.method public static applyTrampolineIntent$default(Landroid/content/Intent;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;)Landroid/content/Intent;
    .locals 3

    .line 1
    sget-object v0, Landroidx/glance/appwidget/action/ActionTrampolineType;->ACTIVITY:Landroidx/glance/appwidget/action/ActionTrampolineType;

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroidx/glance/appwidget/action/ActionTrampolineActivity;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-class v0, Landroidx/glance/appwidget/action/InvisibleActionTrampolineActivity;

    .line 9
    .line 10
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    invoke-static {p1, p2, p3, v0}, Landroidx/glance/appwidget/action/ToggleableKt;->createUniqueUri(Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string p1, "ACTION_TYPE"

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p1, "ACTION_INTENT"

    .line 36
    .line 37
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public static createIntent$glance_appwidget_release(Landroid/content/Context;Ljava/lang/Class;ILandroidx/glance/action/MutableActionParameters;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "ActionCallbackBroadcastReceiver:callbackClass"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "ActionCallbackBroadcastReceiver:appWidgetId"

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p3, Landroidx/glance/action/MutableActionParameters;->map:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_0

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    check-cast p3, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/glance/action/ActionParameters$Key;

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    iget-object v0, v0, Landroidx/glance/action/ActionParameters$Key;->name:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v1, Lkotlin/Pair;

    .line 80
    .line 81
    invoke-direct {v1, v0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 p1, 0x0

    .line 89
    new-array p1, p1, [Lkotlin/Pair;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, [Lkotlin/Pair;

    .line 96
    .line 97
    array-length p2, p1

    .line 98
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, [Lkotlin/Pair;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string p2, "ActionCallbackBroadcastReceiver:parameters"

    .line 109
    .line 110
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    return-object p0
.end method

.method public static final createUniqueUri(Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "glance-action"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    iget p2, p0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v1, "appWidgetId"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo p2, "viewId"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    .line 38
    .line 39
    iget-wide p1, p0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string/jumbo p2, "viewSize"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    .line 50
    .line 51
    const-string p1, "extraData"

    .line 52
    .line 53
    invoke-virtual {v0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget p0, p0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "lazyCollection"

    .line 67
    .line 68
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    .line 70
    .line 71
    const/4 p0, -0x1

    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "lazeViewItem"

    .line 77
    .line 78
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static final getFillInIntentForAction(Landroidx/glance/action/Action;Landroidx/glance/appwidget/TranslationContext;ILkotlin/jvm/functions/Function1;)Landroid/content/Intent;
    .locals 3

    .line 1
    iget v0, p1, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 2
    .line 3
    instance-of v1, p0, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget v1, Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver;->$r8$clinit:I

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 10
    .line 11
    check-cast p0, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/glance/appwidget/action/RunCallbackAction;->callbackClass:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/glance/appwidget/action/RunCallbackAction;->parameters:Landroidx/glance/action/MutableActionParameters;

    .line 16
    .line 17
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/glance/action/MutableActionParameters;

    .line 22
    .line 23
    invoke-static {v1, v2, v0, p0}, Landroidx/glance/appwidget/action/ToggleableKt;->createIntent$glance_appwidget_release(Landroid/content/Context;Ljava/lang/Class;ILandroidx/glance/action/MutableActionParameters;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p3, Landroidx/glance/appwidget/action/ActionTrampolineType;->BROADCAST:Landroidx/glance/appwidget/action/ActionTrampolineType;

    .line 28
    .line 29
    invoke-static {p0, p1, p2, p3}, Landroidx/glance/appwidget/action/ToggleableKt;->applyTrampolineIntent$default(Landroid/content/Intent;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    instance-of p3, p0, Landroidx/glance/action/LambdaAction;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p0, p1, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    new-instance p3, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p3, "ACTION_TRIGGER_LAMBDA"

    .line 53
    .line 54
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p3, "EXTRA_ACTION_KEY"

    .line 59
    .line 60
    invoke-virtual {p0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p3, "EXTRA_APPWIDGET_ID"

    .line 65
    .line 66
    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p3, Landroidx/glance/appwidget/action/ActionTrampolineType;->BROADCAST:Landroidx/glance/appwidget/action/ActionTrampolineType;

    .line 71
    .line 72
    invoke-static {p0, p1, p2, p3}, Landroidx/glance/appwidget/action/ToggleableKt;->applyTrampolineIntent$default(Landroid/content/Intent;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_1
    const-string p0, "In order to use LambdaAction, actionBroadcastReceiver must be provided"

    .line 78
    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_2
    const-string p1, "Cannot create fill-in Intent for action type: "

    .line 84
    .line 85
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$8(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method public static final getPendingIntentForAction(Landroidx/glance/action/Action;Landroidx/glance/appwidget/TranslationContext;ILkotlin/jvm/functions/Function1;)Landroid/app/PendingIntent;
    .locals 5

    .line 1
    iget v0, p1, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 4
    .line 5
    instance-of v2, p0, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 6
    .line 7
    const/high16 v3, 0xc000000

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget v2, Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver;->$r8$clinit:I

    .line 13
    .line 14
    check-cast p0, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/glance/appwidget/action/RunCallbackAction;->callbackClass:Ljava/lang/Class;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/glance/appwidget/action/RunCallbackAction;->parameters:Landroidx/glance/action/MutableActionParameters;

    .line 19
    .line 20
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/glance/action/MutableActionParameters;

    .line 25
    .line 26
    invoke-static {v1, v2, v0, p0}, Landroidx/glance/appwidget/action/ToggleableKt;->createIntent$glance_appwidget_release(Landroid/content/Context;Ljava/lang/Class;ILandroidx/glance/action/MutableActionParameters;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p3, Landroidx/glance/appwidget/action/ActionTrampolineType;->CALLBACK:Landroidx/glance/appwidget/action/ActionTrampolineType;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-static {p1, p2, p3, v0}, Landroidx/glance/appwidget/action/ToggleableKt;->createUniqueUri(Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v4, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    instance-of p3, p0, Landroidx/glance/action/LambdaAction;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    iget-object p0, p1, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    new-instance p3, Landroid/content/Intent;

    .line 56
    .line 57
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p3, "ACTION_TRIGGER_LAMBDA"

    .line 65
    .line 66
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p3, "EXTRA_ACTION_KEY"

    .line 71
    .line 72
    invoke-virtual {p0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p3, "EXTRA_APPWIDGET_ID"

    .line 77
    .line 78
    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    sget-object p3, Landroidx/glance/appwidget/action/ActionTrampolineType;->CALLBACK:Landroidx/glance/appwidget/action/ActionTrampolineType;

    .line 83
    .line 84
    invoke-static {p1, p2, p3, v2}, Landroidx/glance/appwidget/action/ToggleableKt;->createUniqueUri(Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/action/ActionTrampolineType;Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v4, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_1
    const-string p0, "In order to use LambdaAction, actionBroadcastReceiver must be provided"

    .line 97
    .line 98
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    :cond_2
    const-string p1, "Cannot create PendingIntent for action type: "

    .line 103
    .line 104
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$8(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v2
.end method

.method public static final launchTrampolineAction(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string v0, "ACTION_INTENT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    move-object v4, v0

    .line 10
    check-cast v4, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v0, "android.widget.extra.CHECKED"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v0, "ACTION_TYPE"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const-string v0, "ACTIVITY_OPTIONS"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    move-object v3, p0

    .line 46
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v0, 0x1f

    .line 56
    .line 57
    if-lt p1, v0, :cond_1

    .line 58
    .line 59
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;->INSTANCE:Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;->permitUnsafeIntentLaunch(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 76
    .line 77
    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->invoke()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    const-string p0, "List adapter activity trampoline invoked without trampoline type"

    .line 98
    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    const-string p0, "List adapter activity trampoline invoked without specifying target intent."

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
