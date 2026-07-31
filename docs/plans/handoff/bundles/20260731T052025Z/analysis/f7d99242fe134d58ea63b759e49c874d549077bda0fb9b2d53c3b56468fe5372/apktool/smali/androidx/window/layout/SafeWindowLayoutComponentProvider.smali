.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field public final loader:Ljava/lang/ClassLoader;

.field public final safeWindowExtensionsProvider:Landroidx/window/core/ConsumerAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 7
    .line 8
    new-instance p2, Landroidx/window/core/ConsumerAdapter;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, p1, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/core/ConsumerAdapter;

    .line 15
    .line 16
    return-void
.end method

.method public static final isMethodWindowLayoutInfoListenerWindowConsumerValid$lambda$3(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    const-string v0, "androidx.window.extensions.layout.WindowLayoutComponent"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-class v2, Landroid/content/Context;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const-class v2, Landroidx/window/extensions/core/util/function/Consumer;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    const-string v2, "addWindowLayoutInfoListener"

    .line 26
    .line 27
    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-array v2, v3, [Ljava/lang/Class;

    .line 32
    .line 33
    const-class v4, Landroidx/window/extensions/core/util/function/Consumer;

    .line 34
    .line 35
    aput-object v4, v2, v1

    .line 36
    .line 37
    const-string v4, "removeWindowLayoutInfoListener"

    .line 38
    .line 39
    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    return v3

    .line 70
    :cond_0
    return v1
.end method


# virtual methods
.method public final getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/core/ConsumerAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, v0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "androidx.window.extensions.WindowExtensionsProvider"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/16 v3, 0x16

    .line 21
    .line 22
    invoke-direct {v2, v3, v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "WindowExtensionsProvider#getWindowExtensions is not valid"

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 36
    .line 37
    .line 38
    const-string v2, "WindowExtensions#getWindowLayoutComponent is not valid"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v0, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 50
    .line 51
    .line 52
    const-string v3, "FoldingFeature class is not valid"

    .line 53
    .line 54
    invoke-static {v3, v0}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge v0, v2, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v3, 0x5

    .line 75
    if-ge v0, v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v3, 0x3

    .line 91
    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 92
    .line 93
    .line 94
    const-string v3, "DisplayFoldFeature is not valid"

    .line 95
    .line 96
    invoke-static {v3, v0}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 106
    .line 107
    .line 108
    const-string v3, "SupportedWindowFeatures is not valid"

    .line 109
    .line 110
    invoke-static {v3, v0}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v3, 0x4

    .line 119
    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 120
    .line 121
    .line 122
    const-string p0, "WindowLayoutComponent#getSupportedWindowFeatures is not valid"

    .line 123
    .line 124
    invoke-static {p0, v0}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_3

    .line 129
    .line 130
    move v1, v2

    .line 131
    :catch_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    :try_start_1
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 139
    .line 140
    .line 141
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :catch_1
    :cond_4
    return-object p0
.end method

.method public final hasValidVendorApiLevel1$window_release()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", java.util.function.Consumer) is not valid"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    invoke-direct {v1, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final hasValidVendorApiLevel2$window_release()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v1, Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", androidx.window.extensions.core.util.function.Consumer) is not valid"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    invoke-direct {v1, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/room/util/SchemaInfoUtilKt;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method
