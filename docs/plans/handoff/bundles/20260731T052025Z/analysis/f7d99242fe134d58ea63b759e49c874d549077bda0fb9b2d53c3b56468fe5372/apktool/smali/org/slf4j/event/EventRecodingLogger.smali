.class public final Lorg/slf4j/event/EventRecodingLogger;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lokio/Socket;
.implements Lorg/slf4j/Logger;


# instance fields
.field public eventQueue:Ljava/lang/Object;

.field public logger:Ljava/lang/Object;

.field public name:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 20
    .line 21
    :goto_0
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 22
    .line 23
    const/16 v1, 0x14

    .line 24
    .line 25
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 29
    .line 30
    invoke-direct {v1, p2, p3, p4, p5}, Lcom/takisoft/datetimepicker/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v0, v1, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Lokhttp3/Dispatcher;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 43
    iget-object v0, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    check-cast v0, Lokio/internal/DefaultSocket$SocketSource;

    .line 44
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 45
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    check-cast p1, Lokio/internal/DefaultSocket$SocketSink;

    .line 46
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object p1

    iput-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/slf4j/event/SubstituteLoggingEvent;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lorg/slf4j/helpers/SubstituteLogger;

    .line 12
    .line 13
    iput-object p2, p1, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public dump()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logger:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 22
    .line 23
    iget-object v3, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logTag:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {p0, v4, v0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v6, p0, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance v1, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v1, p0, v0}, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;-><init>(Lkotlin/collections/ArrayDeque;Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, v6, v1, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->clock:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lkotlin/time/Clock;

    .line 52
    .line 53
    invoke-interface {v1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v7, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 58
    .line 59
    if-le v7, v4, :cond_2

    .line 60
    .line 61
    iget-object v4, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lkotlin/time/Instant;

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Lkotlin/time/Instant;->minus-UwyO8pc(Lkotlin/time/Instant;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    iget-wide v9, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 70
    .line 71
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-gez v4, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iput-object v1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 79
    .line 80
    new-instance v1, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    invoke-direct {v1, v0, p0}, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;Lkotlin/collections/ArrayDeque;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3, v6, v1, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/RealBufferedSink;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/RealBufferedSource;

    .line 4
    .line 5
    return-object p0
.end method

.method public isDebugEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 7
    .line 8
    iget-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->getOpenPgpProviderPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStore:Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->configureCryptoPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 52
    .line 53
    .line 54
    return v5

    .line 55
    :cond_0
    const-string p0, "dataStore"

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_1
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 64
    .line 65
    const v1, 0x7f1200b3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-object p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 80
    .line 81
    new-instance p1, Landroid/content/Intent;

    .line 82
    .line 83
    const-class v1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;

    .line 84
    .line 85
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "account"

    .line 89
    .line 90
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return v5
.end method

.method public resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    :cond_0
    const-string p2, ""

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lorg/koin/core/instance/InstanceFactory;

    .line 56
    .line 57
    return-object p0
.end method
